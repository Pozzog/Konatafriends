<%@ page language="java" contentType="text/html"
    pageEncoding="UTF-8"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html> 

<html>
	<head>
		<meta charset = "UTF-8">
		<title>Modifica Ambiente</title>
		
		<link href="${pageContext.request.contextPath}/css/style_form.css" rel="stylesheet" type="text/css"/>
		<link href="${pageContext.request.contextPath}/css/style_link.css" rel="stylesheet" type="text/css"/>
	</head>
	
	<body>
		
		<jsp:include page = "_header.jsp"></jsp:include>
		
		<div>
			<h3>Modifica Ambiente</h3><a href = "ambientList">Indietro</a>
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
						<td><input type = "text" name = "tipo" value = "${ambient.tipo}" /></td>
					</tr>
					<tr>
						<td>Numero Sensori</td>
						<td><input type = "text" name = "numSens" value = "${ambient.numeroSensori}" /></td>
					</tr>
					<tr>
						<td colspan = "2">
							<input type = "submit" value = "Submit" />
							<a href = "${pageContext.request.contextPath}/ambientList">Cancel</a>
						</td>
					</tr>
				</table>			
			</form>	
		</c:if>					
	
		<jsp:include page = "_footer.jsp"></jsp:include>
	</body>			
</html>