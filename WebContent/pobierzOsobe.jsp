<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Pobierz osobe</title>
</head>
<body>


	<jsp:useBean id="osoba" class="klasy.Osoba" scope="request" />
	<c:if test="${param.error != null}">
	<p><b>Nie wypelnione wazne pola!</b></p>
	</c:if>
	<form action="dodajOsobe.jsp">

		Imie* :<input type="text" name="imie" value="${osoba.imie}" /><br />
		Nazwisko* :<input type="text" name="nazwisko" value="${osoba.nazwisko}" /><br />
		Rok urodzenia* :<input type="text" name="rok" value="<c:if test="${osoba.rok > 0}">${osoba.rok}</c:if>" /><br />
		Zawod :<input type="text" name="zawod" value="${osoba.zawod}" /><br />
		Miasto :<input type="text" name="miasto" value="${osoba.miasto}" /><br />
		<input type="submit" value=" OK ">

	</form>+

	<p>* - pola wymagane</p>
	<p>
		<a href="pokazOsoby.jsp">Pokaz liste osob dodanych</a>
	</p>
</body>
</html>