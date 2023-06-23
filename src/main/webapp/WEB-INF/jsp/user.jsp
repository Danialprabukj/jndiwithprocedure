<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User List</title>
</head>
<body>
    <h1>User List</h1>
    <form action="/view/selected" method="post">
        <table> 
            <tr>
                <th></th>
                <th>ID</th>
                <th>Username</th>
                <th>Email</th>
                <th>Action</th>
            </tr>
            <c:forEach var="user" items="${users}">
                <tr>
                    <td>
                        <input type="checkbox" name="selectedUsers" value="${user.id}">
                    </td>
                    <td>${user.id}</td>
                    <td>${user.username}</td>
                    <td>${user.email}</td>
                    <td>
                        <a href="/${user.id}">View</a>
                        <a href="/edit/${user.id}">Edit</a>
                        <a href="/delete/${user.id}">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
        <input type="submit" value="View Selected">
    </form>
    <a href="/add">Add User</a>
</body>
</html>
