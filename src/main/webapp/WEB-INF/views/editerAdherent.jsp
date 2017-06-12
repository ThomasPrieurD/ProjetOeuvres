<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <jsp:include page="header.jsp" />

    <title>Ajouter un  adhérent</title>

</head>
<SCRIPT language="Javascript" type="text/javascript">
    <script type="text/javascript" src="js/foncControle.js"></script>


<body>
<jsp:include page="navBar.jsp" />

    <h1 class="text-center"><span style="text-decoration: underline;">Editer un Adhérent</span></h1>
    <div class="container">
        <div class="jumbotron">
            <div class="container-fluid">
                <FORM  name='identification' method="post" action="edit" onsubmit="return teste()">
                    <div class="form-group">
                        <label for="nom">Nom de l'adherent :</label>
                        <input type="Nom" name="txtnom" class="form-control" id="nom" value=${monAdherent.nomAdherent}>
                    </div>
                    <div class="form-group">
                        <label for="prenom">Prenom de l'adherent :</label>
                        <input type="Prenom" name="txtprenom" class="form-control" id="prenom" value=${monAdherent.prenomAdherent}>
                    </div>
                    <div class="form-group">
                        <label for="ville">Ville de l'adherent :</label>
                        <input type="Ville" name="txtville" class="form-control" id="ville" value=${monAdherent.villeAdherent}>
                    </div>
                    <button type="submit" class="btn btn-default">Editer</button>
                </form>
            </div>
        </div>
    </div>

    <jsp:include page="footer.jsp" />

</body>
</html>
