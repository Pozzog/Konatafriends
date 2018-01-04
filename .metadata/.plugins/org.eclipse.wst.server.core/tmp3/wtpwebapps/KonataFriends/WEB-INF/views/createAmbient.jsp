
<html>
	<head>
		<meta charset = "UTF-8">
		<title>Creazione Ambiente</title>
		
		<link href="${pageContext.request.contextPath}/css/style_form.css" rel="stylesheet" type="text/css"/>
		<link href="${pageContext.request.contextPath}/css/style_link.css" rel="stylesheet" type="text/css"/>
	</head>
	
	<body>
		
		<jsp:include page = "_header.jsp"></jsp:include>
		
		<div>
			<h3>Creazione Ambiente</h3><a href = "ambientList">Indietro</a>
		</div>
		
		<p style = "color: red;">${errorString}</p>
		
		<form method = "POST" action = "${pageContext.request.contextPath}/createAmbient">
		
			<table border = "0">
				<tr>
					<td>Nome</td>
					<td><input type = "text" name = "nome" value = "${ambiente.nome}" /></td>
				</tr>
				<tr>
					<td>Ubicazione</td>
					<td><input type = "text" name = "ubicazione" value = "${ambiente.ubicazione}" /></td>
				</tr>
				<tr>
					<td>Tipo</td>
					<td><input type = "text" name = "tipo" value = "${ambiente.tipo}" /></td>
				</tr>
				<tr>
					<td>Numero Sensori</td>
					<td><input type = "text" name = "numSens" value = "${ambiente.numeroSensori}" /></td>
				</tr>
				<tr>
					<td colspan="2">                   
                   		<input type="submit" value="Submit" />
                   		<a href="ambientList">Cancel</a>
               		</td>
				</tr>
			</table>
		</form>
		
		<jsp:include page = "_footer.jsp"></jsp:include>
	</body>
</html>