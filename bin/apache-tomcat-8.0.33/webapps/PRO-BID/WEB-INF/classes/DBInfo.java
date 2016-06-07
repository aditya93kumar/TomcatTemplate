

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
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
		
		public static Connection getConn()
		{
			
			try
			{
		   con=DriverManager.getConnection("jdbc:mysql://us-cdbr-azure-central-a.cloudapp.net/pro-bid", "b2bd6a3079c37d", "8e99e464");
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
			return con;
		}
		
		public static int getUserType(String utype) {
			String query="select usertype from user_type where designation =?";
			try {
				PreparedStatement ps=con.prepareStatement(query);
				ps.setString(1,utype);
				ResultSet rs=ps.executeQuery();
				if(rs.next()){
					return rs.getInt(1);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			return 0;
		}
		public static int getMaxId() {
			String query="select max(user_id) from user_table";
			try {
				PreparedStatement ps=con.prepareStatement(query);
				ResultSet rs=ps.executeQuery();
				if(rs.next()){
					return (Integer.parseInt(rs.getString(1))+1);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			return 0;
		}
		
	}


