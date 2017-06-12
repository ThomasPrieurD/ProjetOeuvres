<%--
  Created by IntelliJ IDEA.
  User: Sam
  Date: 12/06/2017
  Time: 10:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:include page="navBar.jsp" />

<h1 class="text-center"><span style="text-decoration: underline;">Editer une oeuvre</span></h1>
<div class="container">
    <div class="jumbotron">
        <div class="container-fluid">
            <FORM  name='identification' method="post" action="editOeuvre?idAdherent=${monAdherent.idOeuvrevente}" onsubmit="return teste()">
                <div class="form-group">
                    <label for="nom">Etat de l'oeuvre :</label>
                    <input type="Nom" name="txtnom" class="form-control" id="nom" value=${monAdherent.etatOeuvrevente}>
                </div>
                <div class="form-group">
                    <label for="prenom">Prix de l'oeuvre :</label>
                    <input type="Prenom" name="txtprenom" class="form-control" id="prenom" value=${monAdherent.prixOeuvrevente}>
                </div>
                <div class="form-group">
                    <label for="ville">Titre de l'oeuvre :</label>
                    <input type="Ville" name="txtville" class="form-control" id="ville" value=${monAdherent.titreOeuvrevente}>
                </div>
                <button type="submit" class="btn btn-default">Editer</button>
            </form>
        </div>
    </div>
</div>

<jsp:include page="footer.jsp" />
</body>
</html>
