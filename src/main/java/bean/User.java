package bean;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="MEMBRES")
public class User {

	@Id @GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="ID")
	int id;
	
	@Column(name="NOM")
	String nom;
	
	@Column(name="PRENOM")
	String prenom;

	@Column(name="MAIL", unique = true)
	String mail;
	
	@Column(name="MOT_DE_PASSE", unique = true)
	String motDePasse;
	
	@Column(name="VILLE")
	String ville;
	
	@Column(name="ADRESSE")
	String adresse;
	
	@Column(name="ZIP")
	int zip;
		
	@Column(name="FIDELITE")
	int fidelite;
	
	@Column(name="FAVORI_BOISSON")
	@OneToMany
	List<Boisson> favoriBoisson;


	
	@Override
	public String toString() {
		return "User [id=" + id + ", nom=" + nom + ", prenom=" + prenom + ", mail=" + mail + ", motDePasse="
				+ motDePasse + ", ville=" + ville + ", adresse=" + adresse + ", zip=" + zip + ", fidelite=" + fidelite + ", favoriBoisson=" + favoriBoisson + "]";
	}


	public User(String nom, String prenom, String mail, String motDePasse, String ville, String adresse,
			int zip, int fidelite, List<Boisson> favoriBoisson) {
		super();
		this.nom = nom;
		this.prenom = prenom;
		this.mail = mail;
		this.motDePasse = motDePasse;
		this.ville = ville;
		this.adresse = adresse;
		this.zip = zip;
		this.fidelite = fidelite;
		this.favoriBoisson = favoriBoisson;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getNom() {
		return nom;
	}


	public void setNom(String nom) {
		this.nom = nom;
	}


	public String getPrenom() {
		return prenom;
	}


	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}


	public String getMail() {
		return mail;
	}


	public void setMail(String mail) {
		this.mail = mail;
	}


	public String getMotDePasse() {
		return motDePasse;
	}


	public void setMotDePasse(String motDePasse) {
		this.motDePasse = motDePasse;
	}


	public String getVille() {
		return ville;
	}


	public void setVille(String ville) {
		this.ville = ville;
	}


	public String getAdresse() {
		return adresse;
	}


	public void setAdresse(String adresse) {
		this.adresse = adresse;
	}


	public int getZip() {
		return zip;
	}


	public void setZip(int zip) {
		this.zip = zip;
	}


	public int getFidelite() {
		return fidelite;
	}


	public void setFidelite(int fidelite) {
		this.fidelite = fidelite;
	}


	public List<Boisson> getFavoriBoisson() {
		return favoriBoisson;
	}


	public void setFavoriBoisson(List<Boisson> favoriBoisson) {
		this.favoriBoisson = favoriBoisson;
	}
	
	
	
	
}
