package databaseInfo;

import java.sql.Connection;
import java.sql.DriverManager;

final public class ConnectionProvider
{
	private static Connection con;
	private ConnectionProvider()
	{
		
	}
	
	public static Connection getConnection()
	{
		
		try
		{
			if(con==null)
			{
				Class.forName(DatabaseDetails.DriverName);
				con=DriverManager.getConnection(DatabaseDetails .DriverUrl, DatabaseDetails .userName, DatabaseDetails .userPass);
				System.out.println(con);
				return con;
				
				
			}
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return con;
		
	}
	
	

}
