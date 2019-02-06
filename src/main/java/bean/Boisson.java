package bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.Table;

@Entity
@Inheritance(strategy = InheritanceType.JOINED)
@Table(name="BOISSON")
public abstract class Boisson {

	@Column(name="PRIX")
	protected double prix;
	
	@Id @GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="ID")
	protected int id;
	
	@Column(name="QUANTITE")
	protected int quantite;
	
	@Column(name="NOM")
	protected String nom;
	
	@Column(name="DESCRIPTION")
	String description;
	
	public Boisson() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "Boisson [prix=" + prix + ", id=" + id + ", quantite=" + quantite + ", nom=" + nom + ", description="
				+ description + "]";
	}

	public Boisson(double prix, int quantite, String nom, String description) {
		this.prix = prix;
		this.quantite = quantite;
		this.nom = nom;
		this.description = description;
	}

	public double getPrix() {
		return prix;
	}

	public void setPrix(double prix) {
		this.prix = prix;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getQuantite() {
		return quantite;
	}

	public void setQuantite(int quantite) {
		this.quantite = quantite;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	
	
	
	

}
