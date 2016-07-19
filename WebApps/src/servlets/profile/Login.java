package servlets.profile;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ConnectionFactory.UsersDAO;
import ConnectionFactory.UsersDAOImpl;
import model.User;

@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Login() {
		super();
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		RequestDispatcher disp;
		String username = request.getParameter("txtUserName");
		String password = request.getParameter("txtPassword");

		UsersDAO userDAO = new UsersDAOImpl();
		User user = userDAO.loginUser(username, password);
		/* user Login */

		if (user != null) {
			/* Hold session */
			HttpSession session = request.getSession();
			session.setAttribute("id", user.getId());
			session.setAttribute("username", user.getUsername());
			session.setAttribute("password", user.getPassword());
			session.setAttribute("first_name", user.getFirstName());
			session.setAttribute("last_name", user.getLastName());
			session.setAttribute("email", user.getEmail());
			session.setAttribute("phone", user.getPhone());
			session.setAttribute("address", user.getAddress());
			session.setAttribute("role", user.getRole());
			session.setAttribute("city", user.getCity());
			session.setAttribute("afm", user.getAfm());
			session.setAttribute("zip", user.getZip());
			session.setAttribute("password", user.getPassword());

			if (user.getActive() == false) {
				disp = getServletContext().getRequestDispatcher("/need_approve.jsp");
				disp.forward(request, response);
				// response.sendRedirect("http://localhost:8080/WebApps/need_approve.jsp");
			} else {
				disp = getServletContext().getRequestDispatcher("/index.jsp");
				disp.forward(request, response);
				// response.sendRedirect("http://localhost:8080/WebApps");
			}
			/* user do not login */
		} else {
			disp = getServletContext().getRequestDispatcher("/login.jsp");
			disp.forward(request, response);
		}

	}

}
