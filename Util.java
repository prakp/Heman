



import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;



public class Util{
	
	static String username="root";
	static String password="Me@himanshu1";
	static String dbUrl="jdbc:mysql://localhost:3306/register";
	
	public static Connection getConnection()
	{
		Connection conn=null;
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			conn=(Connection) DriverManager.getConnection(dbUrl,username,password);
			
		}
		catch(SQLException e)
		{
			e.printStackTrace();
			
		}
		catch(ClassNotFoundException e)
		{e.printStackTrace();
			
		}
		return conn;
		
	}
		
}
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
/*	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
/*	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}*/
