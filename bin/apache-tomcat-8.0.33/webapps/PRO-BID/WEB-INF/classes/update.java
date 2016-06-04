



import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class update extends HttpServlet {

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

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		Connection con=DBInfo.getConn();
		int id=Integer.parseInt(request.getParameter("id").toString());
		String techno=request.getParameter("techno").toString();
		String pro=request.getParameter("pro").toString();
		String desc=request.getParameter("desc").toString();
		String dop=request.getParameter("dop").toString();
		String dead=request.getParameter("dead").toString();
		int faculty=Integer.parseInt(request.getParameter("faculty").toString());
		String query="UPDATE project set techno_Name =? ,project_name =? ,project_desc=? ,date_of_post =?,deadline=? ,faculty_coor_id =? where project_id= ?";
		try {
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, techno);
			ps.setString(2, pro);
			ps.setString(3, desc);
			DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
			Date d=null,d1=null;
			try {
				d = df.parse(dop);
				d1=df.parse(dead);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			ps.setDate(4, new java.sql.Date(d.getTime()));
			ps.setDate(5, new java.sql.Date(d1.getTime()));
			ps.setInt(6, faculty);
			ps.setInt(7, id);
			int res=ps.executeUpdate();
			response.sendRedirect("admin");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			out.print("<h1>ERROR</h1>");
		}
		out.flush();
		out.close();
	}

}
