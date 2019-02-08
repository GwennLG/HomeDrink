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
@Table(name="SANS_ALCOOL")
public class SansAlcool extends Boisson {
	
	
	@Column(name="PETILLANT")
	boolean petillant;

	
	@Override
	public String toString() {
		return "SansAlcool [petillant=" + petillant + "]";
	}

	public SansAlcool(double prix, int quantite, String nom, String description, boolean petillant) {
		super(prix, quantite, nom, description);
		this.petillant = petillant;
	}

	public boolean isPetillant() {
		return petillant;
	}

	public void setPetillant(boolean petillant) {
		this.petillant = petillant;
	}


	
}
