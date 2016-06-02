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
		String url="jdbc:mysql://localhost:3306/meditracker";
		String username="root";
		String password="12345";
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
