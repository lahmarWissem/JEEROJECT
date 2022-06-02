<%@ page language="java" contentType="text/html; charset=windows-1256"
	pageEncoding="windows-1256"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Modifier produit</title>
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<%@include file="header.jsp"%>

	<div class="container">
		<div class="card">
			<div class="card-header">Modification des Produits</div>
			<div class="card-body">
				<form action="update.do" method="post">
					<div hidden class="form-group mb-3">
						<label class="control-label mb-1">ID Produit :</label> <input
							disabled="disabled" type="text" name="id" class="form-control"
							value="${produit.idProduit}" />
					</div>
					<div class="form-group mb-3">
						<label class="control-label mb-1">Nom Produit :</label> <input
							type="text" name="nom" class="form-control"
							value="${produit.nomProduit}" />
					</div>
					<div class="form-group mb-3">
						<label class="control-label mb-1">Prix :</label> <input
							type="text" name="prix" class="form-control"
							value="${produit.prix}" />
					</div>

					<div class="form-group mb-3">
						<label for="categorie" class="form-label">Position</label> <select
							name="categorie" class="form-select">
							<option value="${produit.categorie.idCategorie}" selected>${produit.categorie.nomCategorie}</option>
							<c:forEach items="${catModel.categories}" var="cat">
								<c:if test="${cat.idCategorie != produit.categorie.idCategorie}">
									<option value="${cat.idCategorie}">${cat.nomCategorie}</option>
								</c:if>
							</c:forEach>
						</select>
					</div>

					<div>
						<button type="submit" class="btn btn-success">Modifier</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>