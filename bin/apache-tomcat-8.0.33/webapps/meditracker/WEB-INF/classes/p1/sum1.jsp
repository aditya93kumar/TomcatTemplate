<jsp:useBean id="s" class="p1.sum">
</jsp:useBean>
<%!
   int i,j;
   %> 
	 <%

String s1=request.getParameter("textfield");
String s2=request.getParameter("textfield2");

i=Integer.parseInt(s1);
 j=Integer.parseInt(s2);

  %>
  sum is:<%= s.sumcalc(i,j)%>
 

