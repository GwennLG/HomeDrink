package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import bean.User;

/**
 * Servlet implementation class ConnexionServlet
 */
public class ConnexionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ConnexionServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		
		
		if(session.getAttribute("userActuel") == null) {
		
		request.setAttribute("Mot de passe et/ou email incorrect", false);
		request.setAttribute("Session incorrect", false);
		this.getServletContext().getRequestDispatcher("/WEB-INF/Connexion.jsp").forward(request, response);
		
		
		} else if (session.getAttribute("userActuel") != null) {
			
			response.sendRedirect("/HomeDrink/AccueilServlet");
		}
		 
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String email = request.getParameter("email");
		String password = request.getParameter("password");
		User membreConnexion = new User();
		Boolean erreurConnexion = false;
		
		
		@SuppressWarnings("deprecation")
		SessionFactory factory = new Configuration().configure().buildSessionFactory();
		Session session = factory.openSession();
		
		session.beginTransaction();
		List <User> result = session.createQuery
				("FROM User WHERE mail = '" + email + "' AND motDePasse = '" + password + "' ").list();
		session.getTransaction().commit();
		session.close();
		
		
		if(result.size() == 0) {
			erreurConnexion = true;
			request.setAttribute("Mot de passe et/ou email incorrect", erreurConnexion);
			request.setAttribute("Session incorrect",erreurConnexion);
			this.getServletContext().getRequestDispatcher("/WEB-INF/Connexion.jsp").forward(request, response);
		} else if (result.size() == 1) {
			erreurConnexion = false;
			request.setAttribute("Mot de passe et/ou email incorrect", erreurConnexion);
			request.setAttribute("Session incorrect",erreurConnexion);
			for(User membre : result) {
				membreConnexion=membre;
				HttpSession httpSession = request.getSession();
				httpSession.setAttribute("userActuel", membreConnexion);
				this.getServletContext().getRequestDispatcher("/WEB-INF/Accueil.jsp").forward(request, response);
			}
		}
	}

}
