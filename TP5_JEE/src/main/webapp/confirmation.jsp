<%@ page language="java" contentType="text/html; charset=windows-1256"
	pageEncoding="windows-1256"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Confirmation</title>
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />

</head>
<body>

	<%@include file="header.jsp"%>
	<div class="container">
		<div class="card">
			<div class="card-header">Confirmation Ajout Produit</div>
			<div class="card-body">

				<div class="form-group">
					<label class="control-label mb-1">ID :</label> 
					<input type="text" name="Nom" class="form-control" value="${produit.idProduit }" />
					<label class="control-label mb-1">Nom Produit :</label>
					<input type="text" name="Nom" class="form-control" value="${produit.nomProduit }" />
				</div>

				<div class="control-label">
					<label class="control-label">Prix :</label> 
					<input type="text" name="Prix" class="form-control" value="${produit.prix }" />
				</div>
			</div>

		</div>
	</div>


</body>
</html>