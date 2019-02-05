package bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="BIERE")
public class Biere {
	
	@Column(name="NOM")
	String nom;
	
	@Column(name="DESCRIPTIONS")
	String descriptions;
	
	@Column(name="PRIX")
	int prix;
	
	@Column(name="QUANTITE")
	int quantite;
	
	@Column(name="DEGRE")
	int degre;
	
	@Column(name="PRESSION")
	boolean pression;
	
	@Id @GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="ID")
	int id;

	public Biere(String nom, String descriptions, int prix, int quantite, int degre, boolean pression, int id) {
		super();
		this.nom = nom;
		this.descriptions = descriptions;
		this.prix = prix;
		this.quantite = quantite;
		this.degre = degre;
		this.pression = pression;
		this.id = id;
	}
	
	public Biere() {
		
	}

	@Override
	public String toString() {
		return "Biere [nom=" + nom + ", descriptions=" + descriptions + ", prix=" + prix + ", quantite=" + quantite
				+ ", degre=" + degre + ", pression=" + pression + ", id=" + id + "]";
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

	public int getDegre() {
		return degre;
	}

	public void setDegre(int degre) {
		this.degre = degre;
	}

	public boolean isPression() {
		return pression;
	}

	public void setPression(boolean pression) {
		this.pression = pression;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	
	

}
