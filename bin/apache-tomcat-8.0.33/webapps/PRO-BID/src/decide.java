
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class decide extends HttpServlet {

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		Connection con=DBInfo.getConn();
		int id=Integer.parseInt(request.getParameter("type").toString());
		String uname=request.getParameter("uname").toString();
		String query=null;
		PreparedStatement ps=null;
		ResultSet res=null;
		
		try
		{
			if(id==1)
			{
				query="select * from request where username =?";
				ps=con.prepareStatement(query);
				ps.setString(1,uname);
				res=ps.executeQuery();
				int nid=DBInfo.getMaxId();
				if(res.next())
				{
				query="insert into user_table values(?,?,?,?,?,?,?,?)";
				ps=con.prepareStatement(query);
				ps.setString(1,Integer.toString(nid));
				ps.setString(2,res.getString(1));
				ps.setString(3,res.getString(2));
				ps.setString(4,res.getString(3));
				ps.setString(5,res.getString(4));
				ps.setString(6,res.getString(5));
				ps.setString(7,res.getString(6));
				ps.setInt(8, res.getInt(7));
				ps.executeUpdate();
				}
				}
			
				query="delete from request where username=?";
				ps=con.prepareStatement(query);
				ps.setString(1,uname);
				ps.executeUpdate();
				query="select * from request";
		    	ps=con.prepareStatement(query);
		    	res=ps.executeQuery();
				out.println("         <table border='1' class='table' >");
				out.println("		 <tr>");
				out.println("		 <th Style='padding:5px'> Name</th><th Style='padding:5px'>password</th><th Style='padding:5px'>Email-Id</th>");
				out.println("		 <th Style='padding:5px'>user_name</th><th Style='padding:5px'>college_Id</th>");
				out.println("		 <th Style='padding:5px'>contact</th><th Style='padding:5px'>User-type</th><th>Accept</th><th>Reject</th>");
				out.println("		 </tr>");
				while(res.next())
				{
				out.println("		 <tr>");
				out.println("		 <td>"+res.getString(1)+"</td><td>"+res.getString(2)+"</td><td>"+res.getString(3)+"</td><td>"+res.getString(4)+"</td><td>"+res.getString(5)+"</td><td>"+res.getString(6)+"</td><td>"+res.getString(7)+"</td> <td style='text-align:right'><a class='btn btn-success' onclick='accept(\""+res.getString(1)+"\");'>Accept</a></td>");
				out.println("		<td style='text-align:left'><a class='btn btn-primary' onclick='reject();'>Reject</a></td>");
				out.println("		");
				out.println("		 </tr>");
				}
				out.println("		 </table>");
				
			

			}
		catch(Exception e)
		{
			e.printStackTrace();
		}	
		out.flush();
		out.close();
	}

}
