<%@page import="klasy.Osoba"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Pokaz liste osob dodanych</title>
</head>
<body>

	<jsp:useBean id="listaOsob" class="klasy.ListaOsob" scope="application" />
	<%
		for (Osoba osoba : listaOsob.getOsoby()) {
			out.println("<p>Imie: " + osoba.getImie() + "; Nazwisko: "
					+ osoba.getNazwisko() + "; Rok urodzenia: "
					+ osoba.getRok() + "; Zawod: " + osoba.getZawod()
					+ "; Miasto: " + osoba.getMiasto() + "</p>");
		}
	%>
	<p>
		<a href="pobierzOsobe.jsp">Dodaj kolejna osobe do listy</a>
	</p>
	<p>
		<a href="index.jsp">Wroc do strony glownej</a>
	</p>

</body>
</html>