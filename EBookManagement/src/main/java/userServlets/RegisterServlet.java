package userServlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import userBean.RegisterBean;
import userDao.RegisterDao;

/**
 * Servlet implementation class RegisterServlet
 */
public class RegisterServlet extends HttpServlet
{
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		response.setContentType("text/html");
		PrintWriter pw=response.getWriter();
		
		
		
		
		
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String pass=request.getParameter("pass");
		String mobile=request.getParameter("mobile");
		String checkCondi=request.getParameter("checkCondi");
		
		//pw.println(name+" "+email+" "+pass+" "+mobile+" "+checkCondi);
		
		RegisterBean regBean=new RegisterBean(name,email,pass,mobile,checkCondi);
		
		
		 HttpSession session=request.getSession();
		
		if(checkCondi!=null)
		{
			RegisterDao regDao=new RegisterDao();
			boolean b=regDao.saveData(regBean);
			if(b==true)
			{
			    
				//pw.println("User Register Success");
				session.setAttribute("userSuccess", "User Register Success...");
				response.sendRedirect("Register.jsp");
				
			}
			else
			{
				//pw.println("Went Some Wrong on Server");
				session.setAttribute("userFail", "Went Some Wrong on Server...");
				response.sendRedirect("Register.jsp");
			}
			
			
		 }
	    else
	     {
		        //pw.println("Please Check Agree & Terms Condition");
	    	    session.setAttribute("termsCondi", "Please Check Agree & Terms Condition...");
			    response.sendRedirect("Register.jsp");
	      }
	
		
	}	

}
