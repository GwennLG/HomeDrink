package Gestion;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import bean.Coffret;

public class GestionCoffret {

	public GestionCoffret() {
		// TODO Auto-generated constructor stub
	}

	
	public static void saveCoffret(Coffret c) {
		@SuppressWarnings("deprecation")
		SessionFactory factory = new Configuration().configure().buildSessionFactory();
		Session session = factory.openSession();
		
		session.beginTransaction();
		session.save(c);
		session.getTransaction().commit();
	}
	
}
