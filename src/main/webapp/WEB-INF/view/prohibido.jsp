<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!-- 2.Formulario -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>

	<head>
	
		<meta charset="ISO-8859-1">
		<title>Prohibido</title>
		
		<!-- Latest compiled and minified CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
		
		<!-- jQuery library -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		
		<!-- Popper JS -->
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
		
		<!-- Latest compiled JavaScript -->
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
		
	</head>
	
	<body>
	
		<div class="container">
		
			<div class="jumbotron jumbotron-fluid">
				
				  <div class="container">
				  
					    <h1 class="display-4 text-center text-danger">Acceso denegado</h1>
					    
				  </div>
					  
			</div>		
			
			<div class="btn-toolbar mb-4" role="toolbar" aria-label="Toolbar with button groups">				
					
					<div class="btn-group mr-2" role="group" aria-label="First group">
						
						<form:form action="${pageContext.request.contextPath}/logout" method="POST">
					
							<button type="submit" class="btn btn-warning">Salir</button>
						
						</form:form>
									
					</div>
					
			</div>
		
		</div>
		
	</body>

</html>