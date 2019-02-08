package Gestion;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import bean.Boisson;
import bean.User;

public class GestionUser {

	public GestionUser() {
		// TODO Auto-generated constructor stub
	}

	public static void saveMember(User u) {
		@SuppressWarnings("deprecation")
		SessionFactory factory = new Configuration().configure().buildSessionFactory();
		Session session = factory.openSession();
		
		session.beginTransaction();
		session.save(u);
		session.getTransaction().commit();
	}
	
	public static User getUser(int IDUser) {
		@SuppressWarnings("deprecation")
		SessionFactory factory = new Configuration().configure().buildSessionFactory();
		Session session = factory.openSession();
		
		session.beginTransaction();
		User utilisateurs = (User) session.get(User.class, IDUser);
		session.getTransaction().commit();
		return(utilisateurs);
		
	}
}
