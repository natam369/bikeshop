<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<!DOCTYPE html>
<html>
<head>
<style>
html,
body {
	height: 100%;
}

body {
	margin: 0;
	background: linear-gradient(45deg, #49a09d, #5f2c82);
	font-family: sans-serif;
	font-weight: 100;
}

.container {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
}

table {
	width: 800px;
	border-collapse: collapse;
	overflow: hidden;
	box-shadow: 0 0 20px rgba(0,0,0,0.1);
}

th,
td {
	padding: 15px;
	background-color: rgba(255,255,255,0.2);
	color: #fff;
}

th {
	text-align: left;
}

thead {
	th {
		background-color: #55608f;
	}
}

tbody {
	tr {
		&:hover {
			background-color: rgba(255,255,255,0.3);
		}
	}
	td {
		position: relative;
		&:hover {
			&:before {
				content: "";
				position: absolute;
				left: 0;
				right: 0;
				top: -9999px;
				bottom: -9999px;
				background-color: rgba(255,255,255,0.2);
				z-index: -1;
			}
		}
	}
}
</style>
<meta charset="ISO-8859-1">
<title>View Employees</title>
</head>
<body>
<div class="container">
<table border="2" width="70%" cellpadding="2">
<thead>  
<tr>
<th>BrandName</th>
</tr>
</thead>
<c:forEach var="brand" items="${brands}">
<tbody> 
   <tr>  
   <td>${brand.brandName}</td>
   </tr> 
   </c:forEach>
   <th>Investment</th>
   <c:forEach var="value" items="${revenues}">
   <tr>  
   <td><c:out value="${value}"/></td>
   </tr>
   </tbody> 
   </c:forEach>   
   </table>  
   </div>
</body>
</html>