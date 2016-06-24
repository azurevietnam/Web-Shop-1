package unmarsalling;

import java.io.FileReader;
import java.math.BigDecimal;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.util.ArrayList;
import java.util.List;

import javax.xml.bind.JAXBContext;
import javax.xml.bind.Unmarshaller;

import model.Auction;
import model.Category;

public class Unmarshal {

	public static void main(String args[]) throws Exception {
		JAXBContext context = JAXBContext.newInstance(Items.class);
		Unmarshaller unmarshaller = context.createUnmarshaller();
		Items items = (Items) unmarshaller.unmarshal(new FileReader("./../ebay-data/items-0.xml"));
		
		Auction auction = new Auction();
		List<Item> itemList = items.getItems();
		DecimalFormatSymbols symbols = new DecimalFormatSymbols();
		symbols.setDecimalSeparator('.');
		String pattern = "##0.0#";
		DecimalFormat decimalFormat = new DecimalFormat(pattern, symbols);
		decimalFormat.setParseBigDecimal(true);
		String tempStr;
		List<String> listCategory = new ArrayList<String>();
		
		if (!itemList.isEmpty()) {
			for (Object object : itemList) {
				Item item = (Item) object;

				auction.setName(item.getName());

				auction.setId(item.getId());

				if (item.getFirst_Bid() != null) {
					tempStr = item.getFirst_Bid().replace("$", "");
					BigDecimal firstBid = (BigDecimal) decimalFormat.parse(tempStr);
					auction.setFirst_Bid(firstBid);
				}

				if (item.getBuy_Price() != null) {
					tempStr = item.getBuy_Price().replace("$", "");
					BigDecimal buyPrice = (BigDecimal) decimalFormat.parse(tempStr);
					auction.setBuy_Price(buyPrice);
				}

				if (item.getCurrently() != null) {
					tempStr = item.getCurrently().replace("$", "");
					BigDecimal courrently = (BigDecimal) decimalFormat.parse(tempStr);
					auction.setCurrently(courrently);
				}

				auction.setDescription(item.getDescription());

				if (item.getLocation().getLatitude() != null) {
					auction.setLatitude(item.getLocation().getLatitude());
				}

				if (item.getLocation().getLongitude() != null) {
					auction.setLongitude(item.getLocation().getLongitude());
				}

				auction.setLocation(item.getLocation().getLocation());
				auction.setNumberOfBinds(item.getNumberOfBinds());
				auction.setStarted(auction.getStarted());
				
				listCategory = item.getCategory();
				List<Category> category_init = null;
				auction.setCategories(category_init);
				Category[] categories = new Category[listCategory.size()];
				int i=0;
				for(Object obj1 : listCategory){
					String category = (String) obj1;
					categories[i] = new Category();
					categories[i].setName(category);
					categories[i].setAuction(auction);
					auction.addCategory(categories[i]);
					i++;
				}

			}
		}
		// System.out.println(items);

	}
}
