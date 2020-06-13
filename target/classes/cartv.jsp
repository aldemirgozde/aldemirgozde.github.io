

<%@ include file = "header.jsp" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Cart Page</title>
	
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
    <style >


body {
  padding: 0 2em;
  font-family: Montserrat, sans-serif;
  -webkit-font-smoothing: antialiased;
  text-rendering: optimizeLegibility;
  color: #444;
  background: #eee;
}

h1 {
  font-weight: normal;
  letter-spacing: -1px;
  color: #34495E;
}

.rwd-table {
  background: #eee;
  color: black;
  overflow: hidden;
  margin-left: auto; 
  margin-right: auto;
  padding
  tr {
    border-color: lighten(#34495E, 10%);
    color: #000102;
    padding: 10px;
  }
  th, td {

    padding: 10px;
  }
  th, td:before {
    color: #dd5;
  }
}
    </style>
</head>
<body>

	<h3 style="font-family:cursive;text-align:center;">Cart Page</h3>
	<table class="rwd-table" style="text-align=center;">
	
		<tr>
			<th>Option</th>
			<th>Id</th>
			<th>Name</th>
			<th>Photo</th>
			<th>Price</th>
			<th>Quantity</th>
			<th>Sub Total</th>
		</tr>
		<c:set var="total" value="0"></c:set>
		<c:forEach var="item" items="${sessionScope.cart }">
			<c:set var="total"
				value="${total + item.product.price * item.quantity }"></c:set>
			<tr>
				<td align="center"><a
					href="welcome/cart/remove/${item.product.id }"
					onclick="return confirm('Are you sure?')">Remove</a></td>
				<td>${item.product.id }</td>
				<td>${item.product.name }</td>
				<%-- <td><img src="${pageContext.request.contextPath }/resources/http://learningprogramming.net/wp-content/uploads/java/spring_mvc/${item.product.photo }"
					width="50"></td> --%>
				<td><img src="/welcome/${item.product.photo}" width="50"></td>
				<td>${item.product.price }</td>
				<td>${item.quantity }</td>
				<td>${item.product.price * item.quantity }</td>
			</tr>
		</c:forEach>
		<tr>
			<td colspan="6" align="right">Sum</td>
			<td>${total }</td>
		</tr>
	</table>
	<br>
	<a href="/welcome/product/${kitchen }">Continue
		Shopping</a>


</body>
</html>

<%@ include file = "footer.jsp" %>