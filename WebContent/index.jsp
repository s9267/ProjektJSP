<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-2"
    pageEncoding="ISO-8859-2"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-2">
<title>Strona glowna</title>
</head>
<body>
        <h2>Projekt z JavaServerPages</h2>
        <%
        out.println("Dzisiaj jest: " + new Date());
        %>
        <p><a href="Formularz">Wypelnij formularz</a></p>
        <p><a href="pobierzOsobe.jsp">Dodaj osobe</a></p>
      <%
        
		Cookie ostatniaWizyta = null;
		for (Cookie c : request.getCookies())
			if (c.getName().equals("obecnosc")) {
				ostatniaWizyta = c;
				break;
			}
		if (ostatniaWizyta != null)
			out.println("Twoja ostatnia wizyta na stronie miala miejsce w dniu "
					+ ostatniaWizyta.getValue());
		else
			out.println("Do tej pory nie odwiedziles naszej glownej strony.");
		ostatniaWizyta = new Cookie("obecnosc", new Date().toString());
		response.addCookie(ostatniaWizyta);
        %>   
</body>
</html>