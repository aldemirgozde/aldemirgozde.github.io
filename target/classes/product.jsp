<%@ include file = "header.jsp" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Product Page</title>
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
    <%@ include file="navbar.jsp" %>
        <style>

.span_1_of_3 {
	width: 32.2%;
}

.span_3_of_3 {
	width: 100%;
}
    </style>
</head>
<body>


	<c:forEach var="product" items="${products }">
		
			<div class="row">
			  <div class = ".span_3_of_3">
      			<div class = "thumbnail">
      				
						<img border="0" alt="Generic placeholder thumbnail" src="/welcome/${product.photo }" width="200" height="200">
					
      			</div>
      
      			<div class = "caption">
         			<h3 style="font-family:cursive;text-align:center;">${product.name } </h3>
         			<p style="text-align:center;">Price: ${product.price }</p>
         			<p style="text-align:center;">
         			
         			<a href="/welcome/cart/buy/${product.id}">
						<button class="btn btn-primary" type="submit" >Add</button>
					</a>
					</p>

      			</div>
   			</div>
		</div>
		
		</c:forEach>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
  <script src="${contextPath}/resources/js/bootstrap.min.js"></script>
</body>
</html>
<%@ include file = "footer.jsp" %>