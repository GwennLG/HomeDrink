package Gestion;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import bean.Boisson;

public class GestionBoisson {
	
	
	public GestionBoisson() {
		// TODO Auto-generated constructor stub
	}
	
	public static void saveBoisson(Boisson b) {
		@SuppressWarnings("deprecation")
		SessionFactory factory = new Configuration().configure().buildSessionFactory();
		Session session = factory.openSession();
		
		session.beginTransaction();
		session.save(b);
		session.getTransaction().commit();
	}
	



}
