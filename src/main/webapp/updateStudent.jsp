<%@ page language="java"%>
<html>
<head>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f4f4f9;
	margin: 0;
	padding: 0;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
}

.container {
	background-color: #ffffff;
	padding: 20px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	border-radius: 8px;
	width: 300px;
	text-align: center;
}

h1 {
	font-size: 24px;
	color: #333;
	margin-bottom: 20px;
}

form {
	display: flex;
	flex-direction: column;
	align-items: center;
}

input[type="text"] {
	padding: 8px;
	margin: 10px 0;
	width: 80%;
	border-radius: 5px;
	border: 1px solid #ccc;
	font-size: 16px;
}

input[type="submit"] {
	background-color: #4CAF50;
	color: white;
	padding: 10px 20px;
	border: none;
	border-radius: 5px;
	font-size: 16px;
	cursor: pointer;
	transition: background-color 0.3s ease;
}

input[type="submit"]:hover {
	background-color: #45a049;
}

input[type="submit"]:active {
	background-color: #3e8e41;
}
</style>
</head>
<body>
	<div class="container">
		<h1>Add Student</h1>
		<form action="update" method="post">
			Roll: <input type="text" name="sRoll" required><br> 
			Name: <input type="text" name="sName" required><br> 
			<input type="submit" value="Submit">
		</form>
	</div>
</body>
</html>
