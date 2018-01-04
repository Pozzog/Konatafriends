
<html>
	<head>
		<meta charset = "UTF-8">
		<title>Creazione Utente</title>
		
		<link href="${pageContext.request.contextPath}/css/style_form.css" rel="stylesheet" type="text/css"/>
		<link href="${pageContext.request.contextPath}/css/style_link.css" rel="stylesheet" type="text/css"/>
	</head>
	
	<body>
		
		<jsp:include page = "_header.jsp"></jsp:include>
		
		<h3>Creazione Utente</h3>
		
		<p style = "color: red;">${errorString}</p>
		
		<form method = "POST" action = "${pageContext.request.contextPath}/createUser">
			<table border = "0">
				<tr>
					<td>Username</td>
					<td><input type = "text" name = "userName" value = "${user.userName}" /></td>
				</tr>
				<tr>
					<td>Password</td>
					<td><input type = "password" name = "password" value = "${user.password}" /></td>
				</tr>
				<tr>
					<td>Privilegi</td>
					<td><input type = "text" name = "privilegi" value = "${user.privilegi}" /></td>
				</tr>
				<tr>
					<td colspan="2">������������������ 
�������������������		<input type="submit" value="Submit" />
�������������������		<a href="loginView">Cancel</a>
���������������		</td>
				</tr>
			</table>
		</form>	
		
		<jsp:include page = "_footer.jsp"></jsp:include>
	</body>
</html>