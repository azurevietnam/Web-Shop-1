package model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the category database table.
 * 
 */
@Entity
@NamedQuery(name="Category.findAll", query="SELECT c FROM Category c")
public class Category implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int id; 
	
	@Column(name="Name")
	private String name;
	
	@Column(name="Category_Grade")
	private int grade;

	//bi-directional many-to-one association to Auction
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="auction_id")
	private Auction auction;

	public Category() {
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}


	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	
	public int getGrade() {
		return grade;
	}

	
	public void setGrade(int grade) {
		this.grade = grade;
	}

	public Auction getAuction() {
		return this.auction;
	}

	public void setAuction(Auction auction) {
		this.auction = auction;
	}

}