package ConnectionFactory;

import javax.persistence.EntityManager;

import JpaUtils.EntityManagerHelper;
import model.Auction;

public class AuctionDAOImpl implements AuctionDAO {

	@Override
	public void createAuction(Auction auction) {
		try {
			EntityManager em = EntityManagerHelper.getEntityManager();
			EntityManagerHelper.beginTransaction();
			em.persist(auction);
			EntityManagerHelper.commit();
		} catch (Exception e) {
			
			e.printStackTrace();
		} finally {
			EntityManagerHelper.closeEntityManager();
		}
	}
	
	@Override
	public void searchAuction(String categories){
		
		try{
			EntityManagerHelper.getEntityManager();
			EntityManagerHelper.beginTransaction();
			
			EntityManagerHelper.commit();
		}catch (Exception e){
			e.printStackTrace();
		}finally {
			EntityManagerHelper.closeEntityManager();
		}
	}
}
