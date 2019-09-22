import java.util

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class utilClass
 */
@WebServlet("/postClass1")
public class postClass1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public postClass1() {
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
		String t=request.getParameter("title");
		String m=request.getParameter("msg");
		String f=request.getParameter("file");
		HttpSession session = request.getSession();
	Connection conn=null;
	Statement st = null;
		String sql="insert into post  values('"+t+"','"+m+"','"+f+"')";
		try{
			
			conn=Util.getConnection();
		  st = conn.createStatement();
			st.executeUpdate(sql);	
		    response.sendRedirect("index2.jsp");
			System.out.println("Chal sala");
			session.setAttribute("user", t);
			session.setAttribute("user1", m);
			session.setAttribute("user2", f);
			
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
			out.println("alert('You have posted succefully');");
		
		
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request,response);
		
		
		// TODO Auto-generated method stub
	}

}
