<%@ page language="java" contentType="text/html; charset=windows-1256"
	pageEncoding="windows-1256"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta charset="ISO-8859-1">
<title>List produits</title>
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<%@include file="header.jsp"%>

	<div class="container">
		<div class="row justify-content-center align-items-center"
			style="min-height: 80vh">
			<div class="card ">
				<div class="card-header">Recherche des Produits</div>
				<div class="card-body">
					<form action="chercher.do" method="get" class="d-flex mb-3">
						<div class="col-3 me-2">
							<input class="form-control me-2" type="text"
								placeholder="Mot cle" name="motCle" value="${model.motCle}" />
						</div>

						<div>

							<button type="submit" class="btn btn-success">Chercher</button>
						</div>
					</form>
					<table class="table table-striped table-hover">
						<tr>
							<th>ID</th>
							<th>Nom Produit</th>
							<th>Prix</th>
							<th>Categorie</th>
							<th>Suppression</th>
							<th>Edition</th>
						</tr>
						<c:forEach items="${model.produits}" var="p">
							<tr>
								<td>${p.idProduit }</td>
								<td>${p.nomProduit }</td>
								<td>${p.prix }</td>
								<td>${p.categorie.nomCategorie }</td>
								<td>
								<a class="btn btn-danger btn-sm" onclick="return confirm('Etes-vous sûr ?')" href="supprimer.do?id=${p.idProduit }">Supprimer</a>
								</td>
								<td>
								<a class="btn btn-success btn-sm" href="editer.do?id=${p.idProduit }">Edit</a>
								</td>
							</tr>
						</c:forEach>
					</table>
				</div>
			</div>
		</div>
	</div>
</body>
</html>