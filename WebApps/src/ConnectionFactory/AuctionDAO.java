package ConnectionFactory;

import model.Auction;

public interface AuctionDAO {
	public void createAuction(Auction auction);
	public void searchAuction(String categories);
}
