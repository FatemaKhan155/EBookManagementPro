package admin.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import admin.beans.BookDetailsBean;
import databaseInfo.ConnectionProvider;

public class AddBooksDao implements adminDao
{
	private Connection con;
	static BookDetailsBean bookBean=null;
	public AddBooksDao(BookDetailsBean bookBean)
	{ 
		this.bookBean=bookBean;
	}
    public  boolean addBooks()
    {
    	
    	boolean b=false;
    	try
    	{
//    		 
    		 con=ConnectionProvider.getConnection();
    		 //System.out.println(con);
    		 
    		 String query="insert into addbookdetails(bookName,autherName,bookPrice,bookType,bookStatus,bookImg) values(?,?,?,?,?,?)";
    		 PreparedStatement ps=con.prepareStatement(query); 
    		 ps.setString(1,bookBean.getBookName());
    		 ps.setString(2, bookBean.getAutherName());
    		 ps.setDouble(3, bookBean.getBookPrice());
    		 ps.setString(4, bookBean.getBookType());
    		 ps.setString(5, bookBean.getBookStatus());
    		 ps.setString(6, bookBean.getBookImg());
    		 
    		 int i=ps.executeUpdate();
    		 if(i>0)
    		 {
    			 b=true;
    			 return b;
    		 }
    		 else
    		 {
    			 return b;
    		 }
    		 
    	}
    	catch(Exception e)
    	{
    		System.out.println(e);
    	}
		 return b;
    	
    }
    
    
    public List <BookDetailsBean> getBookDetails()
    {
    	List al=new ArrayList<BookDetailsBean>();
    	BookDetailsBean bookBean=null;
    	try
    	{
    	    con=ConnectionProvider.getConnection();
    	    
    	    String query="select * from addbookdetails";
    	    PreparedStatement ps=con.prepareStatement(query);
    	    ResultSet rs=ps.executeQuery();
    	    
    	    while(rs.next())
    	    {
    	    	bookBean =new BookDetailsBean();
    	    	bookBean.setBookName(rs.getString("bookName"));
    	    	bookBean.setAutherName(rs.getString("autherName"));
    	    	bookBean.setBookPrice(rs.getDouble("bookPrice"));
    	    	bookBean.setBookType(rs.getString("bookType"));
    	    	bookBean.setBookStatus((rs.getString("bookStatus")));
    	    	bookBean.setBookImg(rs.getString("bookImg"));
    	    	al.add(bookBean);
    	    	
    	    }
    	    
    	    
    	}
    	catch(Exception e)
    	{
    		System.out.println(e);
    	}
		return al;
    	
    }


	public BookDetailsBean getBookId(int id)
	{
		BookDetailsBean bookBean=null;
		 
		try
		{
			
			con=ConnectionProvider.getConnection();
			String query="select * from addbookdetails where id=?";
			PreparedStatement ps=con.prepareStatement(query);
			ps.setInt(1,id);
			
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				bookBean=new BookDetailsBean();
				bookBean.setBookName(rs.getString("bookName"));
    	    	bookBean.setAutherName(rs.getString("autherName"));
    	    	bookBean.setBookPrice(rs.getDouble("bookPrice"));
    	    	bookBean.setBookType(rs.getString("bookType"));
    	    	bookBean.setBookStatus((rs.getString("bookStatus")));
    	    	bookBean.setBookImg(rs.getString("bookImg"));
			}
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return bookBean;
	
	}


	public boolean updateEditBooks(String autherName,BookDetailsBean bookBean)
	{
		 
		 boolean b=false;
		try
		{
			con=ConnectionProvider.getConnection();
			String query="update addbookdetails set bookName=?,bookPrice=?,bookStatus=? ,where autherName=?";
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, bookBean.getBookName());
			ps.setDouble(2, bookBean.getBookPrice());
			ps.setString(3, bookBean.getBookStatus());
		
		
			
			int i=ps.executeUpdate();
			if(i>0)
			{
				b=true;
				return b;
			}
			else
			{
				return b;
			}
			
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
	
		return b;
	}
	

}
