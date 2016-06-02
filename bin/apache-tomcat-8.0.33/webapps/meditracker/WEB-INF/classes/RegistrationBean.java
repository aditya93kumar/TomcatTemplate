package p1;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class RegistrationBean
{
	String fname,sname,email,mob,pass,repass,captcha;
	int flag=0;
	
	public String getCaptcha() {
		return captcha;
	}

	public void setCaptcha(String captcha) {
		this.captcha = captcha;
	}


	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getSname() {
		return sname;
	}

	public void setSname(String sname) {
		this.sname = sname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMob() {
		return mob;
	}

	public void setMob(String mob) {
		this.mob = mob;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getRepass() {
		return repass;
	}

	public void setRepass(String repass) {
		this.repass = repass;
	}
	
	
	public int doRegistration(String fname,String sname,String email,String mob,String pass)
	{ 
		Connection con=DBInfo.getConnection();
		   String query="insert into registration values(?,?,?,?)";
		 
try
{ 	
	PreparedStatement ps=con.prepareStatement(query);
	
		   ps.setString(1,fname);
		   ps.setString(2,sname);
		   ps.setString(3,email);
		   ps.setString(4,mob);
		   
		  
		  
		    flag=ps.executeUpdate();
			ps.close();
			
			 String query1="insert into login values(?,?)";
			PreparedStatement ps1=con.prepareStatement(query1);
			 ps1.setString(1,email);
		   ps1.setString(2,pass);
			ps1.executeUpdate();
		   
		   ps1.close();
		   }
//		   PreparedStatement ps1=con.prepareStatement(query1);
//		   ps1.setString(1,email);
//		   ps1.setString(2,pass);
//		   ps1.setString(3,"");
//		   
//
//		   ps1.executeUpdate();
//		   ps1.close();
		   
		   catch(Exception e)
		   {
e.printStackTrace();		   
		   }
		
		return flag;
	}

}
