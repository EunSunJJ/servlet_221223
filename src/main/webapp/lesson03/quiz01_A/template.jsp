<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<style>
header{height:80px;}
nav{height:50px;}
.contents {min-height:500px;}
footer{height:30px;}

.nav-link {color: #fff;}
</style>
</head>
<body>
	 
	<div id="wrap" class="container bg-dark">
		<header class="bg-warning d-flex justify-content-center align-items-center">
			<jsp:include page="header.jsp" />
		</header>
		
		<nav class="bg-danger d-flex align-items-center">
			<jsp:include page="menu.jsp" />
		</nav>
		
		<section class="contents bg-info">
			<jsp:include page="contents.jsp" />
		</section>
		
		<footer class="bg-primary d-flex justify-content-center align-items-center">
			<small>Copyright © SK Broadband 2023</small>
		</footer>
	</div>
</body>
</html>