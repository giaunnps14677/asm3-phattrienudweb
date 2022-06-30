package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Product;
import model.ProductDB;

/**
 * Servlet implementation class AddToCartController
 */
@WebServlet("/AddToCart")
public class AddToCartController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddToCartController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		Product p = new Product();
		ProductDB pdb = new ProductDB();
		
		try {
		HttpSession session = request.getSession(true);
		String idd = request.getParameter("pid");
		String action = request.getParameter("action");
		if(action != null && action.equalsIgnoreCase("add")) {
			if(session.getAttribute("cart") == null) {
				session.setAttribute("cart", new Cart());
			}	
			int id = Integer.parseInt(idd);
			p = new ProductDB().getProductById(id);
			Cart c =  (Cart) session.getAttribute("cart");
			c.add(new Product(p.getId(), p.getName(), p.getDescription(), p.getPrice(), p.getSrc(), p.getType(), p.getBrand(), 1));
		}else if(action != null && action.equalsIgnoreCase("delete")) {
			int id = Integer.parseInt(idd);
			pdb.deleteOrder(id);
			Cart c = (Cart) session.getAttribute("cart");
			c.remove(id);
		}
		response.sendRedirect("views/showcart.jsp");
		} catch (Exception e) {
			response.getWriter().println(e);
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
