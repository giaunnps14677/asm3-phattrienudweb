package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.time.ZoneId;
import java.util.Properties;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

import model.Order;
import model.ProductDB;

/**
 * Servlet implementation class PayController
 */
@WebServlet("/PayController")
public class PayController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PayController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		System.out.print("paycontroller");
		ProductDB dao = new ProductDB();
		String address = request.getParameter("address");
		String name = request.getParameter("name");
		String code = request.getParameter("code");	
		String[] arrId = request.getParameterValues("id");
		String[] arrNumber = request.getParameterValues("number");
		
		try {
			HttpSession session = request.getSession(true);
//			
//			if(session.getAttribute("cart") == null) {
//				
//			}
			session.setAttribute("number", arrNumber);
			session.setAttribute("id", arrId);
			
			Cart c =  (Cart) session.getAttribute("cart");
			
//			
//			c.add(new Order(p.getPrice(), 1, '', address, '', '', name, '', code));
			Order order = new Order();
			order.setPrice(order.getPrice()	);
			order.setStatus(1);
			order.setOrderDate(java.util.Date.from(java.time.LocalDate.now().atStartOfDay().atZone(ZoneId.systemDefault()).toInstant()));
			order.setAddress(address);
			order.setPhoneNumber("");
			order.setUserMail(name);
			order.setDiscount(code);
			
			dao.insertOrder(order, c);
			
			request.getRequestDispatcher("/views/orderSuccess.jsp").forward(request, response);
			return;
			
		} catch (Exception e) {
			response.getWriter().println(e);
			e.printStackTrace();

		}
		request.getRequestDispatcher("/views/showcart.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
