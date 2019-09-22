

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



/**
 * Servlet implementation class Login1
 */
@WebServlet("/Login1")
public class Login1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login1() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int flag=0;
		PrintWriter out = response.getWriter();
		String e=request.getParameter("email");
		String p=request.getParameter("password");
	
	   Connection conn = null;
	   java.sql.Statement stmt = null;
	   ResultSet rs = null;
	   try
	   {	

		   conn =Util.getConnection();
		   System.out.println("Connection established");
		   
		   stmt = conn.createStatement();
		  
		   rs = stmt.executeQuery("select * from  registration");
		   while(rs.next())
		   {
			   if(e.equals(rs.getString(2)) && p.equals(rs.getString(3)))
			   {
				   //out.println("welcome");
					HttpSession session = request.getSession();
					session.setAttribute("user", rs.getString(1));
					
				   response.sendRedirect("index2.jsp");
				   flag=0;
				   break;
				   
			   }
			   else
			   {
				   flag=1;
			   }
			   
		   }
		 
		   if(flag==1)
		   {
			   response.setContentType("text/html");
				out.println("<html>");
				out.println("<body>");
				out.println("<script>");
				out.println("window.location.replace('login.html');");
				out.println("alert('Invalid Data');");
				out.println("</script>");
				out.println("</body>");
				out.println("</html>"); 
		   }
		  
	   }
	   
		catch(Exception eX)
	   {
			System.out.println(eX);
	   } 
	   finally
	   {
		   try
		   {
			  stmt.close();
			  conn.close();
		   }
		   catch(SQLException e1) {
			   e1.printStackTrace();
		   }
	   }
	   
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
