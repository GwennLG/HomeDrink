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

	public SansAlcool(boolean petillant) {
		super();
		this.petillant = petillant;
	}

	public boolean isPetillant() {
		return petillant;
	}

	public void setPetillant(boolean petillant) {
		this.petillant = petillant;
	}


	
}
