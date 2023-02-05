<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <title>User Page</title>
</head>
<body>
<div class="container">
    <h1>User Information</h1>
    <form th:method="POST" th:action="@{/users}" th:object="${user}">
        <div class="form-group">
            <label for="name">Name:</label>
            <input type="text" class="form-control" id="name" th:field="*{name}" placeholder="Enter name">
            <span th:if="${#fields.hasErrors('name')}" th:errors="*{name}">Name Error</span>
        </div>
        <div class="form-group">
            <label for="lastName">Last Name:</label>
            <input type="text" class="form-control" id="lastName" th:field="*{lastName}" placeholder="Enter last name">
            <span th:if="${#fields.hasErrors('lastName')}" th:errors="*{lastName}">Last Name Error</span>
        </div>
        <div class="form-group">
            <label for="age">Age:</label>
            <input type="number" class="form-control" id="age" th:field="*{age}" placeholder="Enter age">
            <span th:if="${#fields.hasErrors('age')}" th:errors="*{age}">Age Error</span>
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>
</body>
</html>
