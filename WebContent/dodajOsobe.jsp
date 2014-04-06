<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Dodaj osobe</title>
</head>
<body>
	<jsp:useBean id="osoba" class="klasy.Osoba" scope="request" />

	<jsp:setProperty name="osoba" property="*" />
	<c:if test="${osoba.walidacja() == false}">
		<%
			response.sendRedirect("pobierzOsobe.jsp?error=true");
		%>
	</c:if>

	<jsp:useBean id="listaOsob" class="klasy.ListaOsob" scope="application" />
	<%
		listaOsob.dodaj(osoba);
	%>

	<p>Osoba zostala dodana do listy</p>
	<p>Imie: ${osoba.imie}</p>
	<p>Nazwisko: ${osoba.nazwisko}</p>
	<p>
		Rok urodzenia:
		<jsp:getProperty name="osoba" property="rok"></jsp:getProperty></p>
	<p>
	<p>Zawod: ${osoba.zawod}</p>
	<p>Miasto: ${osoba.miasto}</p>
	<a href="pokazOsoby.jsp">Pokaz liste osob dodanych</a>
</body>
</html>