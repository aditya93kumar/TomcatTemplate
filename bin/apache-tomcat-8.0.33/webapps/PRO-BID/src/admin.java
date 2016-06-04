


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
@WebServlet("/admin")
public class admin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public admin() {
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
		int type=Integer.parseInt(session.getAttribute("ty").toString());
		if(type!=4)
		{
					out.println("<html>");
    	out.println("<head>");
    	out.println("<title>ADMIN PAGE</title>");
		out.println("<script src='jquery-1.10.2.js'></script>");
    	out.println("<link rel='shortcut icon' href='images/jecrc-logo.jpeg'/>");
    	out.println("<link href='css/font-awesome.min.css' rel='stylesheet'>");
    	out.println("<link href='css/css.css' rel='stylesheet' type='text/css'>");
    	out.println("<link rel='stylesheet' href='css/bootstrap.min.css'>");
    	out.println("<script src='jss/jquery.min.js'></script>");
    	out.println("<script src='jss/bootstrap.min.js'></script>");
    	out.println("<link href='css/css1.css'");
    	out.println("rel='stylesheet' type='text/css'>");
    	out.println("<link rel='stylesheet' href='css/style1.css'>");
    	out.println("<link rel='stylesheet' href='css/jquery-ui.css'>");
    	out.println("<script src='jss/jquery-ui.js'></script>");
    	out.println("<script src='jss/autocompleter.js'></script>");
		out.println("   ");
    	out.println("      <script>");
    	out.println("         $(function() {");
    	out.println("            $( '#accordion-2' ).accordion({");
    	out.println("               collapsible: true");
    	out.println("            });");
    	out.println("         });");
    	out.println("		  $(function() {");
    	out.println("            $( '#accordion-2' ).accordion({");
    	out.println("               active:false	   ");
    	out.println("            });");
    	out.println("         });");
    	out.println("		  $(function() {");
    	out.println("    $( '#datepicker' ).datepicker();");
    	out.println("  });");
    	out.println("   $(function() {");
    	out.println("    $( '#datepicker1' ).datepicker();");
    	out.println("  });");
    	out.println("      </script>	  ");
    	out.println("	<!-- Force latest IE, Google Chrome Frame for IE -->");
    	out.println("    <meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1'>");
    	out.println("	<meta name='description' content='jQuery plugin for responsive and accessible modal windows and tooltips.' />");
    	out.println("    <meta name='viewport' content='width=device-width, initial-scale=1.0' />");
    	out.println("    <!-- Bootstrap styles -->");
    	out.println("    <link rel='stylesheet' href='css/bootstrap.min.css' />");
    	out.println("</head>");
    	out.println("<body>");
    	out.println("<div class='main_div'>");
    	out.println("<header>");
    	out.println("<div class='upper'>");
    	out.println("<table class='top_table'>");
    	out.println("<tr><td>");
    	out.println("<a href='home1.html'><img src='images/jecrc-logo.jpeg' width=90px height= 90px></a>");
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
    	out.println("		</li>");
    	out.println("		<li>");
    	out.println("			<a href='#'>Contact us</a>");
    	out.println("		</li>");
    	out.println("		<li>");
    	out.println("			<a href='aboutus.html'>About Us</a>");
    	out.println("		</li>");
    	out.println("		<li>");
    	out.println("			<a  href='logout' >Logout</a>");
    	out.println("		</li>");	
    	out.println("	</ul>");
    	out.println("</div>");
    	out.println("</tr>");
    	out.println("</table>");
    	out.println("</header>");
    	out.println("");
    	out.println("<h2>Welcome Admin...</h2>");
    	out.println("<div class='container'>");
    	out.println("    <div id='accordion-2' class='accordion1'>");
    	out.println("         <h3>Add a project</h3>");
    	out.println("      <div >");
    	out.println("	  ");
    	out.println("	  <form action='insert' name='MainForm' method='post' target='_self'>");
    	out.println("<table align:center;style='border:10px solid #cdcdcd; width:10%; padding:0px;'>");
    	out.println("<tr>");
    	out.println("<td style='text-align:right;width:30%;padding:10px;'> Project Name :</td><td><input type='text' name='Project Name' id='Project Name'  style='width:340px;border:1px solid #cdcdcd;'/></td>");
    	out.println("</tr>");
    	out.println("<tr>");
    	out.println("<td style='text-align:right;width:30%;padding:10px;'>Technology Name: </td><td><input type='text' name='tech name' id='tech name'style='width:340px;border:1px solid #cdcdcd;'></td>");
    	out.println("</tr>");
    	out.println("<tr>");
    	out.println("<td style='text-align:right;width:30%;padding:10px;'> Date of Post:</td><td>");
    	out.println("  ");
    	out.println("  <input type='text' name='posting' id='datepicker'style='width:340px;border:1px solid #cdcdcd;'>");
    	out.println("  </td>");
    	out.println("</tr>");
    	out.println("<tr>");
    	out.println("<td style='text-align:right;width:30%;padding:10px;'> Deadline Date:</td><td>");
    	out.println(" ");
    	out.println("  <input type='text' name='deadline' id='datepicker1' style='width:340px;border:1px solid #cdcdcd;'>");
    	out.println("  </td>");
    	out.println("</tr>");
    	out.println("<tr>");
    	out.println("<td style='text-align:right;width:30%;padding:10px;'>Faculty Co-ordinator :</td><td><input type='text' name='faculty name' id='faculty name' maxlength='30' style='width:340px;border:1px solid #cdcdcd;'/>");
    	out.println("</td>");
    	out.println("</tr>");
    	out.println(" ");
    	out.println("<tr>");
    	out.println("<td style='text-align:right;width:30%;padding:10px;'>Project Description:</td> ");
    	out.println("<td>");
    	out.println("     ");
    	out.println("          <textarea class='form-control status-box' name='desc' rows='2' id='Pro-Description'placeholder='What's on your mind?'style='width:340px;border:1px solid #cdcdcd; height:50px;max-width:340px;'  ></textarea>");
    	out.println("     ");
    	out.println("<tr>");
    	out.println("<td style='text-align:right'><input type='submit'   /></td>");
    	out.println("<td style='padding:20px'><input type='button'  class='btn btn-primary' name='notsubmit' value='Reset' onclick='window.open('  ', '_parent');' /></td>");
    	out.println("</tr>");
    	out.println("</table>");
    	out.println("</form>");
    	out.println("         ");
    	out.println("		 ");
    	out.println("      </div>");
    	out.println("      <h3>Edit Project</h3>");
    	out.println("      <div >");
    	out.println("        <div class='container' >");
    	out.println("      <div class='dropdown' >");
    	out.println("        <button class='btn btn-default dropdown-toggle' type='button' id='menu1' data-toggle='dropdown'>Project Name");
    	out.println("        <span class='caret'></span></button>");
    	out.println("        <ol class='dropdown-menu' role='menu' aria-labelledby='menu1' style='font-size: 20px;'>");
		Connection con=DBInfo.getConn();
		try
		{
		String query="select project_id,project_name from project where CURDATE() <=deadline";
		PreparedStatement ps=con.prepareStatement(query);
		ResultSet res=ps.executeQuery();
		while(res.next())
		{
    	out.println("          <li role='presentation'><a role='menuitem' tabindex='-1' onClick=ajaxAlert("+res.getInt(1)+"); >"+res.getString(2)+"</a></li>");
		}
    	out.println("        </ol>");
    	out.println("      </div>");
    	out.println("    </div>");
		out.println("<div id='timeResult1' class='ajaxResult'>");
		out.println("</div>");
    	out.println("      </div>");
    	out.println("      <h3>View Submitted Project</h3>");
    	out.println("      <div >");
		out.println(" <div class='search-container'>");
        out.println(" <div class='ui-widget'>");
        out.println("         <input type='text' id='search' name='search' class='search' />");
        out.println(" </div>");
		out.println(" </div>");
	
    	out.println("      </div>");
    	out.println("	  <h3>View Bidding Request</h3>");
    	out.println("      <div >");
		query="select b.pro_id,p.project_name,b.team_id,t.team_name,t.mem_1,t.mem_2,t.mem_3,b.desc FROM bid_req b join project p on b.pro_id =p.project_id  join team t on t.team_id=b.team_id";
    	ps=con.prepareStatement(query);
    	res=ps.executeQuery();
    	out.println("<div  class='container'>");
		out.println("<div id='timeResult3' class='ajaxResult'>");
		
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
out.println("</div>");
out.println("      </div>");


    	out.println("      </div>");
		
		
		
		
    	out.println("	  <h3>View Enrol Request </h3>");
    	query="select * from request";
    	ps=con.prepareStatement(query);
    	res=ps.executeQuery();
    	out.println("<div  class='container'>");
		out.println("<div id='timeResult2' class='ajaxResult'>");
		
out.println("         <table border='1' class='table' >");
out.println("		 <tr>");
out.println("		 <th Style='padding:5px'> Name</th><th Style='padding:5px'>password</th><th Style='padding:5px'>Email-Id</th>");
out.println("		 <th Style='padding:5px'>user_name</th><th Style='padding:5px'>college_Id</th>");
out.println("		 <th Style='padding:5px'>contact</th><th Style='padding:5px'>User-type</th><th>Accept</th><th>Reject</th>");
out.println("		 </tr>");
while(res.next())
{
out.println("		 <tr>");
out.println("		 <td>"+res.getString(1)+"</td><td>"+res.getString(2)+"</td><td>"+res.getString(3)+"</td><td>"+res.getString(4)+"</td><td>"+res.getString(5)+"</td><td>"+res.getString(6)+"</td><td>"+res.getString(7)+"</td> <td style='text-align:right'><a class='btn btn-success' onclick='accept(\""+res.getString(1)+"\");'>Accept</a></td>");
out.println("		<td style='text-align:left'><a class='btn btn-primary' onclick='reject(\""+res.getString(1)+"\");'>Reject</a></td>");
out.println("		");
out.println("		 </tr>");
}
out.println("		 </table>");
out.println("</div>");
out.println("      </div>");

    	out.println("    </div>");
    	out.println("</div>");
    	out.println("   ");
    	out.println("");
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
    	out.println("</br><p align='center' font='arial'>Copyright © 2015 JECRC</p>");
    	out.println("</footer>");
    	out.println("</div>");
    	out.println("</body>");
    	out.println("</html>");

		}
    	
    }
	

}
