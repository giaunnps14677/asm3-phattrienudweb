package controller;

import java.io.IOException;
import java.time.ZoneId;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Account;
import model.Order;
import model.ProductDB;

/**
 * Servlet implementation class AccountController
 */
@WebServlet("/AccountController")
public class AccountController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AccountController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		System.out.print("accountcontroller");
		ProductDB dao = new ProductDB();
		String mail = request.getParameter("mail");
		String pass = request.getParameter("pass");
		String address = request.getParameter("address");
		String phoneNumber = request.getParameter("phoneNumber");
		String username = request.getParameter("username");
		
		try {
			Account account = new Account();
			account.setUserMail(mail);
			account.setPassword(pass);
			account.setAccountRole(0);
			account.setUserName(username);
			account.setUserAddress(address);
			account.setUserPhone(phoneNumber);
			
			dao.insertAccount(account);
			
			request.getRequestDispatcher("/views/RegisterSuccess.jsp").forward(request, response);
			return;
		} catch (Exception e) {
			response.getWriter().println(e);
			e.printStackTrace();

		}
		request.getRequestDispatcher("/views/register.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
