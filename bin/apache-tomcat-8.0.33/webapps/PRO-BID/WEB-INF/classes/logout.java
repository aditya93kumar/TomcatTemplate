import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
public class logout extends HttpServlet {

protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
HttpSession session =request.getSession(false);
session.invalidate();
response.sendRedirect("index.html");



}
}