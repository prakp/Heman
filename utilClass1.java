

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class utilClass
 */
@WebServlet("/utilClass1")
public class utilClass1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public utilClass1() {
        super();
        // TODO Auto-generated constructor stub
    }
    int flag=0;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//response.getWriter().append("served at:").append(request.getContextPath());
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String n=request.getParameter("name");
		String e=request.getParameter("email");
		String p=request.getParameter("pass");
		String r_p=request.getParameter("re_pass");
	Connection conn=null;
	Statement st = null;
		String sql="insert into registration  values('"+n+"','"+e+"','"+p+"','"+r_p+"')";
		try{
			
			conn=Util.getConnection();
		  st = conn.createStatement();
			st.executeUpdate(sql);	
		    response.sendRedirect("login1.html");
			System.out.println("Chal sala");
			
			
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		finally
		{
			try
			{
				st.close();
				conn.close();
			}
			catch(Exception ex)
			{}
		}
			out.println("alert('You are not register Successfully');");
		
		
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request,response);
		
		
		// TODO Auto-generated method stub
	}

}
