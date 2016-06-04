
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class popret extends HttpServlet {

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
		int id=Integer.parseInt(request.getParameter("id"));
		String query="select * from project where project_id="+id;
		try {
			PreparedStatement ps=con.prepareStatement(query);
			ResultSet res=ps.executeQuery();
			if(res.next())
			{
				
				out.println("<form class='prettyprint' action='post' name='MainForm' method='post' target='_self'style='folat:left;width:1060px'>");
				out.println("  <table  style='border:10px solid #cdcdcd; padding:1px;'>");
				out.println("");
				out.println("<tr>");
				out.println("      <th colspan='4'> <h3>Project Details:</h3></th>");
				out.println("</tr>");
				out.println("");
				out.println("<tr>");
				out.println("<td style='text-align:right;width:20px;padding:10px; '>Technology:</td><td colspan='3'>"+res.getString(2)+"</td>");
				out.println("");
				out.println("");
				out.println("</tr>");
				out.println("<tr>");
				out.println("");
				out.println("<td  style='text-align:right;width:30%;padding:10px;'>Description :</td><td colspan='3'><textarea rows='4' cols='40' id='Description' style='width:880px;max-width:880px' disabled>"+res.getString(4)+"</textarea></td>");
				out.println("");
				out.println("</tr>");
				out.println("<tr>");
				out.println("<td style='text-align:right;width:30%;padding:10px;'>Project Name:</td><td>"+res.getString(3)+"</td>");
				out.println("");
				out.println("<td style='text-align:right;width:30%;padding:10px;'>Faculty Coordinator :</td><td>"+res.getString(7)+"</td>");
				out.println("");
				out.println("");
				out.println("");
				out.println("</tr>");
				out.println("<tr>");
				out.println("<td style='text-align:right;width:30%;padding:10px;'>Date of Posts:</td><td>"+res.getString(5)+"</td>");
				out.println("");
				out.println("<td style='text-align:right;width:30%;padding:10px;'>Deadline :</td><td>"+res.getString(6)+"</td>");
				out.println("</tr>");
				out.println("");
				out.println("</table>");
				out.println("</form>");
				out.println("");
				out.println("");
				out.println("");
				out.println("");
				out.println("<p>Are you sure for bid this project? If yes, then click below...</p>");
				out.println("");
				out.println("<button class='btn btn-primary' onclick='callbtn();'>Click Here</button><br><br>");
				out.println("");
				out.println("<div id='div1' style='width:80px;height:80px;display:none;'>");
				out.println("");
				out.println("");
				out.println("<form class='prettyprint' action='bidreq' name='MainForm' method='post' target='_self'style='folat:left;width:1060px'>");
				out.println("");
				out.println("<table  style='border:10px solid #cdcdcd; padding:0px;'>");
				out.println("");
				out.println("<tr>");
				out.println("      <th colspan='4'> <h3>Create your team</h3></th>");
				out.println("</tr>");
				out.println("<tr>");
				out.println("<td style='text-align:right;width:30%;padding:10px;'>Project Id:</td><td><input type='text' name='pid' id='pid' value='"+res.getInt(1)+"' style='width:340px;'required='required' readonly ></td>");
				out.println("<td colspan='2'></td>");
				out.println("</tr>");
				out.println("<tr>");
				out.println("");
				out.println("<td style='text-align:right;width:30%;padding:10px;'>Team Name:</td><td><input type='text' name='Team Name' id='Team Name'  style='width:340px;' required='required'></td>");
				out.println("</tr>");
				out.println("<tr>");
				out.println("");
				out.println("<td style='text-align:right;width:30%;padding:10px;'>Team Member1:</td><td><input type='text' name='T-member1' id='T-member1'  style='width:340px;'required='required'></td>");
				out.println("</tr>");
				out.println("<tr>");
				out.println("<td style='text-align:right;width:30%;padding:10px;'>Team Member2:</td><td><input type='text' name='T-member2' id='T-member2'  style='width:340px;'></td>");
				out.println("<td style='text-align:right;width:30%;padding:10px;'>Team Member3:</td><td><input type='text' name='T-member3' id='T-member3'  style='width:340px;' ></td>");
				out.println("");
				out.println("</tr>");
				out.println("<tr>");
				out.println("");
				out.println("<td  style='text-align:right;width:30%;padding:10px;'>Description :</td><td colspan='3'><textarea rows='4' cols='40' id='Description' name='Description' style='width:870px;max-width:870px'required='required' ></textarea></td>");
				out.println("");
				out.println("</tr>");
				out.println("<tr>");
				out.println("<td style='padding:20px'> <button class='fadeandscale_close btn btn-default'>Close</button></td>");
				out.println("<script>");
				out.println("function alrt()");
				out.println("{");
				out.println("	alert('Your Request Has Been Submitted View your Dashboard The icon will appear if Accepted');");
				out.println("}");
				out.println("</script>");
				out.println("<td style='text-align:right'><input type='submit' class='btn btn-primary' name='submit' value='submit ' onclick='alrt();'/></td>");
				out.println("<td colspan='2'style='padding:20px'><input type='button'  class='btn btn-primary' name='notsubmit' value='Reset' onclick='window.open('  ', '_parent');' /></td>");	
				out.println("</tr>");
				out.println("");
				out.println("");
				out.println("</table>");
				out.println("</form>");

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	
	

}
