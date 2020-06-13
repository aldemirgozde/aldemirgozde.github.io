<%@ include file = "header.jsp" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.group6.pro.model.Kitchens" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Kitchen List</title>
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

		
	        <h3 style="font-family:cursive;text-align:center;">Registered Kitchen List</h3>


		<c:forEach var="kitchens" items="${KitchenList }">
		
			<div class="row" >
			  <div class = "span_3_of_3">
      			
      
      			<div class = "caption" >
      				<p style="text-align:center;font-family:cursive; font-size:20px"> <a href="/welcome/product/${kitchens.kitchenName  }">${kitchens.kitchenName  }</a>
      				</p>
         			<p style="text-align:center;">Kitchen Working Days: ${kitchens.kitchen_working_Days  }</p>
         			<p style="text-align:center;">Kitchen Start Time: ${kitchens.kitchen_start_time  }</p>
         			<p style="text-align:center;">Kitchen Stop Time: ${kitchens.kitchen_stop_time  }</p>

      			</div>
   			</div>
   			<br></br>
		</div>
		
		</c:forEach>
	  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
  <script src="${contextPath}/resources/js/bootstrap.min.js"></script>

</body>
</html>

<%@ include file = "footer.jsp" %>