<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
			
			
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dojo Survey</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
</head>
<body>
	<div class="container p-5">
  		<div class="row">
  		<span class="border border-secondary">
    		<div class="col text-center p-2 " id="center">
    		
        		<form action='submitForm' method='post'>
        		
        			<h2>Dojo Survey</h2>
        			
            		<div class="form-group row p-2">
                		<label for="inputName" class="col-sm-2 col-form-label">Name</label>
                		<div class="col-sm-10">
                    		<input type="text" class="form-control" id="inputName" name="name" placeholder="Enter your name">
                		</div>
            		</div>
            		<!-- add a dropdown with Coding Dojo locations -->
            		<div class="form-group row p-2">
                		<label for="location" class="col-sm-2 col-form-label">Dojo Location:</label>
                		<div class="col-sm-10">
                    		<select class="form-control" name="location">
                        		<option selected>Choose a location</option>
                        		<option value="Bellevue, WA">Bellevue, WA</option>
                        		<option value="Boise, ID">Boise, ID</option>
                        		<option value="Chicago, IL">Chicago, IL</option>
                        		<option value="Dallas, TX">Dallax, TX</option>
                        		<option value="los Angeles, CA">Los Angeles, CA</option>
                        		<option value="Silicon Valley, CA">Silicon Valley, CA</option>
                    		</select>
                		</div>
            		</div>
            		<!--  add a dropdown with a set of languages -->
            		<div class="form-group row p-2">
                		<label for="location" class="col-sm-2 col-form-label">Favorite language:</label>
                		<div class="col-sm-10">
                    		<select class="form-control" name="language">
                        		<option selected>Choose a language</option>
                        		<option value="C/C++">C/C++</option>
                        		<option value="C#">C#</option>
                        		<option value="Java">Java</option>
                        		<option value="JavaScript">JavaScript</option>
                    		</select>
                		</div>
            		</div>
        			<!-- add a test area box for comments -->
            		<div class="form-group p-2">
                		<label for="comments">Comments (optional)</label>
                		<textarea id="comments" class = "form-control" name="comments" rows="4" cols="50"></textarea>
            		</div>
					<!-- add a button to submit -->
            		<div class="form-group row p-2">
                		<div class="text-center">
                    			<button type="submit" class="btn btn-info" formmethod="post" value="create user">Submit</button>
                		</div>
            		</div>

        		</form>
    		</div>
    	</span>
 		</div>
	</div>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-p34f1UUtsS3wqzfto5wAAmdvj+osOnFyQFpp4Ua3gs/ZVWx6oOypYoCJhGGScy+8" crossorigin="anonymous"></script>
</body>
</html>