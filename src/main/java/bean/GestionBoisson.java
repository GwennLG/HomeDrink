package bean;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class GestionBoisson {
	
	@SuppressWarnings("deprecation")
	static SessionFactory factory = new Configuration().configure().buildSessionFactory();
	static Session session = factory.openSession();
	
	
	public GestionBoisson() {
		// TODO Auto-generated constructor stub
	}
	
	public static void saveBoisson(Boisson b) {

		session.beginTransaction();
		session.save(b);
		session.getTransaction().commit();
	}
	

	

}
