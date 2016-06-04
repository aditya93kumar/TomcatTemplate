


import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
@WebServlet("/imgup")
@MultipartConfig(maxFileSize = 999999999)  
public class imgup extends HttpServlet {

	/**
	
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
		HttpSession session =request.getSession(false);
		int id=Integer.parseInt(session.getAttribute("uid").toString());
		InputStream is=null;
		Part filePart=request.getPart("img");
		if (filePart != null) {  
            // debug messages  
            System.out.println(filePart.getName());  
            System.out.println(filePart.getSize());  
            System.out.println(filePart.getContentType());  
  
            // obtains input stream of the upload file  
            is = filePart.getInputStream();  
        }  	
		 String message = null; 
		 
		try
		{
		Connection con=DBInfo.getConn();
		String query="update img set image=? where uid=?";
		PreparedStatement ps=con.prepareStatement(query);
		if(is != null){
			ps.setBlob(1, is);
		}
		ps.setInt(2, id);
		int res=ps.executeUpdate();
		if (res!=0)
		{
			message = "Image is uploaded successfully into the Database";
			response.sendRedirect("dashboard");
		}
		
		}
		catch(Exception e)
		{
			message = "ERROR: " + e.getMessage(); 
			e.printStackTrace();
		}
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		int img_id = Integer.parseInt(request.getParameter("id"));
		Connection con = DBInfo.getConn();//get your connection object here ;
		ResultSet rs = null;
		PreparedStatement pstmt = null;
		OutputStream oImage;
		try {
		pstmt = con.prepareStatement("select image from img where uid=?");
		pstmt.setInt(1, img_id);
		rs = pstmt.executeQuery();
		    if(rs.next()) {
		        byte barray[] = rs.getBytes(1);
		        response.setContentType("image/gif");
		        oImage=response.getOutputStream();
		        oImage.write(barray);
		        oImage.flush();
		        oImage.close();
		    }
		}
		catch(Exception ex){
		    //ex.printStackTrace();
		}finally {
		    try{
		    if(con!=null)
		       con.close();
		    }catch(Exception ex){
		       // ex.printStackTrace();
		    }
		}
	}
}
