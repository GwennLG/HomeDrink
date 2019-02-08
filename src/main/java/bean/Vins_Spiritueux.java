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
@Table(name="VINS_SPIRITUEUX")
public class Vins_Spiritueux extends Boisson {


	@Column(name="DEGRE")
	int degre;
	
	@Column(name="ORIGINE")
	Enum<Origine> origine;

	public Vins_Spiritueux(double prix, int quantite, String nom, String description, int degre, Enum<Origine> origine) {
		super(prix, quantite, nom, description);
		this.degre = degre;
		this.origine = origine;
	}

	@Override
	public String toString() {
		return "Vins_Spiritueux [degre=" + degre + "]";
	}

	public int getDegre() {
		return degre;
	}

	public void setDegre(int degre) {
		this.degre = degre;
	}

	
	
}
