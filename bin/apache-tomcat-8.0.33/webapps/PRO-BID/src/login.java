
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.sql.*;

public class login extends HttpServlet
{
	
	public void doPost(HttpServletRequest req,HttpServletResponse rs) throws IOException

	{
		int flag=0,flag1=0;
		String name="";
		HttpSession session=req.getSession();
		try
		{
			String uname=req.getParameter("username");
			String pass=req.getParameter("password");
			Connection con=DBInfo.getConn();
			String query="select * from user_table where username=? and password=? ";
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1,uname);
			ps.setString(2,pass);
			ResultSet res=ps.executeQuery();
			if(res.next())
			{				
				session.setAttribute("un",uname);
				session.setAttribute("pa",pass);
				int uid=res.getInt(1);
				session.setAttribute("uid",uid);
				int type=res.getInt(8);
				session.setAttribute("ty",type);
			if(type!=1)
			{
				rs.sendRedirect("home");
			}
			else if(type==1)
			{
					rs.sendRedirect("admin");
			}
		}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
}