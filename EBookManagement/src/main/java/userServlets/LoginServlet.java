package userServlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import databaseInfo.ConnectionProvider;
import userBean.RegisterBean;
import userDao.RegisterDao;

/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet
{
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		
		
		RegisterDao regdao=new RegisterDao();
		
		HttpSession session=request.getSession();
		
		String email=request.getParameter("email");
		String pass=request.getParameter("pass");
		
		
		if("admin@gmail.com".equals(email)&& "admin".equals(pass))
		{
			
			RegisterBean bean=new RegisterBean();
			
			session.setAttribute("adminObj", bean);
		    response.sendRedirect("admin/home.jsp");
		}
		else
		{

			RegisterBean regbean=regdao.loginData(email, pass);
			if(regbean!=null)
			{
				session.setAttribute("userObj", regbean);
				response.sendRedirect("home.jsp");
			}
			else
			{
				session.setAttribute("userFail", "Email & Password Invalid");
				response.sendRedirect("Login.jsp");
			}
			
			
		}
	}

}
