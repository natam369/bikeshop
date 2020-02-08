<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="en">

<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/additional-methods.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/additional-methods.min.js"
	integrity="sha256-vb+6VObiUIaoRuSusdLRWtXs/ewuz62LgVXg2f1ZXGo="
	crossorigin="anonymous"></script>
<!-- Required meta tags-->
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="Colorlib Templates">
<meta name="author" content="Colorlib">
<meta name="keywords" content="Colorlib Templates">

<!-- Title Page-->
<title>Register Bike</title>
<style>
$
fonts: "Open Sans ", Helvetica, sans-serif ; @mixin border-radius ($radius
	) {
	-webkit-border-radius: $radius;
	-moz-border-radius: $radius;
	-ms-border-radius: $radius;
	border-radius: $radius;
}

@
mixin
 
box-shadow
 
($
top
,
$
left
,
$
blur
,
$
color
 
)
{
-webkit-box-shadow
:
 
$
top
$left$blur$color;

	
-moz-box-shadow
:
 
$
top
$left$blur$color;

	
box-shadow
:
 
$
top
$left$blur$color;


}
::selection {
	background-color: #b5e2e7;
}

::-moz-selection {
	background-color: #8ac7d8;
}

body {
	background: #58c791;
}

.container {
	display: -webkit-flex;
	display: flex;
	height: 100%;
}

#logbox {
	margin: 50px auto;
	width: 340px;
	background-color: #fff;
	@
	include
	border-radius(4px);
	@
	include
	box-shadow(0,
	1px,
	5px,
	rgba(0,0,0,0.25));
}

h1 {
	text-align: center;
	font-size: 175%;
	color: #757575;
	font-weight: 300;
}

h1, input {
	font-family: $ fonts;
}

.input {
	width: 75%;
	height: 50px;
	display: block;
	margin: 0 auto 15px;
	padding: 0 15px;
	border: none;
	border-bottom: 2px solid #ebebeb; &: focus { outline : none;
	border-bottom-color: #58c791 !important;
}

&
:hover {
	border-bottom-color: #dcdcdc;
}

&
:invalid {
	box-shadow: none;
}

}
.pass:-webkit-autofill {
	-webkit-box-shadow: 0 0 0 1000px white inset;
}

.inputButton {
	position: relative;
	width: 85%;
	height: 50px;
	display: block;
	margin: 30px auto 30px; @ include border-radius(5px);
	color: white;
	background-color: #58c791;
	border: none;
	@
	include
	box-shadow(0,
	5px,
	0,
	#3aad73);
	&:
	hover
	{
	top
	:
	2px;
	@
	include
	box-shadow(0,
	3px,
	0,
	#3aad73);
}

&
:active {
	top: 5px;
	box-shadow: none;
}

&
:focus {
	outline: none;
}
}
</style>
</head>
<body>
	<div class="container">
		<div id="logbox">
			<form id="form" method="post" action="/addBike"
				onsubmit="return validate()">
				<h1>Add Bike!</h1>

				<label class="input pass">Select Brand</label> <select
					class="input pass" name="brandId">
					<c:forEach var="brand" items="${ brands}">
						<option class="input pass" value="${brand.brandId}">${brand.brandName}</option>
					</c:forEach>
				</select> <input class="input pass" name="bikeName" type="text"
					placeholder="Yup! BIKE Name?" autofocus="autofocus" id="bikeName"/>
					 <input
					class="input pass" name="price" type="number"
					placeholder="PRICE?" id="price" /> 
					<input
					class="inputButton" type="submit" value="Sign me up!" />
			</form>
		</div>
	</div>
	<script>
		$("#form").validate({

			rules : {

				bikeName : {
					required : true,
					minlength : 4,
					maxlength : 16

				},
				price : {
					required : true,
					number:true
				}
			}
		});
	</script>
</body>
</html>

