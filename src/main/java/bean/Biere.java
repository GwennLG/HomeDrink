package bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;


@Entity
@PrimaryKeyJoinColumn(name="ID")
@Table(name="BIERE")
public class Biere extends Boisson {
	
	@Column(name="DEGRE")
	double degre;
	
	@Column(name="PRESSION")
	boolean pression;
	
	@Column(name="ORIGINE")
	Enum<Origine> origine;

	@Override
	public String toString() {
		return "Biere [degre=" + degre + ", pression=" + pression + "]";
	}

	public Biere(double prix, int quantite, String nom, String description, double degre, boolean pression, Enum<Origine> origine) {
		super(prix, quantite, nom, description);
		this.degre = degre;
		this.pression = pression;
		this.origine = origine;
	}

	public double getDegre() {
		return degre;
	}

	public void setDegre(double degre) {
		this.degre = degre;
	}

	public boolean isPression() {
		return pression;
	}

	public void setPression(boolean pression) {
		this.pression = pression;
	}
	
	
	
	
	

}
