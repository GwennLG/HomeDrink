package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class PaiementServlet
 */
public class PaiementServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PaiementServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		
		if(session.getAttribute("email") != null) {
		this.getServletContext().getRequestDispatcher("/WEB-INF/Paiement.jsp").forward(request, response);
		} else {
			response.sendRedirect("/HomeDrink/AccueilServlet");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session = request.getSession();
		
		if(session.getAttribute("email") != null) {
		this.getServletContext().getRequestDispatcher("/WEB-INF/PaiementValide.jsp").forward(request, response);
		} else {
			response.sendRedirect("/HomeDrink/AccueilServlet");
		}
	}

}
