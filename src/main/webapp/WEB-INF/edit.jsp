<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit User Details</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
          integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
          crossorigin="anonymous">
</head>
<body>
<div class="container mt-5">
    <h2 class="text-center">Edit User Details</h2>
    <form th:method="PATCH" th:action="@{/users/{id}(id=${user.id})}" th:object="${user}">
        <div class="form-group">
            <label for="name">Name</label>
            <input type="text" class="form-control" id="name"
                   th:field="*{name}" placeholder="Enter name">
            <form th:if="${#fields.hasErrors('name')}" th:errors="*{name}">Name Error</form>
        </div>
        <div class="form-group">
            <label for="lastName">Last Name</label>
            <input type="text" class="form-control" id="lastName"
                   th:field="*{lastName}" placeholder="Enter last name">
            <form th:if="${#fields.hasErrors('lastName')}" th:errors="*{lastName}">Last Name Error</form>
        </div>
        <div class="form-group">
            <label for="age">Age</label>
            <input type="number" class="form-control" id="age"
                   th:field="*{age}" placeholder="Enter age">
            <form th:if="${#fields.hasErrors('age')}" th:errors="*{age}">Age Error</form>
        </div>
        <button type="submit" value="Save Changes" class="btn btn-primary">Save Changes</button>
        <a class="btn btn-secondary" th:href="@{/users}" role="button">Return to all users</a>
        <a class="btn btn-secondary" th:href="@{/users/{id}(id=${user.id})}" role="button">Return to user details</a>
    </form>
</div>
</body>
</html>