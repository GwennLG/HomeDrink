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
 * Servlet implementation class InscriptionServlet
 */
public class InscriptionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InscriptionServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	HttpSession session = request.getSession();
		
		
		if(session.getAttribute("userActuel") == null) {
		
		request.setAttribute("Session incorrect", false);
		request.setAttribute("Mot de passe et/ou email incorrect", false);
		this.getServletContext().getRequestDispatcher("/WEB-INF/Inscription.jsp").forward(request, response);
		
		
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
		String nom = request.getParameter("nom");
		String prenom = request.getParameter("prenom");
		String ville = request.getParameter("ville");
		int code = Integer.parseInt(request.getParameter("code"));
		String adresse = request.getParameter("adresse");
		Boolean erreurConnexion = false;
		
		// préparation en fonction de la demande
		User nouveauMembre = new User();
		nouveauMembre.setMail(email);
		nouveauMembre.setMotDePasse(password);
		nouveauMembre.setNom(nom);
		nouveauMembre.setPrenom(prenom);
		nouveauMembre.setVille(ville);
		nouveauMembre.setZip(code);
		nouveauMembre.setAdresse(adresse);
		
		// Initialisation de la factory
		@SuppressWarnings("deprecation")
		SessionFactory factory = new Configuration().configure().buildSessionFactory();
		Session session = factory.openSession();
		
		// Sauvegarde de l'instance en base de données
		session.beginTransaction();
		
		List <User> result = session.createQuery
				("FROM User WHERE mail = '" + email + "' ").list();
		if(result.size() == 0) {
			erreurConnexion = false;
			request.setAttribute("Session incorrect", erreurConnexion);
			request.setAttribute("Mot de passe et/ou email incorrect", erreurConnexion);
			session.save(nouveauMembre);
			
			// Ouvrir une session avec la personne connectée
			HttpSession httpSession = request.getSession();
			httpSession.setAttribute("userActuel", nouveauMembre);
			this.getServletContext().getRequestDispatcher("/WEB-INF/Accueil.jsp").forward(request, response);
			
			// Si la personne existe deja on prévient que la session existe deja
		} else if (result.size() == 1) {
			erreurConnexion = true;
			request.setAttribute("Session incorrect",erreurConnexion);
			request.setAttribute("Mot de passe et/ou email incorrect",erreurConnexion);
			this.getServletContext().getRequestDispatcher("/WEB-INF/Connexion.jsp").forward(request, response);
		}
		
		session.getTransaction().commit();
		session.close();
		
	}

}
