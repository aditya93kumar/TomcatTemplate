

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class index
 */
@WebServlet("/home")
public class home extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public home() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out=response.getWriter();
		try
		{
		Connection con=DBInfo.getConn();
		String query="select * from user_table where username=? and password=? ";
		PreparedStatement ps=con.prepareStatement(query);
		HttpSession session =request.getSession(false);
		String uname=session.getAttribute("un").toString();
		String pass=session.getAttribute("pa").toString();
		ps.setString(1,uname);
		ps.setString(2,pass);
		ResultSet res=ps.executeQuery();
		if(res.next())
			{
				
				int type=res.getInt(8);
				if(type==4)
					{
						out.println("<html>");
		out.println("<head>");
		out.println("<title>HOME PAGE</title>");
		out.println("<link rel='shortcut icon' href='images/jecrc-logo.jpeg'/>");
		out.println("<link href='css/bootstrap.min.css' rel='stylesheet'>");
		out.println("<link href='css/font-awesome.min.css' rel='stylesheet'>");
		out.println("<link href='css/css.css' rel='stylesheet' type='text/css'>");
		out.println("    <link rel='stylesheet' href='css/style1.css'>");
		out.println("  <meta name='viewport' content='width=device-width, initial-scale=1'>");
		out.println("  <link rel='stylesheet' href='css/bootstrap.min.css'>");
		out.println("  <script src='jss/jquery.min.js'></script>");
		out.println("  <script src='jss/bootstrap.min.js'></script>");
		out.println(" ");
		out.println(" ");
		out.println("");
		out.println("  ");
		out.println(" <link rel='stylesheet' href='css/jquery-ui.css'>");
		out.println("<script src='jss/jquery-ui.js'></script>");
		out.println("	<script src='jss/app1.js'></script>");
		out.println("    <!-- Bootstrap styles -->");
		out.println("    <link rel='stylesheet' href='css/bootstrap.min.css' />");
		out.println("  <!-- jQuery -->");
		out.println("    <script src='jss/jquery-1.8.2.min.js'></script>");
		out.println("    <!-- jQuery Popup Overlay -->");
		out.println("    <script src='jss/jquery.popupoverlay.js'></script> ");
		out.println("    <script src='jss/popjs.js'></script> ");
		
		out.println("	");
		out.println("</head>");
		out.println("<body>");
		out.println("<div class='main_div'>");
		out.println("");
		out.println("");
		out.println("<header>");
		out.println("<div class='upper'>");
		out.println("<table class='top_table'>");
		out.println("<tr><td> <a href='home1.html'><img src='images/jecrc-logo.jpeg' width=90px height= 90px></a>");
		out.println("</td><td><center><b><font size=60 color='#66cccc' face='Tahoma'>JECRC  Software  Solutions  Pvt.  Ltd.</font></b></center>");
		out.println("</td></tr></table>");
		out.println("</div>");
		out.println("<table>	");
		out.println("<tr>");
		out.println("<div class='navigation'>");
		out.println("	<ul class='nav'>");
		out.println("		<li>");
		out.println("			<a href='#'>Home</a>");
		out.println("		</li>");
		out.println("		<li>");
		out.println("			<a href='aboutus.html'>Services</a>");
		out.println("		</li>");
		out.println("		<li>");
		out.println("			<a href='contactus.html'>Contact Us</a>");
		out.println("		</li>");
		out.println("		<li>");
		out.println("			<a href='dashboard'>Dashboard</a>");
		out.println("			");
		out.println("		</li>");
		out.println("		<li>");
		out.println("			<a  href='logout' >Logout</a>");
		out.println("		</li>");
		out.println("	</ul>");
		out.println("</div>");
		out.println("</tr>");
		out.println("</table>");
		out.println("<div class='overlay' style='display: none;height:180px;'>");
		out.println("				<div class='login-wrapper'>");
		out.println("					<div class='login-content' >");
		out.println("						<a class='close'>x</a>");
		out.println("						<h3>Sign in</h3>");
		out.println("						<br>");
		out.println("						<form method='post'>");
		out.println("						<label for='username'>");
		out.println("						Username :");
		out.println("						<input type='text' name='username' id='username' placeholder='' pattern='^[a-zA-Z][a-zA-Z0-9-_\\.]{8,20}$' required='required' />");
		out.println("						</label>");
		out.println("						<label for='password'>");
		out.println("						Password :");
		out.println("						<input type='password' name='password' id='password' placeholder='' pattern='(?=^.{8,}$)((?=.*\\d)|(?=.*\\W+))(?![.\\n])(?=.*[A-Z])(?=.*[a-z]).*$' required='required' />");
		out.println("						</label>");
		out.println("						<button type='submit'>Sign in</button>");
		out.println("						<br>");
		out.println("						</form>");
		out.println("						<a class='initialism slide_open btn btn-success'>New User's Register here</a>");
		out.println("						");
		out.println("					</div>");
		out.println("				</div>");
		out.println("</div>");
		out.println("<div class='bel_header'>");
		out.println("<table class='top_table2'>");
		out.println("<tr>");
		out.println("<td width='100' style='text-align:left;'>Project Id</td>");
		out.println("<td width='200' style='text-align:center-left;'>Technology Required</td>");
		out.println("<td width='600' style='text-align:center;'>Project</td>");
		out.println("<td width='100'>Project Date</td>");
		out.println("<td width='200' style='text-align:right;'>Faculty Co-ordinator</td>");
		out.println("</tr>");
		out.println("</table>");
		out.println("</div>");
		out.println("</header>");
		out.println("	<div class='articles_container' style='height:397;width:1200;overflow:scroll' >");
		out.println("		   <!-- Fade & scale -->");
		out.println("");
		out.println("<div id='fadeandscale' class='well' style='overflow:scroll'>");
		out.println("<div id='timeResult1' class='ajaxResult'>");
		out.println("</div>");
		out.println("</div>");
		try
		{
		con=DBInfo.getConn();
		query="select * from project";
		ps=con.prepareStatement(query);
		
		res=ps.executeQuery();
		while(res.next())
		{
		out.println("      <div class='article'>");
		out.println("        <div class='item row'>");
		out.println("	  <div class='col-xs-1'>");
		out.println("            <p class='source'>"+res.getInt(1)+"</p>");
		out.println("          </div>	");
		out.println("          <div class='col-xs-2'>");
		out.println("            <p class='source'>"+res.getString(2)+"</p>");
		out.println("          </div>");
		out.println("          <div class='col-xs-6'>");
		out.println("            <p class='title'>"+res.getString(3)+"</p>");
		out.println("          </div>");
		out.println("          <div class='col-xs-1'>");
		out.println("            <p class='pubdate'>"+res.getString(6)+"</p>");
		out.println("          </div>");
		out.println("          <div class='col-xs-2'>");
		out.println("            <p class='source'>"+res.getInt(7)+"</p>");
		out.println("          </div>");
		out.println("        </div>");
		out.println("        <div class='description row' style='background:#f0f0f0'>");
		out.println("          <div class='col-xs-3'>&nbsp;</div>");
		out.println("          <div class='col-xs-6'>");
		out.println("            <h1>Project Description</h1>");
		out.println("            <p>"+res.getString(4)+"</p>");
		out.println("          </div>");
		out.println("          <div class='col-xs-3'>&nbsp;</div>");
		out.println("		   <a class='initialism fadeandscale_open btn btn-success' onclick='ajaxAlert("+res.getInt(1)+");'>Bidding Here</a>");
		out.println("		   ");
		out.println("        </div>");
		out.println("      </div>");
		}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		out.println("    </div>");
		out.println("<footer class='foot'>");
		out.println("<table 'style=width:100%'>");
		out.println("<tr>");
		out.println("<td><b><font color='#0099FF'>Find Us On:</font></b></td>");
		out.println("<td> ");
		out.println("<a href='www.twitter.com'><img src='images/Follow_Twitter.jpg' height='35' width='80'></a>");
		out.println("</td>");
		out.println("<td>");
		out.println("   <a href='www.facebook.com'><img src='images/fblike.png' height='40' width='80'></a>");
		out.println("</td>");
		out.println("</tr>");
		out.println("</table>");
		out.println("</br><p align='center' font='arial'>Copyright © 2016 JECRC</p>");
		out.println("</footer>");
		out.println("</div>");
		out.println("");
		out.println("</body>");
		out.println("</html>");

		}
		
	}
	else
	{
		response.sendRedirect("index.html");
	}
		con.close();
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		
		
	}
	

	
}
