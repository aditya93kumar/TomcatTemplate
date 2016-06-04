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
		String url="bef0b8b70be2d0@us-cdbr-azure-central-a.cloudapp.net";
		String username="bef0b8b70be2d0";
		String password="5a254e6c";
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
