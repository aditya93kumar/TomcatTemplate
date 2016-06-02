<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Email Sending</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
-->
</style></head>

<body>

<%@ include file="CHeader.jsp" %>
<form action="servlet/SendMail1">
<table width="499" border="0" align="center">
  <tr>
    <th colspan="2" scope="col"><em><strong>Email Sending</strong> </em></th>
  </tr>
  <tr>
    <td width="17">To</td>
    <td width="466"><input name="to" type="email" id="to" width="500" value="<%=""+session.getAttribute("patientemail") %>" /></td>
  </tr>
  
  <tr>
    <td colspan="2"><div align="center">
      <input type="submit" name="Submit" value="Submit"  />
    </div></td>
  </tr>
</table>
</form>
</body>
</html>
