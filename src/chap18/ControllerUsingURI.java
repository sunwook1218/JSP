package chap18;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ControllerUsingURI
 */
//@WebServlet("/ControllerUsingURI")
public class ControllerUsingURI extends HttpServlet {

	private static final long serialVersionUID = 1L;
	private Map<String, CommandHandler> map = new HashMap<>();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ControllerUsingURI() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public void init() throws ServletException {

		super.init();
		FileInputStream fis = null;

		try {
			String filePath = getInitParameter("configFile");
			String realPath = getServletContext().getRealPath(filePath);

			fis = new FileInputStream(realPath);

			Properties props = new Properties();
			props.load(fis);
			
			Enumeration<String> keys = (Enumeration<String>) props.propertyNames();
			
			while(keys.hasMoreElements()) {
				
				String key = keys.nextElement();
				String className = props.getProperty(key);
				
				Class<CommandHandler> clazz = (Class<CommandHandler>) Class.forName(className);
				
				CommandHandler comm = clazz.newInstance();
				
				map.put(key, comm);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (fis != null) {
				try {
					fis.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		process(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		process(request, response);
	}

	private void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// 어떤 경로로 왔는 지 파악
		// ex) /a.do, /b.do, /c.do
		String requestURI = request.getRequestURI();

		// localhost:8080/contextPath/some/a.do

		String contextPath = request.getContextPath();
		int startIndex = requestURI.indexOf(contextPath);

		String command = requestURI.substring(startIndex + contextPath.length());

		CommandHandler com = map.get(command);
		String res = com.process(request, response);

		request.setAttribute("result", res);

		request.getRequestDispatcher("/chap18/simpleView.jsp").forward(request, response);

	}

}
