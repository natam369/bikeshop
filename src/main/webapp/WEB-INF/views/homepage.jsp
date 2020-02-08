<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
* {
  box-sizing: border-box;
}

body {
  margin: 0;
}
.parallax { 
    background-image: url("/resources/images/bike.jpg"); 
    min-height: 500px;  
   background-attachment: fixed; 
    background-position: center; 
    background-repeat: no-repeat; 
    background-size: cover; 
} 

.navbar {
  overflow: hidden;
  background-color: darkgray;
  font-family: Arial, Helvetica, sans-serif;
}

.navbar a {
  float: left;
  font-size: 16px;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

.dropdown {
  float: left;
  overflow: hidden;
}

.dropdown .dropbtn {
  font-size: 16px;  
  border: none;
  outline: none;
  color: white;
  padding: 14px 16px;
  background-color: inherit;
  font: inherit;
  margin: 0;
}

.navbar a:hover, .dropdown:hover .dropbtn {
  background-color : crimson;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  width: 100%;
  left: 0;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content .header {
  background:darkcyan;
  padding: 16px;
  color: white;
}

.dropdown:hover .dropdown-content {
  display: block;
}

/* Create three equal columns that floats next to each other */
.column {
  float: left;
  width: 33.33%;
  padding: 10px;
  background-color: #ccc;
  height: 250px;
}

.column a {
  float: none;
  color: black;
  padding: 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}

.column a:hover {
  background-color: #ddd;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Responsive layout - makes the three columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
  .column {
    width: 100%;
    height: auto;
  }
}
</style>
</head>
<body>

<div class="navbar">
  <a href="#home">Home</a>
  <a href="/form1">ASSIGN</a>
  <div class="dropdown">
    <button class="dropbtn">Down Here! 
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <div class="header">
        <h2>MENU</h2>
      </div>   
      <div class="row">
        <div class="column">
          <h3>HEY!</h3>
          <a href="/form2">ADD BIKE</a>
        </div>
        <div class="column">
          <h3>!!STORE!!</h3>
          <a href="/form4">DEALER STORE</a>
          <a href="/form3">BIKE STORE</a>
        </div>
        <div class="column">
          <h3>FINANCE</h3>
          <a href="/investment">INVESTMENT</a>
        </div>
      </div>
    </div>
  </div>
  <div class="parallax"></div> 
<div style="height:1000px;font-size:60px;"> 
<center>KALINGA BIKE STORE!!!!!!!</center> 
</div>  
</div>
</body>
</html>
    