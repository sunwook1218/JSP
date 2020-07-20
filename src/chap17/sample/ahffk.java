package chap17.sample;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap17.Item;

/**
 * Servlet implementation class ahffk
 */
@WebServlet("/ahffk")
public class ahffk extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ahffk() {
        super();
        // TODO Auto-generated constructor stub
    }
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		RequestDispatcher view = request.getRequestDispatcher("WEB-INF/sample/list.jsp");
		view.forward(request, response);
		
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		
		ServletContext app = getServletContext();
		
		Object o = app.getAttribute("list");
		if(o == null) {
			o = new ArrayList<Item>();
			app.setAttribute("list", o);
		}
		
		List<Item> list = (List<Item>) o;
		Item i = new Item();
		i.setName(name);
		i.setAge(age);
		
		list.add(i);
		
		request.setAttribute("list", list);
		
		RequestDispatcher view
		= request.getRequestDispatcher("WEB-INF/sample/list.jsp");
		view.forward(request, response);
	}

}
