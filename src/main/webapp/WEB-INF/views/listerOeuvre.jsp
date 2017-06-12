<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%--
  Created by IntelliJ IDEA.
  User: Sam
  Date: 10/06/2017
  Time: 12:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>ListerOeuvre</title>
</head>
<body>

<jsp:include page="navBar.jsp" />

<div class="container">
    <h1 class="text-center">Liste des oeuvres</h1>

    <div class="jumbotron">
        <div class="container-fluid">
            <table class="table table-striped">
                <TR>
                    <TH>Numero</TH>
                    <TH>Etat</TH>
                    <TH>Prix</TH>
                    <TH>Titre</TH>
                    <th>Edition</th>
                </TR>
                <c:forEach items="${mesOeuvres}" var="item">
                    <tr>
                        <td>${item.idOeuvrevente}</td>
                        <td>${item.etatOeuvrevente}</td>
                        <td>${item.prixOeuvrevente}</td>
                        <td>${item.titreOeuvrevente}</td>
                        <td><a class="btn btn-success btn-sm" href="editerOeuvre?idOeuvre=${item.idOeuvrevente}" >Edit</a>
                            <a class="btn btn-danger btn-sm" href="supprimerOeuvre?idOeuvre=${item.idOeuvrevente}">Delete</a></td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </div>
</div>

<jsp:include page="footer.jsp" />

</body>
</html>
