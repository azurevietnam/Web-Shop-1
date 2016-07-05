package servlets.auction;

import java.util.List;
import java.io.IOException;
import java.math.BigDecimal;
import java.nio.charset.StandardCharsets;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ConnectionFactory.AuctionDAO;
import ConnectionFactory.AuctionDAOImpl;
import ConnectionFactory.UsersDAO;
import ConnectionFactory.UsersDAOImpl;
import model.Auction;
import model.Category;
import model.Photo;
import model.User;

@WebServlet("/CreateAuction")
public class CreateAuction extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Auction auction;

	public CreateAuction() {
		auction = new Auction();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher disp;

		HttpSession session = request.getSession();

		UsersDAO userDAO = new UsersDAOImpl();
		String username = (String) session.getAttribute("username");
		String password = (String) session.getAttribute("password");
		User user = userDAO.loginUser(username, password);
		String page = request.getParameter("createAuction");

		if (page.equals("page1")) {
			String name = request.getParameter("Name");
			String categoryPath = request.getParameter("Categories");
			String[] category = categoryPath.split("->");
			String location = request.getParameter("Location");
			String country = request.getParameter("Country");
			String description = request.getParameter("Description");
			String latitude = request.getParameter("Latitude");
			String longitude = request.getParameter("Longitude");
			Date started = new Date();
			
			Category[] categories = new Category[category.length];
			List<Category> listCategory = new ArrayList<Category>();
			for(int i=0; i<category.length; i++){
				categories[0].setGrade(i+1);
				categories[0].setName(category[0]);
				categories[0].setAuction(auction);
				listCategory.add(categories[0]);
			}
			auction.setCategories(listCategory);
			auction.setUser(user);
			auction.setStarted(started);
			auction.setName(name);
			auction.setLocation(location);
			auction.setCountry(country);
			auction.setDescription(description);
			if (latitude != "") {
				auction.setLatitude(latitude);
			}
			if (longitude != "") {
				auction.setLongitude(longitude);
			}

			disp = getServletContext().getRequestDispatcher("/auction_import_2.jsp");
			disp.forward(request, response);
		} else if (page.equals("page2")) {
			DecimalFormatSymbols symbols = new DecimalFormatSymbols();
			symbols.setDecimalSeparator('.');
			String pattern = "##0.0#";
			DecimalFormat decimalFormat = new DecimalFormat(pattern, symbols);
			decimalFormat.setParseBigDecimal(true);

			BigDecimal buy_price = BigDecimal.ZERO;
			BigDecimal first_bid = BigDecimal.ZERO;
			try {
				buy_price = (BigDecimal) decimalFormat.parse(request.getParameter("Buy_Price"));
				first_bid = (BigDecimal) decimalFormat.parse(request.getParameter("First_Bid"));
			} catch (ParseException e) {
				e.printStackTrace();
			}

			auction.setBuy_Price(buy_price);
			auction.setFirst_Bid(first_bid);

			String pht = request.getParameter("Photo");
			byte[] png = pht.getBytes(StandardCharsets.UTF_8);
			int num_photo = Integer.parseInt(request.getParameter("SumPhoto"));

			Photo[] photo = new Photo[num_photo + 1];

			photo[0] = new Photo();
			photo[0].setPhoto(png);
			photo[0].setAuction(auction);

			List<Photo> listPhoto = new ArrayList<Photo>();
			listPhoto.add(photo[0]);
			auction.setPhotos(listPhoto);

			for (int i = 1; i < num_photo+1; i++) {
				pht = request.getParameter("Photo"+i);
				png = pht.getBytes(StandardCharsets.UTF_8);
				photo[i] = new Photo();
				photo[i].setPhoto(png);
				photo[i].setAuction(auction);
				auction.addPhoto(photo[i]);
			}
		}
		AuctionDAO auctionDAO = new AuctionDAOImpl();
		auctionDAO.createAuction(auction);

		disp = getServletContext().getRequestDispatcher("/index.jsp");

		disp.forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
