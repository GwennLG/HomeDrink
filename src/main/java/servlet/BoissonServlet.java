package servlet;

import java.util.List;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Enum.Origine;
import Gestion.GestionBoisson;
import Gestion.GestionCoffret;
import Gestion.GestionUser;
import bean.Biere;
import bean.Boisson;
import bean.Cocktail;
import bean.Coffret;
import bean.SansAlcool;
import bean.Shooter;
import bean.User;
import bean.Vins_Spiritueux;

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
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		/*
		 * Bieres
		 */
		// Instance de nos bières
		Biere guinness = new Biere(6, 50, "Guinness", "Stout", 4.2, true, Origine.IRLANDE);
		Biere laBete = new Biere(6.5, 50, "La Bete", "Ambrée", 8, true, Origine.FRANCE);
		Biere kilkenny = new Biere(6, 50, "Kilkenny", "Rousse", 5, true, Origine.IRLANDE);
		Biere murphy = new Biere(7, 50, "Murphy's", "Stout", 7, true, Origine.IRLANDE);

		/*
		 * Softs
		 */
		// Instance des softs
		SansAlcool eauGazeuse = new SansAlcool(2, 50, "Eau gazeuse", "Soft pour Mojito", true);
		SansAlcool tonic = new SansAlcool(2, 50, "Tonic", "Soft pour tequila shot", true);
		SansAlcool jusOrange = new SansAlcool(3, 33, "Jus d'Orange", "Jus Orange pressé 100% pur jus", false);
		SansAlcool jusPomme = new SansAlcool(3, 33, "Jus de Pomme", "Jus pomme pressé 100% pur jus", false);
		SansAlcool cocaCola = new SansAlcool(2.5, 33, "Coca-Cola", "Coca", true);
		SansAlcool siropGrenadine = new SansAlcool(0, 0, "Sirop Grenadine", "Soft pour Cocktails", false);
		SansAlcool siropCaramel = new SansAlcool(0, 0, "Sirop Caramel", "Soft pour Cocktails", false);

		/*
		 * Vins
		 */
		// Instance des Vins
		Vins_Spiritueux brouilly = new Vins_Spiritueux(9, 75, "Brouilly", "Rouge de caractère", 14,
				Origine.FRANCE_BEAUJOLAIS);
		Vins_Spiritueux chardonnay = new Vins_Spiritueux(10, 75, "Chardonnay", "Blanc sec", 18,
				Origine.FRANCE_LANGUEDOC);
		Vins_Spiritueux muscadet = new Vins_Spiritueux(8, 75, "Muscadet", "Blanc sec", 15, Origine.FRANCE_LOIRE);
		Vins_Spiritueux anjou = new Vins_Spiritueux(8, 75, "Carbernet d'Anjou", "Rosé parfait pour l'été", 11,
				Origine.FRANCE_ANJOU);

		/*
		 * Spiritueux
		 */
		// Instance des Spiritueux
		Vins_Spiritueux baileys = new Vins_Spiritueux(15.99, 70, "Bailey's", "Liqueur & Creme de café", 17,
				Origine.IRLANDE);
		Vins_Spiritueux vodka = new Vins_Spiritueux(25, 100, "Absolut Vodka", "Vodka", 40, Origine.RUSSIE);
		Vins_Spiritueux kahlua = new Vins_Spiritueux(20, 70, "Kahlúa", "Liqueur de café", 25, Origine.MEXIQUE);
		Vins_Spiritueux tequila = new Vins_Spiritueux(15, 70, "Tequila", "Alcool de pomme de terre", 35,
				Origine.MEXIQUE);
		Vins_Spiritueux cointreau = new Vins_Spiritueux(15, 70, "Cointreau", "Liqueur écorces d'orange", 40,
				Origine.FRANCE);
		Vins_Spiritueux gin = new Vins_Spiritueux(35, 70, "Gin", "Baies de Genevrier", 45, Origine.ITALIE);
		Vins_Spiritueux amaretto = new Vins_Spiritueux(35, 70, "Amaretto", "Amandes amères", 28, Origine.PAYS_BAS);

		/*
		 * Cocktails
		 */
		// Instance des Cocktails
		Cocktail pinaColada = new Cocktail(8, 35, "Piña Colada",
				"Rhume, jus d'ananas et lait de coco.. Direction Soleil", true);
		Cocktail pinaColadaSoft = new Cocktail(8, 35, " Virgin Piña Colada",
				"Jus d'ananas et lait de coco.. Direction Soleil", false);
		Cocktail mojito = new Cocktail(8, 35, "Mojito", "Rhume, soda, citron vert et menthe", true);
		Cocktail mojitoSoft = new Cocktail(8, 35, "Virgin Mojito", "Soda, citron vert et menthe", false);
		Cocktail cosmo = new Cocktail(8, 35, "Cosmopolitan", "Vodka, Triple sec, jus de cramberry et de citron", true);
		Cocktail cosmoSoft = new Cocktail(8, 35, "Virgin Cosmopolitan", "Jus de cramberry et de citron", false);
		Cocktail SexAndTheBeach = new Cocktail(8, 35, "Sex And The Beach",
				"Vodka, liqueur de pêche, jus d'ananas et de cramberry ", true);
		Cocktail SexAndTheBeachSoft = new Cocktail(8, 35, "Virgin Sex And The Beach", "Jus d'ananas et de cramberry ",
				false);

		/*
		 * Shooters
		 */
		// Instance des Shooter
		List<Boisson> listeAlcool = new ArrayList<Boisson>();
		listeAlcool.add(baileys);
		listeAlcool.add(kahlua);
		Shooter babyGuiness = new Shooter(3.5, 10, "Baby Guiness", "Bailey's et Kahlua", 2, listeAlcool);

		List<Boisson> listeAlcool_1 = new ArrayList<Boisson>();
		listeAlcool_1.add(baileys);
		listeAlcool_1.add(kahlua);
		listeAlcool_1.add(cointreau);
		Shooter B52 = new Shooter(3.5, 10, "B52", "Bailey's, Kahlua et Cointreau", 3, listeAlcool_1);

		List<Boisson> listeAlcool_2 = new ArrayList<Boisson>();
		listeAlcool_2.add(tequila);
		listeAlcool_2.add(tonic);
		Shooter tequilaShot = new Shooter(3.5, 10, "Tequila Shot", "Tequila et Schwepps", 1, listeAlcool_2);

		List<Boisson> listeAlcool_3 = new ArrayList<Boisson>();
		listeAlcool_3.add(vodka);
		listeAlcool_3.add(siropCaramel);
		Shooter VodkaCaramel = new Shooter(3.5, 10, "Caramel Shot", "Vodka et Caramel", 1, listeAlcool_3);

		List<Boisson> listeAlcool_4 = new ArrayList<Boisson>();
		listeAlcool_4.add(vodka);
		listeAlcool_4.add(tequila);
		listeAlcool_4.add(gin);
		Shooter tgv = new Shooter(3.5, 10, "T.G.V", "Tequila, Gin,Vodka", 3, listeAlcool_4);

		List<Boisson> listeAlcool_5 = new ArrayList<Boisson>();
		listeAlcool_5.add(baileys);
		listeAlcool_5.add(kahlua);
		listeAlcool_5.add(amaretto);
		Shooter orgasm = new Shooter(3.5, 10, "Orgasm", "Bailey's, Kahlua et Amaretto", 3, listeAlcool_5);

		/*
		 * Utilisateurs
		 */
		// Instance des users
		List<Boisson> favoriBoissonG = new ArrayList<Boisson>();
		User gwen = new User("Le Galludec", "Gwenola", "gwenola.legalludec@gmail.com", "HomeDrink", "Nantes",
				"8 impasse de la soif", 44000, 0, favoriBoissonG);

		List<Boisson> favoriBoissonK = new ArrayList<Boisson>();
		User kevin = new User("Vand", "Kevin", "kevin.vandercamer@gmail.com", "Carotte", "Nantes",
				"8 impasse de la soif", 44000, 0, favoriBoissonK);

		List<Boisson> favoriBoissonA = new ArrayList<Boisson>();
		User pierrick = new User("Angot", "Pierrick", "pierrick.angot@gmail.com", "Purple", "Nantes",
				"8 impasse de la soif", 44000, 0, favoriBoissonA);

		List<Boisson> favoriBoissonB = new ArrayList<Boisson>();
		User lea = new User("Bouvier", "Léa", "lea.bouvier974@gmail.com", "Blondie", "Nantes", "6 rue de la juiverie",
				44000, 0, favoriBoissonB);

		/*
		 * Coffrets
		 */
		// Instance des coffrets
		List<Boisson> coffret1 = new ArrayList<Boisson>();
		coffret1.add(guinness);
		coffret1.add(guinness);
		coffret1.add(kilkenny);
		coffret1.add(baileys);
		Coffret coffret_1 = new Coffret("Irlande Time", "Guiness, Kilkenny et Bailey's", 35, 4, coffret1);

		List<Boisson> coffret2 = new ArrayList<Boisson>();
		coffret2.add(brouilly);
		coffret2.add(chardonnay);
		coffret2.add(cocaCola);
		Coffret coffret_2 = new Coffret("Apéro au vins", "Rouge, Blanc et Noir", 25, 3, coffret2);

		List<Boisson> coffret3 = new ArrayList<Boisson>();
		coffret3.add(baileys);
		coffret3.add(kahlua);
		coffret3.add(kilkenny);
		coffret3.add(guinness);
		coffret3.add(laBete);
		coffret3.add(murphy);
		coffret3.add(kilkenny);
		coffret3.add(murphy);
		coffret3.add(jusPomme);
		Coffret coffret_3 = new Coffret("Irlande Time",
				"Bailey's, Kahlua et une pack de 6 bières mais nous avons aussi pensé aux Sam de la soirée", 77, 4,
				coffret3);
		
		/*
		 *   Sauvegarder les instanciations dans la BDD pour les boissons
		 */
		// Vin Spiritueux
