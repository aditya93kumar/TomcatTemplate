
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

public class pop extends HttpServlet {

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
		int id1=Integer.parseInt(request.getParameter("id1"));
		String query="select * from team join proj_asn on team.team_id=proj_asn.team_id JOIN project on proj_asn.project_id=project.project_id where proj_asn.project_id= ? and team.team_id=?";
		try {
			PreparedStatement ps=con.prepareStatement(query);
			ps.setInt(1, id1);
			ps.setInt(2, id);
			ResultSet res=ps.executeQuery();
			if(res.next())
			{
				
				out.println(" <form class='prettyprint' action='subm' name='MainForm' method='get' target='_self'style='folat:left;width:1000px'>");
				out.println("");
				out.println("<table  style='border:10px solid #cdcdcd; padding:0px;'>");
				out.println("");
				out.println("<tr>");
				out.println("      <th colspan='4'> <h1 >Current Project Description</h1></th>");
				out.println("</tr>");
				out.println("");
				out.println("<tr>");
				out.println("<td style='text-align:right;width:10px;padding:10px; '>Technology:</td><td>"+res.getString(12)+"</td>");
				out.println("<td style='text-align:right;width:20px;padding:10px;'>Project Id:</td><td><input type='text' name='pid' id='pid' value='"+id1+"' style='width:50px;'required='required' readonly ></td>");
				out.println("");
				out.println("</tr>");
				out.println("<tr>");
								out.println("<td style='text-align:right;width:20px;padding:10px;'>team Id:</td><td><input type='text' name='tid' id='tid' value='"+id+"' style='width:50px;'required='required' readonly ></td>");
				out.println("</tr>");
				out.println("<tr>");
				out.println("");
				out.println("<td  style='text-align:right;width:30%;padding:10px;'>Description :</td><td colspan='3'><textarea rows='4' cols='35' id='Description' style='width:600px;max-width:700px' disabled>"+res.getString(14)+"</textarea></td>");
				out.println("");
				out.println("</tr>");
				out.println("<tr>");
				out.println("<td style='text-align:right;width:30%;padding:10px;'>Faculty Coordinator :</td><td>"+res.getString(17)+"</td>");
				out.println("");
				out.println("<td style='text-align:right;width:30%;padding:10px;'>Team Name:</td><td>"+res.getString(2)+"</td>");
				out.println("");
				out.println("");
				out.println("</tr>");
				out.println("<tr>");
				out.println("<td style='text-align:right;width:30%;padding:10px;'>Deadline :</td><td>"+res.getString(16)+"</td>");
				out.println("<td style='text-align:right;width:30%;padding:10px;'>Team Member1:</td><td>"+res.getString(3)+"</td>");
				out.println("</tr>");
				out.println("<tr>");
				out.println("<td style='text-align:right;width:30%;padding:10px;'>Project Name:</td><td>"+res.getString(13)+"</td><td style='text-align:right;width:30%;padding:10px;'>Team Member2:</td><td>"+res.getString(4)+"</td>");
				out.println("");
				out.println("</tr>");
				out.println("<tr>");
				out.println("<td style='text-align:right;width:30%;padding:10px;'>Date of Posts:</td><td>"+res.getString(15)+"</td>");
				out.println("<td style='text-align:right;width:30%;padding:10px;'>Team Member3:</td><td>"+res.getString(5)+"</td>");
				out.println("");
				out.println("</tr>");
				out.println("");
				out.println("</table>");


				out.println("</br>");
				out.println("<button type='button' class='btn btn-info' data-toggle='collapse' data-target='#demo1'>Submit Your Progress</button>");
				 out.println(" <div id='demo1' class='collapse'>");
				out.println(" <table>");
				out.println("	<tr>");
				out.println("<td style='text-align:right;width:30%;padding:10px;'>url:</td><td><input type='text' placeholder='Paste your url here...'name='url' id='url'  style='width:340px;border:0px solid #cdcdcd;'></td>");
				out.println("</tr>	");
				out.println("<tr ><td style='text-align:right;width:30%;padding:10px;'><input type='submit' value='submit' ></td></tr>");
				out.println("</table></div>  ");

				out.println("</form>");
				out.println("");
				out.println("    <table style='folat:left;width:800px'>");
				out.println("<tr>");
				out.println("<td>");
				out.println("<div class='container'>");
				out.println("  <h2>Project-Progress</h2>");
				out.println("  <div class='progress' style='width:40%'>");
				int cs=res.getInt(8);
				int rs=(int)((cs/5.0)*100);
				out.println("    <div class='progress-bar' role='progressbar' aria-valuenow='40' aria-valuemin='0' aria-valuemax='100' style='width:"+rs+"%'>");
				
				out.println("      <span class='sr-only'>"+rs+"% Complete</span>");
				out.println("    </div>");
				out.println("  </div>");

				out.println("</div>");
				out.println("</td>");
				out.println("");
				out.println("");
				out.println("</tr>");
				out.println("</table>");
				out.println("");
				out.println("    <button class='fade_close btn btn-default'>Close</button>");

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	
	

}
