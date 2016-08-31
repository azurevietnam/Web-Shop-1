package model;

import java.io.Serializable;
import javax.persistence.*;
import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

/**
 * The persistent class for the auction database table.
 * 
 */
@Entity
@NamedQueries(value = { @NamedQuery(name = "Auction.findAll", query = "SELECT a FROM Auction a"),
		@NamedQuery(name = "Auction.search", query = "SELECT a FROM Auction a WHERE a.categories = ?1") })
public class Auction implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	private BigDecimal buy_Price;

	private String country;

	private BigDecimal currently;

	@Lob
	private String description;

	@Temporal(TemporalType.TIMESTAMP)
	private Date ends;

	private BigDecimal first_Bid;

	private String latitude;

	private String location;

	private String longitude;

	private String name;

	@Column(name = "number_of_binds")
	private int numberOfBinds;

	@Column(name = "seller_users_id")
	private int sellerUsersId;

	@Temporal(TemporalType.TIMESTAMP)
	private Date started;

	// bi-directional many-to-one association to User
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "users_id")
	private User user;

	// bi-directional many-to-one association to Bid
	@OneToMany(mappedBy = "auction", cascade = CascadeType.ALL)
	private List<Bid> bids;

	// bi-directional many-to-one association to Category
	@OneToMany(mappedBy = "auction", cascade = CascadeType.PERSIST)
	private List<Category> categories;

	// bi-directional many-to-one association to Photo
	@OneToMany(mappedBy = "auction")
	private List<Photo> photos;

	public Auction() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public BigDecimal getBuy_Price() {
		return this.buy_Price;
	}

	public void setBuy_Price(BigDecimal buy_Price) {
		this.buy_Price = buy_Price;
	}

	public String getCountry() {
		return this.country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public BigDecimal getCurrently() {
		return this.currently;
	}

	public void setCurrently(BigDecimal currently) {
		this.currently = currently;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Date getEnds() {
		return this.ends;
	}

	public void setEnds(Date ends) {
		this.ends = ends;
	}

	public BigDecimal getFirst_Bid() {
		return this.first_Bid;
	}

	public void setFirst_Bid(BigDecimal first_Bid) {
		this.first_Bid = first_Bid;
	}

	public String getLatitude() {
		return this.latitude;
	}

	public void setLatitude(String latitude) {
		this.latitude = latitude;
	}

	public String getLocation() {
		return this.location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getLongitude() {
		return this.longitude;
	}

	public void setLongitude(String longitude) {
		this.longitude = longitude;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getNumberOfBinds() {
		return this.numberOfBinds;
	}

	public void setNumberOfBinds(int numberOfBinds) {
		this.numberOfBinds = numberOfBinds;
	}

	public int getSellerUsersId() {
		return this.sellerUsersId;
	}

	public void setSellerUsersId(int sellerUsersId) {
		this.sellerUsersId = sellerUsersId;
	}

	public Date getStarted() {
		return this.started;
	}

	public void setStarted(Date started) {
		this.started = started;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public List<Bid> getBids() {
		return this.bids;
	}

	public void setBids(List<Bid> bids) {
		this.bids = bids;
	}

	public Bid addBid(Bid bid) {
		getBids().add(bid);
		bid.setAuction(this);

		return bid;
	}

	public Bid removeBid(Bid bid) {
		getBids().remove(bid);
		bid.setAuction(null);

		return bid;
	}

	public List<Category> getCategories() {
		return this.categories;
	}

	public void setCategories(List<Category> categories) {
		this.categories = categories;
	}

	public Category addCategory(Category category) {
		getCategories().add(category);
		category.setAuction(this);

		return category;
	}

	public Category removeCategory(Category category) {
		getCategories().remove(category);
		category.setAuction(null);

		return category;
	}

	public List<Photo> getPhotos() {
		return this.photos;
	}

	public void setPhotos(List<Photo> photos) {
		this.photos = photos;
	}

	public Photo addPhoto(Photo photo) {
		getPhotos().add(photo);
		photo.setAuction(this);

		return photo;
	}

	public Photo removePhoto(Photo photo) {
		getPhotos().remove(photo);
		photo.setAuction(null);

		return photo;
	}

}