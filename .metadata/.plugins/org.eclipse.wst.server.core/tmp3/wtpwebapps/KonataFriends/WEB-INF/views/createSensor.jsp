
<html>
	<head>
		<meta charset = "UTF-8">
		<title>Creazione Sensore</title>
		
		<link href="${pageContext.request.contextPath}/css/style_form.css" rel="stylesheet" type="text/css"/>
		<link href="${pageContext.request.contextPath}/css/style_link.css" rel="stylesheet" type="text/css"/>
	</head>
	
	<body>
		
		<jsp:include page = "_header.jsp"></jsp:include>
		
		<div>
			<h3>Creazione Sensore</h3><a href = "sensorList">Indietro</a>
		</div>
		
		<p style = "color: red;">${errorString}</p>
		
		<form method = "POST" action = "${pageContext.request.contextPath}/createSensor">
			<table border = "0">
				<tr>
					<td>Marca</td>
					<td><input type = "text" name = "marca" value = "${ambiente.nome}" /></td>
				</tr>
				<tr>
					<td>Modello</td>
					<td><input type = "text" name = "modello" value = "${ambiente.ubicazione}" /></td>
				</tr>
				<tr>
					<td>Tipo</td>
					<td><input type = "text" name = "tipologia" value = "${ambiente.tipo}" /></td>
				</tr>
				<tr>
					<td>Anno</td>
					<td><input type = "date" name = "anno" value = "${ambiente.numeroSensori}" /></td>
				</tr>
				<tr>
					<td colspan="2">������������������ 
�������������������		<input type="submit" value="Submit" />
�������������������		<a href="sensorList">Cancel</a>
���������������		</td>
				</tr>
			</table>
		</form>
		
		<jsp:include page = "_footer.jsp"></jsp:include>
	</body>
</html>