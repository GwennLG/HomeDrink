package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Biere;

/**
 * Servlet implementation class BoissonServlet
 */
public class BoissonServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoissonServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// Instance de nos bières
		Biere guiness = new Biere(6, 50, "Guiness", "Stout", 4.2, true);
		Biere laBete = new Biere(6.5, 50, "La Bete", "Blonde", 6, true);
		Biere kilkenny = new Biere(6, 50, "Kilkenny", "Rousse", 5, true);
		Biere murphy = new Biere(7, 50, "Murphy's", "Stout", 7, true);
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
