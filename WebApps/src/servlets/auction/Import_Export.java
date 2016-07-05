package servlets.auction;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import unmarsalling.Unmarshal;
import unmarsalling.UnmarshalCategories;

@WebServlet("/Import_Export")
public class Import_Export extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public Import_Export() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher disp;
		String fImport = request.getParameter("Import");
		String fExport = request.getParameter("Export");
		if(!fImport.equals("")){
			Unmarshal unmarshal = new Unmarshal();
			unmarshal.setFile(fImport);
			try {
				unmarshal.UnmarshalXml();
			} catch (Exception e) {
				e.printStackTrace();
				System.out.println(e);
			}
			
			UnmarshalCategories unmarshalCategories = new UnmarshalCategories();
			unmarshalCategories.setFile(fImport);
			try {
				unmarshalCategories.UnmarshalXml();
			} catch (Exception e) {
				e.printStackTrace();
				System.out.println(e);
			}
			disp = getServletContext().getRequestDispatcher("/index.jsp");
			disp.forward(request, response);
		}
		
		if(!fExport.equals("")){
		
		}
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
