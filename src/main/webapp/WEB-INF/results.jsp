<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
			
			
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">
    <title>Result</title>
</head>
<body>
	<div class="container p-5">
    	<div class="row">
    	<span class="border border-secondary">
    		<div class="col text-center p-2" id="center">
        		<h3>Submitted Info:</h3>
        		<ul class="list-group">
            		<li class="list-group-item">Name: <c:out value="${name}"/></li>
            		<li class="list-group-item">Location: <c:out value="${location}"/></li>
            		<li class="list-group-item">Favorite Language: <c:out value="${language}"/></li>
            		<li class="list-group-item">Comments: <c:out value="${comments}"/></li>
        		</ul>
        		<div class="form-group row p-2">
        			<div class="text-center">
        				<a href="/">Go Back</a>
     				</div>
        		</div>
        	</div>
    	</span>
    	</div>
    	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-p34f1UUtsS3wqzfto5wAAmdvj+osOnFyQFpp4Ua3gs/ZVWx6oOypYoCJhGGScy+8" crossorigin="anonymous"></script>
	</div>   
</body>
</html>