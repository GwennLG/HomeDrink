package bean;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;


@Entity
@PrimaryKeyJoinColumn(name="ID")
@Table(name="SHOOTER")
public class Shooter extends Boisson {

	@Column(name="NBR_ALCOOL")
	int nbrAlccol;
	
	@Column(name="LISTE_ALCOOL")
	@OneToMany
	List<Vins_Spiritueux> listeAlcool;
	
	
	
	
	
}
