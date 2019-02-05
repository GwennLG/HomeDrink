package bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="COFFRET")
public class Coffret {

	@Column(name="NOM")
	String nom;
	
	@Column(name="DESCRIPTIONS")
	String descriptions;
	
	@Column(name="PRIX")
	int prix;

	@Id @GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="ID")
	int id;
	
	@Column(name="QUANTITE_BOUTEILLE")
	int quantit�Bouteille;

	public Coffret(String nom, String descriptions, int prix, int id, int quantit�Bouteille) {
		super();
		this.nom = nom;
		this.descriptions = descriptions;
		this.prix = prix;
		this.id = id;
		this.quantit�Bouteille = quantit�Bouteille;
	}

	@Override
	public String toString() {
		return "Coffret [nom=" + nom + ", descriptions=" + descriptions + ", prix=" + prix + ", id=" + id
				+ ", quantit�Bouteille=" + quantit�Bouteille + "]";
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

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getQuantit�Bouteille() {
		return quantit�Bouteille;
	}

	public void setQuantit�Bouteille(int quantit�Bouteille) {
		this.quantit�Bouteille = quantit�Bouteille;
	}
	
	
}