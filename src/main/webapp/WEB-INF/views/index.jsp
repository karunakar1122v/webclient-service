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
	<title>spring-microservices: Home</title>
</head>

<body>

	<div class="container">
		<div class="row">
			<nav class="navbar navbar-inverse">
				<div class="container-fluid" style="color:#f5f5f5">
					<div class="navbar-header">
						<a title="Kubernetes" href="https://172.16.6.4:31863/#!/pod?namespace=default"> 
							<img src="<c:url value="resources/images/kuberenetes.png"/>" height="60"/>
							Kubernetes Cluster -- All microservices  for this application deployed on Kubernetes cluster.If you click on here it will redirect to Kubernetes Dashboard.
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
		</div>
		
		<div class="row">
			
			<h1>Microservices Web - HomePage  Demo</h1>

			<ul>
				<li><a href="/accountList">View Account List</a></li>
				<li><a href="/getEmployeeList">View Employees List</a></li>
			</ul>
			
		</div>
		
	</div>
		
</body>
</html>
