package admin.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import admin.beans.BookDetailsBean;
import admin.dao.AddBooksDao;

/**
 * Servlet implementation class EditServlet
 */

public class EditServlet extends HttpServlet
{
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
	    PrintWriter pw=response.getWriter();
		response.setContentType("text/html");
		
		String bookName=request.getParameter("bookName");
		String autherName=request.getParameter("autherName");	
		double bookPrice =Double.parseDouble(request.getParameter("bookPrice"));	
		String bookStatus=request.getParameter("bookStatus");
		
		//pw.println(bookName+" "+autherName+" "+bookPrice+" "+bookStatus);
		
		BookDetailsBean bean=new BookDetailsBean();
		AddBooksDao dao=new AddBooksDao(bean);
		boolean b=dao.updateEditBooks(autherName,bean);
		if(b==true)
		{
			pw.print("data is updated");
		}
		else
		{
			pw.print("data is not updated");
		}
		
		
	}

}
