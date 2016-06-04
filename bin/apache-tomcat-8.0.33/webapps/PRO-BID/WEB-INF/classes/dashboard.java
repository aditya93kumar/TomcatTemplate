


import javax.servlet.*;
import javax.servlet.http.*;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class index
 */
@WebServlet("/dashboard")

public class dashboard extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public dashboard() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		PrintWriter out=response.getWriter();
		HttpSession session =request.getSession(false);
		int type=Integer.parseInt((session.getAttribute("ty")).toString());
		int id=Integer.parseInt(session.getAttribute("uid").toString());
		if(type!=1)
		{
			out.println("<html>");
out.println("<head>");
out.println("<title>Dashboard</title>");
out.println("<link rel='shortcut icon' href='images/jecrc-logo.jpeg'/>");
out.println("  <link rel='stylesheet' href='css/style1.css'>");
out.println("	<link href='css/jquery-ui.css' rel='stylesheet'>");
out.println("	<!-- Force latest IE, Google Chrome Frame for IE -->");
out.println("    <meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1'>");
out.println("	<meta name='description' content='jQuery plugin for responsive and accessible modal windows and tooltips.' />");
out.println("    <meta name='viewport' content='width=device-width, initial-scale=1.0' />");
out.println("    <!-- Bootstrap styles -->");
out.println("    <link rel='stylesheet' href='css/bootstrap.min.css' />");
out.println("    <link rel='stylesheet' href='http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css' />");

out.println("	<!-- jQuery -->");
out.println("    <script src='jss/jquery-1.8.2.min.js'></script>");
out.println("    <script src='jss/jquery.min.js'></script>");
out.println("    <script src='jss/bootstrap.min.js'></script>");
out.println("	<!-- jQuery Popup Overlay -->");
out.println("    <script src='jss/jquery.popupoverlay.js'></script>");
out.println("    <script src='jss/popjs.js'></script>");
out.println("	");
out.println("</head>");
out.println("<body>");
out.println("<div class='main_div'>");
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
out.println("			<a href='home'>Home</a>");
out.println("		</li>");
out.println("		<li>");
out.println("			<a href='#'>Services</a>");
out.println("			");
out.println("		</li>");
out.println("		<li>");
out.println("			<a href='#'>Contact us</a>");
out.println("		</li>");
out.println("		<li>");
out.println("			<a href='aboutus.html'>About Us</a>");
out.println("			");
out.println("		</li>");
out.println("		<li>");
out.println("			<a  href='logout' class=''>Logout</a>");
out.println("		</li>");
out.println("	</ul>");
out.println("</div>");
out.println("</tr>");
out.println("</table>");
out.println("</header>");
out.println("</br>");
out.println("<div>");
try
		{
		Connection con=DBInfo.getConn();
		String query="select * from team join proj_asn on team.team_id=proj_asn.team_id JOIN project on proj_asn.project_id=project.project_id where CURDATE()<=deadline and (mem_1=? || mem_2=? || mem_3=?)";
		PreparedStatement ps=con.prepareStatement(query);
		ps.setInt(1,id);
		ps.setInt(2,id);
		ps.setInt(3,id);
		ResultSet res=ps.executeQuery();
		
out.println("<div class='articles_container' style='height:390;width:800;overflow:scroll;float:left;' > ");
out.println("<div id='tabs'>");
out.println("	<ul >");
out.println("    <li><a href='#tabs-1'>Current Project</a></li>");
out.println("    <li><a href='#tabs-2'>Archive Project</a></li>");
out.println("    ");
out.println("  </ul>");
out.println("	<div id='tabs-1'> ");
out.println("	");
out.println("		");
while(res.next())
		{
out.println("		<a class='initialism fade_open btn btn-success' onclick='alr("+res.getString(1)+","+res.getString(7)+");' style='background-color:#D8D8D8'>");
out.println("		<div class='boxed'>");
out.println("			<table>");
out.println("			<tr>");

out.println("				<td rowspan='3'><img src='images/"+res.getString(13)+".jpeg' style='width:150px;height:130px'></td>");
out.println("			<td>Project Id</td><td>&nbsp</td><td>"+res.getString(12)+"</td>");
out.println("			</tr>");
out.println("			<tr>	");
out.println("		<td>Project Name</td><td>&nbsp</td><td>"+res.getString(14)+"</td>");
out.println("			</tr>");
out.println("			<tr>	");
out.println("	<td>Project Deadline</td><td>&nbsp</td><td>"+res.getString(17)+"</td>");
out.println("			</tr>");
out.println("		</table>");

out.println("		</div></a>");
}
out.println("		</div>");
out.println("	<div id='tabs-2'>");
out.println("	");
out.println("		");
query="select * from team join proj_asn on team.team_id=proj_asn.team_id JOIN project on proj_asn.project_id=project.project_id where CURDATE()>deadline and (mem_1=? || mem_2=? || mem_3=?)";
ps=con.prepareStatement(query);
ps.setInt(1,id);
ps.setInt(2,id);
ps.setInt(3,id);
res=ps.executeQuery();
while(res.next())
{
out.println("		<a class='initialism fade_open btn btn-success' onclick='alr();' style='background-color:#D8D8D8'>");
out.println("		<div class='boxed'>");
out.println("			<table>");
out.println("			<tr>");
out.println("				<td rowspan='3'><img src='images/"+res.getString(12)+".jpeg' style='width:150px;height:130px'></td>");
out.println("			<td>Project Id</td><td>&nbsp</td><td>"+res.getString(11)+"</td>");
out.println("			</tr>");
out.println("			<tr>	");
out.println("		<td>Project Name</td><td>&nbsp</td><td>"+res.getString(13)+"</td>");
out.println("			</tr>");
out.println("			<tr>	");
out.println("	<td>Project Deadline</td><td>&nbsp</td><td>"+res.getString(16)+"</td>");
out.println("			</tr>");
out.println("		</table>");
out.println("		</div></a>");
}
out.println("	</div>");
out.println("	");
out.println("</div>");
out.println("</div>");
out.println("");
out.println("");
out.println("<div class='' style='height:390;width:395;overflow:scroll;float:right;' >  ");
out.println("<div id='tabs1'>");
out.println("	<ul >");
out.println("    <li><a href='#tabs-1'>My Profile</a></li>");
out.println("  </ul>");
out.println("	<div id='tabs-1'>");

	out.println("<form action='imgup' method='post' enctype='multipart/form-data'>	");
	out.println("<div><img src=imgup?id="+id+" alt= 'Upload Here' width='200' height='200'></div>	");
	out.println("<div>select profile image:</br></br>");
	out.println("<button type='button' class='btn btn-success' data-toggle='collapse' data-target='#demo'>");
	out.println("<span class='glyphicon glyphicon-collapse-down'></span> Upload Image");
	out.println("</button>");
	out.println(" <div id='demo' class='collapse'>");
	out.println("<input type='file' name='img'></br>	");
	out.println("<div><input type='submit' value='submit' ></div></div>");
	out.println("<script>	$(document).ready(function(){	  $('#demo').on('hide.bs.collapse', function(){	    $('.btn').html('<span class='glyphicon glyphicon-collapse-down'></span> Upload Image');	  });	  $('#demo').on('show.bs.collapse', function(){	    $('.btn').html('<span class='glyphicon glyphicon-collapse-up'></span> Close');	  });	});	</script>");
	out.println("</form>	");

out.println("	</div>");
out.println("</div>");
out.println("");
out.println("</div>");
out.println("</div>");

out.println("<script src='jss/jquery.js'></script>");
out.println("<script src='jss/jquery-ui.js'></script>");

out.println("<div id='fade' class='well'style='width:1040px'>");
out.println("<div id='timeResult1' class='ajaxResult'>");
out.println("</div>");
out.println("</div>");
}
catch(Exception e)
		{
			e.printStackTrace();
		}

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
out.println("<br><p align='center' font='arial'>Copyright © 2016 JECRC</p>");
out.println("</footer>");
out.println("</div>");
out.println("</body>");
out.println("</html>");

		}
		
	}


}
