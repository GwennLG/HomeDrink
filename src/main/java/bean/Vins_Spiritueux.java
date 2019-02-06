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
public class Vins_Spiritueux {


	@Column(name="DEGRE")
	int degre;

	public Vins_Spiritueux(int degre) {
		super();
		this.degre = degre;
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
