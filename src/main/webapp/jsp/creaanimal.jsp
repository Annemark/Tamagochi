<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=request.getScheme() + "://"
		+ request.getServerName() + ":"
		+ request.getServerPort()
		+ request.getContextPath() + "/"
		%>" />
<meta charset="ISO-8859-1">
<title>Page de cr�ation d'animaux</title>
</head>
<body>
<form action="creaanimal" method="post">
	
	<label for="nom">Nom de l'animal</label>
	<input type="text" name="nom" id="nom"/>
	<br>
	<label for="gourmand">Taux de satiet� :</label>
	<input type="number" name="gourmand" id="gourmand"/>
	<br>
	<label for="sportif">Taux de jeux :</label>
	<input type="number" name="sportif" id="sportif"/>
	<br>
	<label for="marmotte">Taux de sommeil: </label>
	<input type="number" name="marmotte" id="marmotte"/>
	<br>
	<label for="couleur">Couleur :</label>
	<input type="text" name="couleur" id="couleur"/>
	<br>

	<input type="submit" value="Cr�er !"/>
	




</form>



</body>
</html>