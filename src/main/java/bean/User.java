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
	
	@Column(name="ADRESSE")
	String adresse;
	
	@Column(name="CB")
	int cb;
	
	@Column(name="FIDELITE")
	int fidelite;
	
	@Column(name="FAVORI_BOISSON")
	@OneToMany
	List<Boisson> favoriBoisson;


	public User(int id, String nom, String mail, String adresse, int cb, int fidelite, List<Boisson> favoriBoisson) {
		super();
		this.id = id;
		this.nom = nom;
		this.mail = mail;
		this.adresse = adresse;
		this.cb = cb;
		this.fidelite = fidelite;
		this.favoriBoisson = favoriBoisson;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", nom=" + nom + ", mail=" + mail + ", adresse=" + adresse + ", cb=" + cb
				+ ", fidelite=" + fidelite + ", favoriBoisson=" + favoriBoisson + "]";
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

	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	public String getAdresse() {
		return adresse;
	}

	public void setAdresse(String adresse) {
		this.adresse = adresse;
	}

	public int getCb() {
		return cb;
	}

	public void setCb(int cb) {
		this.cb = cb;
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