//		GestionBoisson.saveBoisson(kahlua);
		GestionBoisson.saveBoisson(baileys);
		GestionBoisson.saveBoisson(brouilly);
		GestionBoisson.saveBoisson(amaretto);
		GestionBoisson.saveBoisson(gin);
		GestionBoisson.saveBoisson(cointreau);
		GestionBoisson.saveBoisson(tequila);
		GestionBoisson.saveBoisson(vodka);
		GestionBoisson.saveBoisson(anjou);
		GestionBoisson.saveBoisson(muscadet);
		GestionBoisson.saveBoisson(chardonnay);
		
		// Biere
		GestionBoisson.saveBoisson(laBete);
		GestionBoisson.saveBoisson(kilkenny);
		GestionBoisson.saveBoisson(guinness);
		GestionBoisson.saveBoisson(murphy);
		
		
		// Shooter
		GestionBoisson.saveBoisson(B52);
		GestionBoisson.saveBoisson(tequilaShot);
		GestionBoisson.saveBoisson(babyGuiness);
		GestionBoisson.saveBoisson(orgasm);
		GestionBoisson.saveBoisson(tgv);
		GestionBoisson.saveBoisson(VodkaCaramel);
		
		// Cocktails
		GestionBoisson.saveBoisson(SexAndTheBeachSoft);
		GestionBoisson.saveBoisson(SexAndTheBeach);
		GestionBoisson.saveBoisson(cosmoSoft);
		GestionBoisson.saveBoisson(cosmo);
		GestionBoisson.saveBoisson(mojitoSoft);
		GestionBoisson.saveBoisson(mojito);
		GestionBoisson.saveBoisson(pinaColadaSoft);
		GestionBoisson.saveBoisson(pinaColada);

		// Softs
		GestionBoisson.saveBoisson(siropCaramel);
		GestionBoisson.saveBoisson(siropGrenadine);
		GestionBoisson.saveBoisson(cocaCola);
		GestionBoisson.saveBoisson(jusPomme);
		GestionBoisson.saveBoisson(jusOrange);
		GestionBoisson.saveBoisson(tonic);
		GestionBoisson.saveBoisson(eauGazeuse);

		
		/*
		 *   Sauvegarder les instanciations dans la BDD pour les utilisateurs
		 */
		GestionUser.saveMember(lea);
		GestionUser.saveMember(pierrick);
		GestionUser.saveMember(kevin);
		GestionUser.saveMember(gwen);
		
		
		/*
		 *   Sauvegarder les instaciations dans la BDD pour Coffrets
		 */
		GestionCoffret.saveCoffret(coffret_1);
		GestionCoffret.saveCoffret(coffret_2);
		GestionCoffret.saveCoffret(coffret_3);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
