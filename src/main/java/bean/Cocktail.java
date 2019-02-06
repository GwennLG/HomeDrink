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
@Table(name="COCKTAIL")
public class Cocktail extends Boisson {
	
	@Column(name="ALCOOL")
	boolean alcool;

	@Override
	public String toString() {
		return "Cocktail [alcool=" + alcool + "]";
	}

	public Cocktail(boolean alcool) {
		super();
		this.alcool = alcool;
	}

	public boolean isAlcool() {
		return alcool;
	}

	public void setAlcool(boolean alcool) {
		this.alcool = alcool;
	}

	

	
}
