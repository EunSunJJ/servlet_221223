<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>체격 조건</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
	<p>
	<h2>체격 조건 입력</h2>
	</p>
	
	<div class="container">
		<form method="get" action="/lesson02/quiz03_1.jsp">
			<div class="d-flex">
			<label for="height"></label>
			<input type="text" name="height" id="height" class="form-control col-3" placeholder="키를 입력하세요."><span class="mt-3 ml-1">cm</span>

			<label for="weight"></label>
			<input type="text" name="weight" id="weight" class="form-control col-3" placeholder="몸무게를 입력하세요."><span class="mt-3 ml-1">kg</span>
		
			<input type="submit" class="btn btn-info ml-1" value='계산'>
			</div>
		</form>
	</div>
</body>
</html>