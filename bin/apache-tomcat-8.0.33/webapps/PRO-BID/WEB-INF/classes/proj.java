
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class proj extends HttpServlet {

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
		try
		{
		int id=Integer.parseInt(request.getParameter("id").toString());
		String query="select * from project where project_id =?";
		PreparedStatement ps=con.prepareStatement(query);
		ps.setInt(1,id);
		ResultSet res=ps.executeQuery();
		if(res.next())
		{
		out.println("<form class='prettyprint' action='update' name='MainForm' method='post' target='_self'style='float:left;width:1060px'>");
		out.println("         <table border='1' class='table' >");
		out.println("		 <tr>");
		out.println("		 <th Style='padding:5px'>Project Id</th><th Style='padding:5px'>Techno Name</th><th Style='padding:5px'>Project_name</th><th Style='padding:5px'>Project_desc</th>");
		out.println("		 <th Style='padding:5px'>Date_Of_Post</th><th Style='padding:5px'>Deadline</th>");
		out.println("		 <th Style='padding:5px'>Faculty</th><th>Update</th>");
		out.println("		 </tr>");
		out.println("		 <tr>");
		out.println("		 <td><input type=text name=id readonly value="+res.getInt(1)+"></td><td><input type=text name= techno value="+res.getString(2)+"></td><td><input type=text name= pro value="+res.getString(3)+"></td><td><textarea name= desc>"+res.getString(4)+"</textarea></td><td><input type=text name=dop id='datepicker1' value="+res.getString(5)+"></td><td><input type=text name=dead id='datepicker1' value="+res.getString(6)+"></td><td><input type=text  name=faculty value="+res.getInt(7)+"></td> <td style='text-align:right'><input type='submit' class='btn btn-primary' name='submit' value='Accept ' onclick='return ValidatePost();'/></td>");
		out.println("		 </tr>");

		out.println("		 </table>");
		out.println("		 </form>");
		}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		out.flush();
		out.close();
	}

}
