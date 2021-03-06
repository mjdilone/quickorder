<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Past Orders</title>
 <link rel="stylesheet" href="css/styles.css">
 <link href="../webjars/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" />
 <script src="../webjars/bootstrap/4.0.0/js/bootstrap.min.js" ></script>
 <script src="../webjars/jquery/3.0.0/js/jquery.min.js" ></script>
 <link rel="stylesheet" type="text/css" href="//wpcc.io/lib/1.0.2/cookieconsent.min.css"/><script src="//wpcc.io/lib/1.0.2/cookieconsent.min.js"></script><script>window.addEventListener("load", function(){window.wpcc.init({"border":"thin","corners":"small","colors":{"popup":{"background":"#f6f6f6","text":"#000000","border":"#555555"},"button":{"background":"#555555","text":"#ffffff"}},"position":"bottom"})});</script>
</head>
<body>


<div class = "container">
<div class = "navBar">
 	Welcome,  ${username}
 	<br>
 	 	<div class = "button">
			<form action="welcome">
				<button class = "button">Home</button>
			</form>
		</div>
		
 		<div class = "button">
			<form action="login">
				<button class = "button">Login</button>
			</form>
		</div>
			
		<div class ="button">
			<form action="logout">
				<button class = "button" >Logout</button>
			</form>
		</div>
		
		<script type="text/javascript">
		var user = "<?php echo $username?>"; 
		</script>
			
		<div class ="button">
			<form action = "retrieveCart">
				<button class = "button">Cart(${cartCount})</button>
			</form>
		</div>
		
		<div class ="button">
			<form action = "accountDetails"  >
			<input type='hidden' name='username' value='${username}'/> 
				<button class = "button">Account</button>
			</form>
		</div>	
		
		</div>
		
	<br>
	<br>
	<br>
	<form action="/searchSaleItem">
			Search: <input type = "text" name="name">
		</form>
		
		
		
<div class = "container">
<table class="table table-striped">
   <thead>
    <tr>
     <th scope="row">Name</th>
     <th scope = "row">Quantity</th>
     <th scope = "row">Image</th>
    </tr>
   </thead>
   <tbody>
    <c:forEach items="${pastOrders}" var="pastOrderItem" >
     <tr>
     
      <td>${pastOrderItem.name }</td>
      <td>${pastOrderItem.quantity }</td>
      <td><img src = ${pastOrderItem.imageSource}  height = "50" width = "50"></td>
     </tr>
    </c:forEach>
   </tbody>
  </table>
</div>
  
</div>



</body>
</html>