package servlety;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Formularz")
public class Formularz extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");

		out.println("<html><body><h2>Prosty servlet</h2>"
				+ "<form action='Wyniki'>"
				+ "Podaj imie: <input type='text' name='imie' /> <br />"
				+ "<b>Co lubisz robic? </b> <br />"
				+ "<input type='checkbox' name='hobby' value='rower'>Jezdzic na rowerze<br />"
				+ "<input type='checkbox' name='hobby' value='telewizje'>Ogladac telewizje<br />"
				+ "<input type='checkbox' name='hobby' value='piwko'>Wyjsc z kolegami na piwo<br />"
				+ "<input type='checkbox' name='hobby' value='ksiazki'>Czytac ksiazki<br />"
				+ "<input type='submit' value=' OK ' />" + "</form>"
				+ "</body></html>");

		out.close();
	}

}
