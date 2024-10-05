<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous" />
</head>

<body>
	<div class="container">
		<form action="./edit-user" method="post">
			<h6 class="text-danger">${error }</h6>
			<div class="mb-3">
				<label for="exampleInputEmail1" class="form-label">ID</label> <input
					type="number" class="form-control" id="exampleInputEmail1"
					name="id" aria-describedby="emailHelp" value="${user.id }"/>
				<div id="emailHelp" class="form-text"></div>
			</div>
			<div class="mb-3">
				<label for="exampleInputPassword1" class="form-label">Name</label> <input
					type="text" class="form-control" id="exampleInputPassword1"
					name="name" value="${user.name }"/>
			</div>
			<div class="mb-3">
				<label for="exampleInputPassword1" class="form-label">Email</label>
				<input type="email" class="form-control" id="exampleInputPassword1"
					name="email" value="${user.email }"/>
			</div>
			<select class="form-select" aria-label="Default select example"
				name="type">
				<option value="1" ${user.type == 1 ? "selected" : "" }>Admin</option>
				<option value="2" ${user.type == 1 ? "selected" : "" }>User</option>
			</select>
			<input type="hidden" name="id" value="${user.id }">
			<div>
				<button type="submit" class="btn btn-primary">Add</button>
			</div>
		</form>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>
</body>
</html>