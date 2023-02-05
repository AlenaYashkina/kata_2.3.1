<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  <title>All users</title>
</head>
<body>
<table class="table table-striped">
  <thead>
    <tr>
      <th>ID</th>
      <th>Name</th>
      <th>Last name</th>
      <th>Age</th>
      <th>Actions</th>
    </tr>
  </thead>
  <tbody>
    <thead>
      <tr th:each="user : ${users}">
      <td th:text="${user.id}"></td>
      <td th:text="${user.name}"></td>
      <td th:text="${user.lastName}"></td>
      <td th:text="${user.age}"></td>
      <td>
        <a th:href="@{/users/{id}(id=${user.id})}" class="btn btn-primary btn-sm">View</a>
        <a th:href="@{/users/edit/{id}(id=${user.id})}" class="btn btn-secondary btn-sm">Edit</a>
        <form action="#" th:action="@{/users/{id}(id=${user.id})}" th:method="delete" class="btn btn-sm">
          <input type="hidden" name="_method" value="delete" />
          <button type="submit" id="submitButton" value="Delete" class="btn btn-danger btn-sm">Delete</button>
        </form>
      </td>
    </tr>
  </tbody>
</table>
<a class="btn btn-success" th:href="@{/users/new}">Create new user</a>
</body>
</html>
