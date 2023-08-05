package admin.dao;

import java.util.List;

import admin.beans.BookDetailsBean;

public interface adminDao
{
	 public  boolean addBooks();
	 public List <BookDetailsBean> getBookDetails();
	 public BookDetailsBean getBookId(int id);
	 
	 public boolean updateEditBooks(String autherName,BookDetailsBean bookBean);
}
