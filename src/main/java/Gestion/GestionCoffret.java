package Gestion;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import bean.Coffret;
import bean.User;

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
	
	public static Coffret getCoffret(int IDCoffret) {
		@SuppressWarnings("deprecation")
		SessionFactory factory = new Configuration().configure().buildSessionFactory();
		Session session = factory.openSession();
		
		session.beginTransaction();
		Coffret coffret = (Coffret) session.get(Coffret.class, IDCoffret);
		session.getTransaction().commit();
		return(coffret);
		
	}
	
	
}
