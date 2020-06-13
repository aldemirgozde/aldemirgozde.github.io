<!DOCTYPE html> 
<html lang="en"> 
<head> 
<title>Bootstrap Example</title> 
<meta charset="utf-8"> 
<meta name="viewport" content="width=device-width, initial-scale=1"> 
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css"> 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> 
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script> 
</head> 
<body> 

<nav class="navbar navbar-inverse"> 
<div class="container-fluid"> 
	<div class="navbar-header"> 
	<a class="navbar-brand" href="#">Feast Freedom</a> 
	</div> 
	<ul class="nav navbar-nav"> 
	<li class="active"><a href="${pageContext.request.contextPath}/welcome">Home</a></li> 
	<li><a href="${pageContext.request.contextPath}/welcome/kitchenListing">Kitchen List</a></li> 
	</ul> 
	<ul class="nav navbar-nav navbar-right"> 
	<li><a href="${pageContext.request.contextPath}/cartv.jsp"><span class="glyphicon glyphicon-shopping-cart"></span>Shopping Cart</a></li> 
	<li><a onclick="document.forms['logoutForm'].submit()"><span class="glyphicon glyphicon-log-in"></span>Log out ${pageContext.request.userPrincipal.name}</a></li>  
	</ul> 
</div> 
<form id="logoutForm" method="POST" action="${contextPath}/logout">
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        </form>
</nav> 
	
</body> 
</html> 

