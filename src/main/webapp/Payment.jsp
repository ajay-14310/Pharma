<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Payments JSP</title>
<link rel="stylesheet" href="css/Payment.css">
</head>
<body>
<div class="main">
	<div class="topbar1"></div>
	<div class="topbar2">
		<div class="container1">
			<div class="logout-btn">
				<a href="Logout.jsp">Logout</a>
			</div>
		</div>
	</div>
	<div class="header">
		<div class="container2">
			<div class="navbar">
				<a href="Homepage.jsp">HOME</a>
				<a href="Buy.jsp">BUY</a>
				<a href="Orders.jsp">ORDERS</a>
			</div>
		</div>
	</div>
</div>
<div class=active>
	<%
    String pid= request.getParameter("pid");
	int orderquantity = Integer.parseInt(request.getParameter("orderquantity"));
	String productname = request.getParameter("productname");
	int orderprice = Integer.parseInt(request.getParameter("orderprice"));
    %>
    <div class="filler"></div>
	<form action="PlaceOrder.jsp" method="post">
	<div class="container">
		<div class="bigcard">
		<h2>Payment using Credit/Debit card</h2>
		<p> Product Name:  <%= productname %> </p>
		<p> Qty:  <%= orderquantity %> </p>
		<p> Total Amount:  <%= orderprice*orderquantity %> </p>
		<div class="bigcard2">
		<table>
		<tr>
		 <td><h3>Card Number</h3></td>
		 <td><input type="text" name="cno" required></td>
		</tr>
		<tr>
		 <td><h3>Expiry Date</h3></td>
		 <td><input type="text" name="edate" placeholder="YYYY-MM-DD" onkeypress="return ((event.charCode>= 48 && event.charCode<= 57) || event.charCode==45)" required></td>
		</tr>
		<tr>
		 <td><h3>CVV Number</h3></td>
		 <td><input type="text" name="cvv" required></td>
		</tr>
		<tr>
		 <td><h3>Card Holder Number</h3></td>
		 <td><input type="text" name="cname" required></td>
		</tr>		
			</table>
			 <input type="submit" value="Make Payment"> 
    		<input type="hidden" name="pid" value="<%= pid %>"> 
    		<input type="hidden" name="orderquantity" value="<%= orderquantity %>"> 
			</div>
		</div>
	</div>
	</form>
	</div>
</body>
</html>