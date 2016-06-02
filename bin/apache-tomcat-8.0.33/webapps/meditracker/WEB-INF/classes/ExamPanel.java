import javax.servlet.http.*;
import java.io.*;
import java.sql.*;

public class ExamPanel extends HttpServlet
{
  static int count=1;
  static int correct,wrong,skip;
  String correctans;
   public void doGet(HttpServletRequest req,HttpServletResponse res)throws IOException
   {
     PrintWriter pw=res.getWriter();
	 
	 pw.println("<html>");
	 pw.println("<head>");
	  pw.println("<link rel=stylesheet type=text/css href=file:///C|/Users/intel/Music/Documents/Unnamed Site 1/bootstrap.min.css>");
 pw.println("<link rel=\"stylesheet\" type=\"text/css\" href=\"file:///C|/Users/intel/Music/Documents/Unnamed Site 1/bootstrap.css\">");
     pw.println("<script type=\"text/javascript\" src=\"js/jquery-1.10.2.min.js\"></script>");
     pw.println("<script type=\"text/javascript\" src=\"bootstrap/js/bootstrap.min.js\"></script>");
	 pw.println("</head>");
	
	 pw.println("<body>");
	 pw.println("<div class=\"container\">");



pw.println("<div class=\"page-header\" style=\"margin-top:20px;\">");
pw.println("<div style=\"width:100% ; height:100%\">");
pw.println("<div class=\"row\" style=\"width:100%; height:30px;\">");
    pw.println("<div class=\"col-lg-3\"><h1><font color=\"#6600FF\">JECRC,JAIPUR</font></h1></div>");
	pw.println("<div class=\"col-lg-7\"></div>");
	pw.println("<div class=\"col-lg-2\"><img src=\"logo.png\"/></div>");
	pw.println("</div>");
	 pw.println("<form method=post>");

	
	 
	 pw.println("<table border=0>");
	 
	 pw.println("</tr>");
	 
	 
	 String query="select * from javaexam where qid=?";
	 try
	 {
	 
	 Class.forName("com.mysql.jdbc.Driver");
	 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jspprograms","root","rat");
	 PreparedStatement ps=con.prepareStatement(query);
	 ps.setInt(1,count);
	 ResultSet rs=ps.executeQuery();
		 while(rs.next())
		 {
		   int id=rs.getInt(1);
		   String question=rs.getString(2);
		   String o1=rs.getString(3);
		   String o2=rs.getString(4);
		   String o3=rs.getString(5);
		   String o4=rs.getString(6);
		   correctans=rs.getString(7);
		  
		   pw.println("<tr><td>Qno."+id+"</td></tr>");
		   pw.println("<tr><td>"+question+"</td></tr>");
		   pw.println("<tr><td><input type=radio name=option value=a>"+o1+"</td></tr>");
		   pw.println("<tr><td><input type=radio name=option value=b>"+o2+"</td></tr>");
		   pw.println("<tr><td><input type=radio name=option value=c>"+o3+"</td></tr>");
		   pw.println("<tr><td><input type=radio name=option value=d>"+o4+"</td></tr>");
		   pw.println("<tr><td><input type=radio name=option value=e>Skip</td></tr>");
		 
		   count++;
		 }
	 }
	 catch(Exception e)
	 {
	 e.printStackTrace();
	 }
	
	 pw.println("<tr><td><input type=submit></td></tr>");
	
	 pw.println("</table>");
	 

	 
	 pw.println("</form></body>");
	 pw.println("</html>");
	// DBInfo.close();
	 
   }
    public void doPost(HttpServletRequest req,HttpServletResponse res)throws IOException
   {
     PrintWriter pw=res.getWriter();
	 String ans=req.getParameter("option");
	 if(ans==null)
	 {
	 skip++;
	 }
	 else
	 { 
	     if(ans.equalsIgnoreCase("e"))
		 {
		   skip++;
		 }
		 else
		 {
		   if(correctans.equals(ans))
		   {
		     correct++;
			}
			else
			{
			  wrong++;
			 } 
		 }
		 
	 }
	 System.out.println(skip+"-------"+correct+"------"+wrong);
	 doGet(req,res);
    }
   
    
}