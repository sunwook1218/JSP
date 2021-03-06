package myapp;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class DeleteServlet
 */
@WebServlet("/myapp/delete")
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/view/myapp/delete.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		
		PrintWriter out = response.getWriter();
		
		MemberVo mem = (MemberVo) session.getAttribute("member");
		
		String password1 = mem.getPassword();
		String password2 = request.getParameter("password");
		
		if(password1.equals(password2)) {
			
			out.print("<script> alert(\"delete complete\") </script>");
			
			//1. db에서 삭제
			try {
				Connection con = DriverManager.getConnection("jdbc:apache:commons:dbcp:test1");
				
				String sql 
				= "delete from member where id=" + mem.getId();
				
				Statement stmt = con.createStatement();
				int result = stmt.executeUpdate(sql);
				
				
				
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
			//2. redirect
			response.sendRedirect("signup");
		} else {
			String message = "암호가 일치하지 않습니다.";
			request.setAttribute("message", message);
			doGet(request, response);
		}
	}

}
