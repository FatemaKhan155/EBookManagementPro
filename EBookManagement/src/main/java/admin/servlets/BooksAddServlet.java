package admin.servlets;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import admin.beans.BookDetailsBean;
import admin.dao.AddBooksDao;

/**
 * Servlet implementation class BooksAddServlet
 */
 @MultipartConfig
public class BooksAddServlet extends HttpServlet
{
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		
		
		try
		{
			
			
			PrintWriter pw=response.getWriter();
			response.setContentType("text/html");
			
			String bookName=request.getParameter("bookName");
			String autherName=request.getParameter("autherName");	
			double bookPrice =Double.parseDouble(request.getParameter("bookPrice"));	
			String bookType=request.getParameter("bookType");
			String bookStatus=request.getParameter("bookStatus");
			
			Part part=request.getPart("bookImg");
		    String fileName=part.getSubmittedFileName();
			
		   // pw.println( bookName+""+autherName+" "+bookPrice+" "+bookType+" "+bookStatus+" "+fileName);
		    
		    
		    
		    
		    //String path=getServletContext().getRealPath("")+ "\\src\\main\\webapp\\book";
		    String path="D:\\CoreOnlineSession\\EBookManagement\\src\\main\\webapp\\book";
		    //System.out.println(path);
		    File file=new File(path);     
		    part.write(path+File.separator+fileName);
		   
		    BookDetailsBean bean=new BookDetailsBean(bookName,autherName,bookPrice,bookType,bookStatus,fileName);
		    
		    AddBooksDao addao=new AddBooksDao(bean);
		    boolean b=addao.addBooks();   
		    HttpSession session=request.getSession();
		    if(b==true)
		    {
		    	
		    	session.setAttribute("bookAdd","Book Add Successfully");
		    	response.sendRedirect("admin/AddBooks.jsp");
		    }
		    else
		    {
		    	session.setAttribute("fail", "Something went on Server");
		    	response.sendRedirect("admin/AddBooks.jsp");
		    }
		    	
		
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		
	}

}
