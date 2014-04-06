package servlety;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Wyniki")
public class Wyniki extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");

		PrintWriter out = response.getWriter();

		String selectedHobby = "";
		for (String hobby : request.getParameterValues("hobby")) {
			selectedHobby += hobby + " ";
		}

		out.println("<html><body><h2>Twoje dane: </h2>" + "<p>Nazywasz sie "
				+ request.getParameter("imie") + "<br />" + "<p>Lubisz: "
				+ selectedHobby + "<br />" + "Ostatnio wybrales: "
				+ request.getSession().getAttribute("twojeHobby") + "<br />"
				+ "<a href=\"index.jsp\">Strona glowna</a>" + "</body></html>");

		request.getSession().setAttribute("twojeHobby", selectedHobby);

		out.close();
	}
}
