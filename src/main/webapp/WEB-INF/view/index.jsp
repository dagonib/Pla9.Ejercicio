<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!-- 2.Formulario -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!-- 4.Mostrar roles de usuario -->
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<html>

		<head>
		
			<meta charset="ISO-8859-1">
			<title>Inicio</title>
			
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
					  
						    <h1 class="display-4 text-center">Editorial</h1>
						    
						    <p class="lead text-center">Pagina de inicio</p>
						    
					  </div>
					  
				</div>
				
				<p>
					Usuario: <sec:authentication property="principal.username" />
				</p>
				
				<p>
					Contrase�a: <sec:authentication property="principal.authorities" />
				</p>
				
				<div class="btn-toolbar mb-4" role="toolbar" aria-label="Toolbar with button groups">				
					
					<div class="btn-group mr-2" role="group" aria-label="First group">
					
						<sec:authorize access="hasRole('EDITOR')">
						
							
							<a href="${pageContext.request.contextPath}/editor/" class="btn btn-outline-primary">�rea de Edici�n</a>
						
						</sec:authorize>
					
					</div>
					
				</div>
					
				<div class="btn-toolbar mb-4" role="toolbar" aria-label="Toolbar with button groups">	
					
					<div class="btn-group mr-2" role="group" aria-label="First group">
					
						<sec:authorize access="hasRole('ADMIN')">
						
							<a href="${pageContext.request.contextPath}/admin/" class="btn btn-outline-primary">�rea de Administraci�n</a>
						
						</sec:authorize>
					
					</div>
					
				</div>
				
				<div class="btn-toolbar" role="toolbar" aria-label="Toolbar with button groups">
				
					<div class="btn-group mr-2" role="group" aria-label="First group">
					
						<form:form action="${pageContext.request.contextPath}/logout" method="POST">
							
							<button type="submit" class="btn btn-warning">Salir</button>
						
						</form:form>
						
					</div>
					
				</div>
				
			</div>
	</body>
	
</html>