package com.hos;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String uid = request.getParameter("userid");
		String psw = request.getParameter("password");
		
		if(uid.equals("pranav")&&psw.equals("221822"))
		{
			System.out.println("uid ="+uid+"   Password="+psw);
			out.println("<h1>Login Successful</h1>");
		}else
		{
			System.out.println("uid ="+uid+"   Password="+psw);
			out.println("<h1>userid or password wrong.</h1>");
		}
		
		out.close();
		
	}

}
