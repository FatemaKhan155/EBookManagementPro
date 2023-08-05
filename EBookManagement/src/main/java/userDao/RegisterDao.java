package userDao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import databaseInfo.ConnectionProvider;
import userBean.RegisterBean;

public class RegisterDao implements daoInterface
{
	 
	 private Connection con;
    
	public  boolean saveData(RegisterBean regBean)
     {
    	 
    	 boolean b=false;
    	 
    	 try
    	 {
    		 con=ConnectionProvider.getConnection();
    		 String query="insert into userregister(name,email,pass,mobile,checkCondi) values(?,?,?,?,?)";
    		 PreparedStatement ps=con.prepareStatement(query);
    		 ps.setString(1, regBean.getName());
    		 ps.setString(2, regBean.getEmail());
    		 ps.setString(3, regBean.getPass());
    		 ps.setString(4, regBean.getMobile());
    		 ps.setString(5, regBean.getCheckCondi());
    		int i= ps.executeUpdate();
    		if(i>0)
    		{
    			b=true;
    		}
    		
    		 
    		 
    	 }
    	 catch(Exception e)
    	 {
    		 System.out.println(e);
    	 }
		return b;
     }
     
     
     //Login Details.....................................
     
     public RegisterBean loginData(String email,String pass)
     { 
    	
    	 RegisterBean regBean=null;
    	 try
    	 {
    		 con=ConnectionProvider.getConnection();
    		 String query="select * from userregister where email=? and pass=?";
    		 PreparedStatement ps=con.prepareStatement(query);
    		 ps.setString(1, email);
    		 ps.setString(2, pass);
    		 
    		 ResultSet rs=ps.executeQuery();
    		 if(rs.next())
    		 {
    			 regBean=new RegisterBean();
    			 regBean.setName(rs.getNString("name"));
    			 regBean.setEmail(rs.getString("email"));
    			 regBean.setPass(rs.getString("pass"));
    			 regBean.setMobile(rs.getString("mobile"));
    			 regBean.setCheckCondi(rs.getString("checkCondi"));
    			 
    			 
    		 }
    		 
    		 
    	 }
    	 catch(Exception e)
    	 {
    		 System.out.println(e);
    	 }
    	 
		return regBean;
    	 
     }
}
