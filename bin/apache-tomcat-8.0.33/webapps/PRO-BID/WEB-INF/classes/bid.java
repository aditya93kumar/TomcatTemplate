

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class bid extends HttpServlet {

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
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
		int pid=Integer.parseInt(request.getParameter("pid").toString());
		int tid=Integer.parseInt(request.getParameter("tid").toString());
		int id=Integer.parseInt(request.getParameter("type").toString());
		String query=null;
		PreparedStatement ps=null;
		ResultSet res=null;
		try
		{
			if(id==1)
			{
				query="select b.desc FROM bid_req b join project p on b.pro_id =p.project_id  join team t on t.team_id=b.team_id where b.pro_id=? and t.team_id=?";
				ps=con.prepareStatement(query);
				ps.setInt(1,pid);
				ps.setInt(2,tid);
				res=ps.executeQuery();
				if(res.next())
				{
				query="insert into proj_asn values(?,?,?,?,?,CURDATE())";
				ps=con.prepareStatement(query);
				ps.setInt(1,tid);
				ps.setInt(2,pid);
				ps.setString(3,res.getString(1));
				ps.setInt(4,0);
				ps.setInt(5,0);
				ps.executeUpdate();
				}
				}
			
				query="delete from bid_req where team_id=? and pro_id=?";
				ps=con.prepareStatement(query);
				ps.setInt(1,tid);
				ps.setInt(2,pid);
				ps.executeUpdate();
				query="select b.pro_id,p.project_name,b.team_id,t.team_name,t.mem_1,t.mem_2,t.mem_3,b.desc FROM bid_req b join project p on b.pro_id =p.project_id  join team t on t.team_id=b.team_id";
		    	ps=con.prepareStatement(query);
		    	res=ps.executeQuery();
				out.println("         <table border='1' class='table' >");
out.println("		 <tr>");
out.println("		 <th Style='padding:5px'> Project_Id</th><th Style='padding:5px'>Project_name</th><th Style='padding:5px'>Team-Id</th>");
out.println("		 <th Style='padding:5px'>Team_name</th><th Style='padding:5px'>mem_1</th>");
out.println("		 <th Style='padding:5px'>mem_2</th><th Style='padding:5px'>mem_3</th><th Style='padding:5px'>Bidding Description</th><th>Accept</th><th>Reject</th>");
out.println("		 </tr>");
while(res.next())
{
out.println("		 <tr>");
out.println("		 <td>"+res.getString(1)+"</td><td>"+res.getString(2)+"</td><td>"+res.getString(3)+"</td><td>"+res.getString(4)+"</td><td>"+res.getString(5)+"</td><td>"+res.getString(6)+"</td><td>"+res.getString(7)+"</td><td>"+res.getString(8)+"</td> <td style='text-align:right'><a class='btn btn-success' onclick='bid("+res.getInt(1)+","+res.getInt(3) +");'>Accept</a></td>");
out.println("		<td style='text-align:left'><a class='btn btn-primary' onclick='bidre("+res.getInt(1)+","+res.getInt(3) +");'>Reject</a></td>");
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
