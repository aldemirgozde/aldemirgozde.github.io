
<!DOCTYPE HTML>
<html xmlns:th="http://www.thymeleaf.org">
<head>

    <title>Add user</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
body {
  font-family: Arial, Helvetica, sans-serif;
  background-color: black;
}

* {
  box-sizing: border-box;
}

/* Add padding to containers */
.container {
  padding: 16px;
  background-color: white;
}

/* Full-width input fields */
input[type=text] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus {
  background-color: #ddd;
  outline: none;
}

/* Overwrite default styles of hr */
hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}

/* Set a style for the submit button */
.registerbtn {
  background-color: #467ACA;
  color: white;
  padding: 16px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

.registerbtn:hover {
  opacity: 1;
}

/* Add a blue text color to links */
a {
  color: dodgerblue;
}

/* Set a grey background color and center the text of the "sign in" section */
.signin {
  background-color: #f1f1f1;
  text-align: center;
}
</style>
</head>
<body>


<form class="form-signin" action="/addMenu" method="post">

    
    <div class="container">
    <h1>Add a Product to ${kitchen.kitchenName}</h1>
   
    <hr>

    <label for="name"><b>Product Name</b></label>
    <input type="text" placeholder="product name" name="name" id="name" required>
    
	 <label for="photo"><b>Image</b></label>
    <input type="text" placeholder="photo" name="photo" id="photo" required>
    
    <label for="price"><b>Product Price </b></label>
    <input type="text" placeholder="price" name="price" id="price" required>


    <hr>
   	<p>
      <input type="submit" class="registerbtn" value="Submit"/> <input type="reset" class="registerbtn" value="Reset">
    </p>
	<a href="/welcome.jsp">Done Adding Products</a>
    
  </div>
  
	
</form>



</body>
</html>

