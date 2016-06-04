

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class subm extends HttpServlet {

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

		int id=Integer.parseInt(request.getParameter("pid"));
		int id1=Integer.parseInt(request.getParameter("tid"));
		String url=request.getParameter("url");
		PrintWriter out=response.getWriter();
		String query="insert into submissions values (?,?,?,CURDATE())";
		Connection con=DBInfo.getConn();
		PreparedStatement ps;
		try {
			ps = con.prepareStatement(query);
		
		ps.setInt(1, id);
		ps.setInt(2, id1);
		ps.setString(3, url);
		int res=ps.executeUpdate();
		out.println("New Progress Submitted");
		} catch (SQLException e) {
			e.printStackTrace();
			out.println("aLREADY SUBMITTED URL");
		}
		
		
	}

}
