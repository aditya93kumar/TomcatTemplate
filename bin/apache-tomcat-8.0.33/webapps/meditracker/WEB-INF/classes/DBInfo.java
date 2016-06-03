package p1;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBInfo 
{
	static Connection con;
	static
	{
		try
		{
	     Class.forName("com.mysql.jdbc.Driver");
	     
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	
	public static Connection getConnection()
	{
		String url="us-cdbr-azure-southcentral-e.cloudapp.net";
		String username="bd1ae488caa6a7";
		String password="fcd68423";
		try 
		{
			con=DriverManager.getConnection(url, username, password);
		} 
		catch (SQLException e) 
		{
		
			e.printStackTrace();
		}
		return con;
	}
	
}
