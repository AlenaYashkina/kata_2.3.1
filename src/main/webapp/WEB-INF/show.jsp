<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <title>View User Details</title>
</head>
<body>
<div class="container mt-5">
    <h2>View User Details</h2>
    <table class="table table-bordered">
        <tr>
            <th>ID</th>
            <td th:text="${user.id}"></td>
        </tr>
        <tr>
            <th>Name</th>
            <td th:text="${user.name}"></td>
        </tr>
        <tr>
            <th>Last Name</th>
            <td th:text="${user.lastName}"></td>
        </tr>
        <tr>
            <th>Age</th>
            <td th:text="${user.age}"></td>
        </tr>
    </table>
    <a th:href="@{/users/edit/{id}(id=${user.id})}" class="btn btn-secondary btn-sm">Edit user</a>
    <a href="/users" class="btn btn-primary">Back to users list</a>
</div>
</body>
</html>