<%--
  Created by IntelliJ IDEA.
  User: Sam
  Date: 08/04/2017
  Time: 10:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<jsp:include page="header.jsp" />
<head>
    <title>Ajouter Oeuvre</title>
</head>
<body>
<jsp:include page="navBar.jsp" />
<h1 class="text-center"><span style="text-decoration: underline;">Gestion des Oeuvres</span></h1>
<h2 class="text-center">Formulaire d'ajout d'Oeuvre</h2>
<div class="container">
    <div class="jumbotron">
        <div class="container-fluid">
            <form  name='identification' method="post" action="insererOeuvre" onsubmit="return teste()">
                <div class="form-group">
                    <label for="Titre">Titre de l'oeuvre :</label>
                    <input  name="titre" class="form-control" id="Titre">
                </div>
                <div class="form-group">
                    <label for="Prix">Prix :</label>
                    <input name="prix" class="form-control" id="Prix">
                </div>
                <button type="submit" class="btn btn-default">Ajouter</button>
            </form>
        </div>
    </div>
</div>
<jsp:include page="footer.jsp" />
</body>
</html>
