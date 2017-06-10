<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%--<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="refresh" content="0;URL=javascript:fermer();">
	<meta name="viewport" content="initial-scale=1, maximum-scale=1">
	<link rel='stylesheet' href='webjars/bootstrap/3.2.0/css/bootstrap.min.css'>--%>
    <jsp:include page="header.jsp" />
    <title>Expo : Médiathèque De POLYTECH</title>

</head>


<script language="JavaScript">
	function fermer() {

	}
</script>

<body>

<jsp:include page="navBar.jsp" />


<div class="container">

    <h1 class="text-center"><span style="text-decoration: underline;">Médiathèque de POLYTECH</span></h1>
    <h2 class="text-center">Gestion de
        l'exposition 2016</h2>

    <div class="jumbotron">
	<%--<p align="left">
		<span style="font-family: Arial;  text-decoration: underline;">Sélectionnez la
				fonctionnalité voulue:</span>
	</p>--%>
        <div class="container-fluid">
            <div class="row">
		        <div class="col-md-6">
                    <a href="ajouterAdherent" class="btn btn-primary btn-lg btn-block"><font
				    face="Arial">Ajouter un Adhérent</font></a>
                </div>
		        <div class="col-md-6">
                    <a href="listerAdherent" class="btn btn-primary btn-lg btn-block"><font
				    face="Arial">lister les adhérents</font></a><font face="Arial"> </font>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <a href="" class="btn btn-primary btn-lg btn-block"><font
                        face="Arial">Editer un Adhérent</font></a>
                </div>
                <div class="col-md-6">
                    <a href="" class="btn btn-primary btn-lg btn-block"><font
                    face="Arial">Ajouter une oeuvre</font></a>
                </div>
            </div>
        </div>
		<%--<ul>
		<li><a href="ajouterAdherent"><font
				face="Arial">Ajout Adhérent</font></a></li>
		<li><a href="listerAdherent"><font
				face="Arial">lister les adhérents</font></a><font face="Arial"> </font></li>
		<li><a href="javascript:fermer()"><font face="Arial">Quitter</font></a><font
			face="Arial"> </font></li>
	</ul>--%>
    </div>
</div>

<jsp:include page="footer.jsp" />
</body>
</html>