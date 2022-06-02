package metier.entities;


import java.util.Date;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name = "categorie")
public class Categorie {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)

	private Long idCategorie ;
	
	@Column(name = "NOMCAT") 
	private String nomCategorie ;
	
	@Temporal(TemporalType.DATE)
	@Column(name = "DATECREATION")
	private Date dateCreation ;
	
	
	@OneToMany(mappedBy = "categorie")
	private List<Produit> produits ;
	
	public Categorie() {
		super();
	}


	public Categorie(String nomCategorie, Date dateCreation) {
		super();
		this.nomCategorie = nomCategorie;
		this.dateCreation = dateCreation;
	}


	public Long getIdCategorie() {
		return idCategorie;
	}


	public void setIdCategorie(Long idCategorie) {
		this.idCategorie = idCategorie;
	}


	public String getNomCategorie() {
		return nomCategorie;
	}


	public void setNomCategorie(String nomCategorie) {
		this.nomCategorie = nomCategorie;
	}


	public Date getDateCreation() {
		return dateCreation;
	}


	public void setDateCreation(Date dateCreation) {
		this.dateCreation = dateCreation;
	}
	
	
	public List<Produit> getProduits() {
		return produits;
	}


	public void setProduits(List<Produit> produits) {
		this.produits = produits;
	}


	@Override
	public String toString() {
		return "Categorie [idCategorie=" + idCategorie + ", nomCategorie=" + nomCategorie + ", dateCreation="
				+ dateCreation + "]";
	}
	
	
	
}
