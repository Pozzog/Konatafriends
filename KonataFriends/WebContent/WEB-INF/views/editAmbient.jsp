<%@ page language="java" contentType="text/html"
    pageEncoding="UTF-8"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html> 

<html>
	<head>
		<meta charset = "UTF-8">
		<title>Modifica Ambiente</title>
		
		<link href="${pageContext.request.contextPath}/css/style_form.css" rel="stylesheet" type="text/css"/>
		<link href="${pageContext.request.contextPath}/css/style_link_button.css" rel="stylesheet" type="text/css"/>
		
		<style>
			select {
				display: block;
				padding: 4px 45px;
				margin: 8px 0;
				border: 1px solid #ccc;
				border-radius: 4px;
				box-sizing: border-box;
			}
		</style>	
	</head>
	
	<body>
		
		<jsp:include page = "_header.jsp"></jsp:include>
		
		<div>
			<h3>Modifica Ambiente</h3>
			<a href = "ambientList">Indietro</a>
		</div>
		
		<p style = "color:red;">${errorSring}</p>
		
		<c:if test = "${not empty ambient}">
			<form method = "POST" action = "${pageContext.request.contextPath}/editAmbient">
				<input type = "hidden"  name = "id" value = "${ambiente.id}" />
				
				<table border = "0">
					<tr>
						<td>Nome</td>
						<td><input type = "text" name = "nome" value = "${ambient.nome}" /></td>
					</tr>
					<tr>
						<td>Ubicazione</td>
						<td><input type = "text" name = "ubicazione" value = "${ambient.ubicazione}" /></td>
					</tr>
					<tr>
						<td>Tipologia</td>
						<td>
							<select id = "selAmbient" name = "selAmbient">
								<option value = "1">Abitazione</option>
								<option value = "2">Agricoltura</option>
								<option value = "3">Laboratorio</option>
							</select>
						</td>
					</tr>
					<tr>
						<td colspan = "2">
							<input type = "submit" value = "Invia" />
							<input type = "reset" value = "Cancella" />
						</td>
					</tr>
				</table>			
			</form>	
		</c:if>					
	
		<jsp:include page = "_footer.jsp"></jsp:include>
	</body>			
</html>