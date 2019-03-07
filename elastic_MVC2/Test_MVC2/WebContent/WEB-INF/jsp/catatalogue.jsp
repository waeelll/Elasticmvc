
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>

<!-- initialisation de la jstl via la taglib -->
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<!-- on peut maintenant utiliser les tags de la jstl -->

<!-- gestion des imports -->
<%@page import="bean.Utilisateur" %>
<%@page import="bean.BlocFiltre" %>
<%@page import="java.util.List" %>
<%@page import="bean.LigneFiltre" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>le catatalogue</title>
	<link rel="stylesheet" href = "../style.css">
</head>
<body>
	<h1>Bienvenue à toi oh ${sessionScope.user.user}</h1>
	
	<p>veuillez cliquer sur les petites cases à cocher pour pouvoir afficher 
	les elastiques que vous voulez ( en fait ce sont des filtres)
	</p>

	
	<!-- je crée une tableau pour pouvoir y ajouter mes filtres -->
	<form method="post" action="frontControleur?cmd=Search">
	<table>
		<thead>
			<tr>nom du tableau</tr>
		</thead>
		<tbody>
		
		<!-- pour chaques elements du tableau,  -->
		<%List<LigneFiltre> list = (List)request.getSession().getAttribute("tabfiltres");%>
		<%for(LigneFiltre filtre:list){%>
		
		<p><%=filtre.getId()%><br/><%=filtre.getLibelle()%>
		</p>
	

		<% }%>

		</tbody>
	
	
	</table>
	<input value ="rechercher" type='submit' name='buttonSub'>
	</form>	

</body>
</html>