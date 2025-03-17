<%@ page language="java"%>
<html>
<head>
<style>
/* Basic Page Style */
body {
	font-family: Arial, sans-serif;
	background-color: #f4f4f9;
	margin: 0;
	padding: 0;
}

h2 {
	color: #333;
	background-color: #e0e0e0;
	padding: 10px;
	text-align: center;
}

h3 {
	color: #2c3e50;
	background-color: #ecf0f1;
	padding: 10px;
	text-align: center;
}

p {
	font-size: 16px;
	line-height: 1.5;
	color: #555;
	margin: 10px 0;
	text-align: center;
}

/* Styling for the results */
.result-container {
	max-width: 600px;
	margin: 20px auto;
	padding: 20px;
	background-color: #ffffff;
	border: 1px solid #ddd;
	border-radius: 5px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

.result-container p {
	background-color: #f9f9f9;
	padding: 8px;
	border-radius: 4px;
	margin-bottom: 8px;
}

</style>
</head>
<body>
	<h2>Results:</h2>

	<div class="result-container">
		<%
		// Get the result from the session
		Object result = session.getAttribute("result");

		// Check if the result is a List
		if (result instanceof java.util.List) {
			java.util.List<?> list = (java.util.List<?>) result;
			for (Object item : list) {
		%>
		<p><%=item%></p>
		<%
		}
		}
		// Check if the result is an array
		else if (result instanceof Object[]) {
		Object[] array = (Object[]) result;
		for (Object item : array) {
		%>
		<p><%=item%></p>
		<%
		}
		} else {
		%>
		<p>No results found.</p>
		<%
		}
		%>
	</div>

</body>
</html>
