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
 * Servlet implementation class PlusCartController
 */
@WebServlet("/PlusCart")
public class PlusCartController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PlusCartController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		
		String id = request.getParameter("id");
		/*
		Cookie arr[] = request.getCookies();
		String txt = "";
		for(Cookie o : arr) {
			if(o.getName().equals("id")) {
				txt = txt + o.getValue();
				o.setMaxAge(0);
				response.addCookie(o);
			}
			
		}
		if(txt.isEmpty()) {
			txt = id;
		}else {
			txt = txt + "," + id;
		}
		Cookie c = new Cookie("id", txt);
		c.setMaxAge(60 * 60 * 24);
		response.addCookie(c);
		*/
		HttpSession session = request.getSession(true);
		Product p = new ProductDB().getProductById(Integer.parseInt(id));
		Cart c =  (Cart) session.getAttribute("cart");
		c.getItems();//
		//lay danh sach trong cart ra, roi updte lai truong number len +1
		c.add(new Product(p.getId(), p.getName(), p.getDescription(), p.getPrice(), p.getSrc(), p.getType(), p.getBrand(), p.getNumber()+1));
		response.sendRedirect("AddToCart");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
