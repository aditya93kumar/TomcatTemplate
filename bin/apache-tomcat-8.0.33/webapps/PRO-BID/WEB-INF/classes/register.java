import java.io.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class register extends HttpServlet {

	

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

		String name=request.getParameter("name");
		String uname=request.getParameter("username");
		String email=request.getParameter("email");
		String phone=request.getParameter("contact");
		String cid=request.getParameter("cid");
		String pass=request.getParameter("pass1");
		String utype=request.getParameter("salutation");
		PrintWriter out=response.getWriter();
		Connection con=DBInfo.getConn();
		String query="insert into request values(?,?,?,?,?,?,?)";
		try {
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, uname);
			ps.setString(2, pass);
			ps.setString(3, email);
			ps.setString(4, name);
			ps.setString(5, cid);
			ps.setString(6, phone);
			ps.setInt(7, DBInfo.getUserType(utype));
			int res=ps.executeUpdate();
			if(res==1)
			{
				out.println("<h1>Request has been Sent to admin. Please Wait for Approval.</h1><br><h2>Redirecting to home page.......<img src='images/redirect.jpeg' width=90px height=90px></h2>");
			}
			else
			{
				out.println("<h1>Request already sent OR please check your mail and try to login if registered previously</h1><br><h2>Redirecting to home page.......<img src='images/redirect.jpeg' width=90px height=90px></h2>");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			out.println("<h1>Request already sent OR please check your mail and try to login if registered previously.</h1><br><h2>Redirecting to home page.......<img src='images/redirect.jpeg' width=90px height=90px></h2>");
		}
		 // Set response content type
      response.setContentType("text/html");

      // New location to be redirected
      //String site = new String("http://localhost:8080/PRO-BID");

      response.setStatus(response.SC_MOVED_TEMPORARILY);
      response.setHeader("Refresh", "10; URL=http://localhost:8080/PRO-BID"); 
		
	}

}
