package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SubController
 */
@WebServlet("/SubController")
public class SubController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SubController() {
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
		Cookie arr[] = request.getCookies();
		String txt = "";
		for(Cookie o : arr) {
			if(o.getName().equals("id")) {
				txt = txt + o.getValue();
				o.setMaxAge(0);
				response.addCookie(o);
			}
		}
		String ids[] = txt.split(",");
		String txtOutPut = "";
		int check = 0;
		for(int i=0; i<ids.length; i++) {
			if(ids[i].equals(id)) {
				check++;
			}
			if(check != 1) {
				if(txtOutPut.isEmpty()) {
					txtOutPut = ids[i];
				}else {
					txtOutPut = txtOutPut + "," + ids[i];
				}
			}else {
				check++;
			}
		}
		if(!txtOutPut.isEmpty()) {
			Cookie c = new Cookie("id", txtOutPut);
			c.setMaxAge(60 * 60 * 24);
			response.addCookie(c);
		}
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
