<html>
<head>

<title>Untitled Document</title>
</head>


 <%@ page import="p1.DBInfo"%> 
 <%@ page import="java.sql.*"%>

<body>

 
 <%
 String s1=request.getParameter("fname");
 String s2=request.getParameter("pass");
 String usertype="";
 
 
 Connection con=DBInfo.getConnection();
 String query="select * from login where username=? && password=?";
 PreparedStatement ps=con.PrepareStatement(query);
 ps.setString(1,s1);
 ps.setString(2,s2);
 
 ResultSet res=ps.executeQuery();
 int flag=0;
 while(res.next())
 {
 flag=1;
 usertype=res.getString(4);
 break;
 } 
 
 
 if(flag==1 && usertype.equalsIgnoreCase("admin"))
 { 
 
 response..sendRedirect("Admin.jsp?id="+s1);
 }
 
 if(flag==0)
{
%>
Login Failed

<%
}
%>
 

 
<%@ page include="login.html"%>
</body>
</html>
