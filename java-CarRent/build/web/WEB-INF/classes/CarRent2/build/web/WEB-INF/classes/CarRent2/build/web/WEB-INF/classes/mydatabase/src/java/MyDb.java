
import java.sql.Connection;
import java.util.logging.Level;
import java.util.logging.Logger;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Shailesh
 */
public class MyDb {
    
    
    Connection con;
    public Connection getCon()
    {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            DriverManeger.getConnection("jdbc.mysql://localhost:3306/login?user=root&password=root&useSSL=false");
            
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(MyDb.class.getName()).log(Level.SEVERE, null, ex);
        }
        return con;
    }     
    
}

