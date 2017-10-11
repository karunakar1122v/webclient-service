<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html 
     PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
     "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<link rel="stylesheet" href="<c:url value="resources/styles/bootstrap/3.3.5/css/bootstrap.min.css" />" />
    <link rel="stylesheet" href="<c:url value="resources/styles/bootstrap/3.3.5/css/bootstrap-theme.min.css" />" />
    <link rel="stylesheet" href="<c:url value="resources/styles/pivotal.css" />" />
	<title>spring-microservices: Employee Details</title>
</head>

<body>

	<div class="container">
		<div class="row">
			<nav class="navbar navbar-inverse">
				<div class="container-fluid">
					<div class="navbar-header">
						<a title="Kubernetes" href="https://172.16.6.4:31863/#!/pod?namespace=default"> 
							<img src="<c:url value="resources/images/kuberenetes.png"/>" height="60"/>
							Kubernetes Cluster -- All microservices for this application deployed on Kubernetes cluster.If you click on here on to redirect to Kubernetes page.
						</a>
					</div>
					<div>
						<ul class="nav navbar-nav navbar-right">
							
								<a href="https://172.16.6.4:31863/#!/pod?namespace=default">
									<img alt="Pivotal" title="Kubernetes" src="<c:url value="resources/images/kuberenetes.png" />"  height="60" />
								</a>
							
						</ul>
					</div>
				</div>
			</nav>
			<div style="text-align: right">[ <a href="<c:url value='/'/>">Home</a>
              | <a href="accountList">Accounts</a> ]</div>
		</div>
		
		<div class="row">
			
			<h1>Employee Details</h1>
			
		
				<c:forEach items="${employees}" var="employees">
					
			<div class="container-fluid">
				<div class="row">
					
					<div class="col-sm-1">
						${employees.id}
					</div>
					<div class="col-sm-1">
						${employees.firstname}
					</div>
					<div class="col-sm-1">
						${employees.lastname}
					</div>
					<div class="col-sm-2">
						${employees.role}
					</div>
				</div>
				
			</div>
				</c:forEach>
			
								
		</div>

	</div>

</body>

</html>