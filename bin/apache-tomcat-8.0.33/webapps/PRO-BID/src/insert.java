import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.util.Date;
import java.util.*;

public class insert extends HttpServlet {

protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	HttpSession session =request.getSession(false);
	
	PrintWriter out=response.getWriter();
	
	String pn=request.getParameter("Project Name");
	String tn=request.getParameter("tech name");
	String po=request.getParameter("posting");
	String de=request.getParameter("deadline");
	int fa=Integer.parseInt(request.getParameter("faculty name"));
	
	String pd=(request.getParameter("desc"));
	out.println(pn);
			out.println(tn);out.println(po);out.println(de);out.println(fa);out.println(pd);
		int type=(int)(session.getAttribute("ty"));
		if(type==1)
		{
			try
			{	
				Connection con=DBInfo.getConn();
				String query="insert into project values(?,?,?,?,?,?,?) ";
				PreparedStatement ps=con.prepareStatement(query);
				Date d=new Date(po);
				Date d1=new Date(de);
				ps.setInt(1,0);
				ps.setString(2,tn);
				ps.setString(3,pn);
				ps.setString(4,pd);
				ps.setDate(5,new java.sql.Date(d.getTime()));
				
				ps.setDate(6,new java.sql.Date(d1.getTime()));
				
				ps.setInt(7,fa);
				int result=ps.executeUpdate();
				if(result==1)
				{
					response.sendRedirect("admin");
				}
			}
			catch(Exception e)
			{
				out.println("asascascacascc");
				e.printStackTrace();
			}
			
			
		}
	}

}


