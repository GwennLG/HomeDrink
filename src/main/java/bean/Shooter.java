package bean;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;


@Entity
@PrimaryKeyJoinColumn(name="ID")
@Table(name="SHOOTER")
public class Shooter extends Boisson {

	@Column(name="NBR_ALCOOL")
	int nbrAlcool;
	
	@Column(name="LISTE_BOISSON")
	@ManyToMany(cascade = CascadeType.ALL)
	List<Boisson> listeBoisson;
	
	

	@Override
	public String toString() {
		return "Shooter [nbrAlcool=" + nbrAlcool + ", listeBoisson=" + listeBoisson + "]";
	}

	public Shooter(double prix, int quantite, String nom, String description, int nbrAlcool, List<Boisson> listeBoisson) {
		super(prix, quantite, nom, description);
		this.nbrAlcool = nbrAlcool;
		this.listeBoisson = listeBoisson;
	}

	public int getNbrAlcool() {
		return nbrAlcool;
	}

	public void setNbrAlcool(int nbrAlcool) {
		this.nbrAlcool = nbrAlcool;
	}

	public List<Boisson> getListeAlcool() {
		return listeBoisson;
	}

	public void setListeAlcool(List<Boisson> listeBoisson) {
		this.listeBoisson = listeBoisson;
	}
	
	
	
	
	
}
