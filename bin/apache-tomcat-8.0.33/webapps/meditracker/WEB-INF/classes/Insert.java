package p1;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.*;

public class Insert
{
	
	
	public static void main(String args[])
	{ 
		Connection con=DBInfo.getConnection();
		   String query="select * from job_govt";
		   String query1="update jobs set fk2=? where fk2=null";
		 
try
{ 	
	PreparedStatement ps=con.prepareStatement(query);
	PreparedStatement ps1=con.prepareStatement(query1);
	
		   
		   
		  
		  
		    ResultSet res=ps.executeQuery();
			while(res.next())
			{ 
	         String s=res.getString(2);
             ps1.setString(1,s);			 
			ps1.executeUpdate();
		   }
}		   
		   catch(Exception e)
		   {
e.printStackTrace();		   
		   }
		
		
	}

}
