package bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="SANS_ALCOOL")
public class SansAlcool {
	
	@Column(name="NOM")
	String nom;
	
	@Column(name="DESCRIPTIONS")
	String descriptions;
	
	@Column(name="PRIX")
	int prix;
	
	@Column(name="QUANTITE")
	int quantite;
	
	@Column(name="PETILLANT")
	boolean petillant;
	
	@Id @GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="ID")
	int id;

	public SansAlcool(String nom, String descriptions, int prix, int quantite, boolean petillant, int id) {
		super();
		this.nom = nom;
		this.descriptions = descriptions;
		this.prix = prix;
		this.quantite = quantite;
		this.petillant = petillant;
		this.id = id;
	}

	@Override
	public String toString() {
		return "SansAlcool [nom=" + nom + ", descriptions=" + descriptions + ", prix=" + prix + ", quantite=" + quantite
				+ ", petillant=" + petillant + ", id=" + id + "]";
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getDescriptions() {
		return descriptions;
	}

	public void setDescriptions(String descriptions) {
		this.descriptions = descriptions;
	}

	public int getPrix() {
		return prix;
	}

	public void setPrix(int prix) {
		this.prix = prix;
	}

	public int getQuantite() {
		return quantite;
	}

	public void setQuantite(int quantite) {
		this.quantite = quantite;
	}

	public boolean isPetillant() {
		return petillant;
	}

	public void setPetillant(boolean petillant) {
		this.petillant = petillant;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	
}
