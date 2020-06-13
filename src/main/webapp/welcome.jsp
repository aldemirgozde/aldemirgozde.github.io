<%@ include file = "header.jsp" %>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Create an account</title>
         <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
      <link href="${contextPath}/resources/css/bootstrap.css" rel="stylesheet">
      <link href="${contextPath}/resources/css/bootstrap-grid.css" rel="stylesheet">
      <link href="${contextPath}/resources/css/bootstrap-grid.min.css" rel="stylesheet">
      <link href="${contextPath}/resources/css/bootstrap-reboot.css" rel="stylesheet">
      <link href="${contextPath}/resources/css/bootstrap-reboot.min.css" rel="stylesheet">
      <link href="${contextPath}/resources/css/common.css" rel="stylesheet">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
      <style>
	.button {
	font-family: cursive;
	font-size: 20px;
	text-align: center;
	color: #848484;
	margin-bottom: 30px;
	background-color:#2E2E2E;
}	
		</style>
</head>
<body >

<nav class="navbar navbar-inverse"> 
<div class="container-fluid"> 
	<div class="navbar-header"> 
	<a class="navbar-brand" href="#">Feast Freedom</a> 
	</div> 
	<ul class="nav navbar-nav"> 
	<li class="active"><a href="#">Home</a></li> 

	</ul> 
	<ul class="nav navbar-nav navbar-right"> 

	<li><a onclick="document.forms['logoutForm'].submit()"><span class="glyphicon glyphicon-log-in"></span>Log out ${pageContext.request.userPrincipal.name}</a></li> 
	</ul> 
</div> 
</nav> 
    

  <div class="container" style="text-align: center;">
    <c:if test="${pageContext.request.userPrincipal.name != null}">
        <form id="logoutForm" method="POST" action="${contextPath}/logout">
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        </form>

        <h4 style="text-align:center;font-family:cursive;">Welcome to FeastFreedom ${pageContext.request.userPrincipal.name}  </h4>
    </c:if>
  </div>
  
    
        <div class="container" style="text-align: center;">
      <form method="POST" action="${contextPath}/login" class="form-signin">


        <div class="form-group ${error != null ? 'has-error' : ''}" style="text-align: center;">
        	<a href="${pageContext.request.contextPath}/welcome/kitchenListing" style=""class="button" role="button" aria-pressed="true">Please select your kitchen!</a>


        </div>
      </form>
    </div>
    
            <div class="container" style="text-align: center;">
      <form method="POST" action="${contextPath}/login" class="form-signin">


        <div class="form-group ${error != null ? 'has-error' : ''}" style="text-align: center;">
			<a href="${pageContext.request.contextPath}/addKitchen.html" class="button" role="button" aria-pressed="true">Provider register now</a>

        </div>
      </form>
    </div>
	


  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
  <script src="${contextPath}/resources/js/bootstrap.min.js"></script>
</body>
</html>
<%@ include file = "footer.jsp" %>
