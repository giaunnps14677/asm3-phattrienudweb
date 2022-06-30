package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.ProductDB;
import model.Users;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		Users user = (new ProductDB()).getUser(username);
		
		try {
			request.getSession(true).invalidate();
			if(user != null && user.getPassword().equals(password) && user.getUserMail().equals(username) && user.getRole() == 1) {
				request.getRequestDispatcher("/views/admin.jsp").forward(request, response);
			}else if(user != null && (user.getPassword().equals("") || user.getUserMail().equals(""))){
				request.getRequestDispatcher("/views/login.jsp").forward(request, response);
			}else if(user != null && user.getPassword().equals(password) && user.getUserMail().equals(username) && user.getRole() == 0) {
				response.sendRedirect("SearchServlet");
			}
			else {
				request.setAttribute("message", "Wrong user or password");
				request.getRequestDispatcher("/views/login.jsp").forward(request, response);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
