import java.awt.*;  
import java.awt.event.*;  
import javax.swing.*;
public class Size implements ActionListener{  
	JFrame s = new JFrame();
	Label l1,l2,l3;
	TextField tf1,tf2;  
    Button b1,b2;
    private JCheckBox ckb1,ckb2,ckb3,ckb4,ckb5,ckb6;
    boolean Hr,Fc,Tr,Lc,Br,Bc;
    
    Size()
    {  
		l1 = new Label("Input Table");
		l1.setBounds(20,30,100,20);
		l2 = new Label("Input Rows");
		l2.setBounds(20,50,100,20);
        tf1=new TextField();  
        tf1.setBounds(130,50,100,20);
		l3 = new Label("Input Columns");
		l3.setBounds(20,100,100,20);
        
        tf2=new TextField();  
        tf2.setBounds(130,100,100,20);  
        
    	JCheckBox ckb1 = new JCheckBox("Header Row");
		ckb1.setSelected(false);
		ckb1.setBounds(20, 130, 120, 40);
		
		JCheckBox ckb2 = new JCheckBox("First Column");
		ckb2.setSelected(false);
		ckb2.setBounds( 150, 130, 120, 40);
		
		JCheckBox ckb3 = new JCheckBox("Total Rows");
		ckb3.setSelected(false);
		ckb3.setBounds(20, 200, 120, 40);
		
		JCheckBox ckb4 = new JCheckBox("Last Column");
		ckb4.setSelected(false);
		ckb4.setBounds(150, 200, 120, 40);
		
		JCheckBox ckb5 = new JCheckBox("Banded Rows");
		ckb5.setSelected(false);
		ckb5.setBounds(20, 250, 120, 40);
		
		JCheckBox ckb6 = new JCheckBox("Banded Columns");
		ckb6.setSelected(false);
		ckb6.setBounds(150, 250, 120, 40);

		b1=new Button("OK");  
        b1.setBounds(50,300,50,50);  
        b2=new Button("CANCEL");  
        b2.setBounds(120,300,50,50);  
        b1.addActionListener(this);  
        b2.addActionListener(this);
        
        
		s.add(l1);
		s.add(l2);
        s.add(tf1);
		s.add(l3);
		s.add(tf2);
		s.add(b1);
		s.add(b2);
		s.add(ckb1);
		s.add(ckb2);
		s.add(ckb3);
		s.add(ckb4);
		s.add(ckb5);
		s.add(ckb6);
		s.setSize(400,400);  
        s.setLayout(null);  
        s.setVisible(true);  
		s.setDefaultCloseOperation(s.EXIT_ON_CLOSE);
    
		ckb1.addActionListener(new ActionListener()
		{
			public void actionPerformed(ActionEvent e) 
			{
				if(ckb1.isSelected())	{	Hr = true;	} else {   Hr = false;	}
			}
		});
		
		ckb2.addActionListener(new ActionListener()
		{
			public void actionPerformed(ActionEvent e) 
			{
				if(ckb2.isSelected())	{	Fc = true;	} else {   Fc = false;	}
			}
		});
		
		ckb3.addActionListener(new ActionListener()
		{
			public void actionPerformed(ActionEvent e) 
			{
				if(ckb3.isSelected())	{	Tr = true;	} else {   Tr = false;	}
			}
		});
		
		ckb4.addActionListener(new ActionListener()
		{
			public void actionPerformed(ActionEvent e) 
			{
				if(ckb4.isSelected())	{	Lc = true;	} else {   Lc = false;	}
			}
		});
		
		ckb5.addActionListener(new ActionListener()
		{
			public void actionPerformed(ActionEvent e) 
			{
				if(ckb5.isSelected())	{	Br = true;	} else {   Br = false;	}
			}
		});
		
		ckb6.addActionListener(new ActionListener()
		{
			public void actionPerformed(ActionEvent e) 
			{
				if(ckb6.isSelected())	{	Bc = true;	} else {   Bc = false;	}
			}
		});
		
		
    }         
    
    public void actionPerformed(ActionEvent e) {  
        String s1=tf1.getText();  
        String s2=tf2.getText();  
        int a=Integer.parseInt(s1);  
        int b=Integer.parseInt(s2);  
        if(e.getSource()==b1){  
        	try 
    		{
    			if(ckb1.isSelected())	{	Hr = true;	} else {   Hr = false;	}
    			if(ckb2.isSelected())	{	Fc = true;	} else {   Fc = false;	}
    			if(ckb3.isSelected())	{	Tr = true;	} else {   Tr = false;  }
    			if(ckb4.isSelected())	{	Lc = true;  } else {   Lc = false;	}
    			if(ckb5.isSelected())	{	Br = true;  } else {   Br = false;	}
    			if(ckb6.isSelected())	{	Bc = true;	} else {   Bc = false;	}
    		} catch(Exception ex)
    		{
    			System.out.println("");
    		}
    	
              main1 m1 =new main1();
              s.setVisible(false);
              m1.Create_Table(a, b ,Hr ,Fc,Tr,Lc,Br,Bc);
        }else if(e.getSource()==b2){
             s.dispose();
        }  
      
    }
    
}  


