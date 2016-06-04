

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class bidreq extends HttpServlet {

	

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
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		int id=Integer.parseInt(request.getParameter("pid").toString());
		String name=request.getParameter("Team Name");
		int t_1=Integer.parseInt(request.getParameter("T-member1").toString());
		int t_2=Integer.parseInt(request.getParameter("T-member2").toString());
		int t_3=Integer.parseInt(request.getParameter("T-member3").toString());
		String desc=request.getParameter("Description");
		Connection con=DBInfo.getConn();
		String query="select max(team_id) from team";
		int nid=0;
		try {
			PreparedStatement ps=con.prepareStatement(query);
			ResultSet res=ps.executeQuery();
			if(res.next())
				nid=res.getInt(1);
			query="insert into team values(?,?,?,?,?)";
			ps=con.prepareStatement(query);
			ps.setInt(1,nid+1);
			ps.setString(2,name);
			ps.setInt(3,t_1);
			ps.setInt(4,t_2);
			ps.setInt(5,t_3);
			int re=ps.executeUpdate();
			if(re!=0){
				query="insert into bid_req values(?,?,?)";
				ps=con.prepareStatement(query);
				ps.setInt(1,id);
				ps.setInt(2,nid+1);
				ps.setString(3, desc);
				ps.executeUpdate();
				out.print("request sent");
				out.print("<script>");
				out.print("alert('inserted');");
				out.print("</script>");
				response.sendRedirect("dashboard");
			}
			else
			{
			out.print("<h1> your data hold descrepencies Please Correct them</h1>");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
