<%--
  Created by IntelliJ IDEA.
  User: LINH NGUYEN
  Date: 6/30/2021
  Time: 9:11 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Delete product</h1>
<p>
    <a href="/products">Back to product list</a>
</p>
<form action="/products" method="post">
    <h3>Are you sure?</h3>
    <input type="hidden" name="action", value="delete">
    <input type="hidden" name="id", value="${productDel.id}">
    <table>
        <tr>
            <td>Id:</td>
            <td>${productDel.id}</td>
        </tr>
        <tr>
            <td>Name:</td>
            <td>${productDel.name}</td>
        </tr>
        <tr>
            <td>Price:</td>
            <td>${productDel.price}</td>
        </tr>
        <tr>
            <td>Description:</td>
            <td>${productDel.description}</td>
        </tr>
        <tr>
            <td>Producer:</td>
            <td>${productDel.producer}</td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit" value="Delete"></td>
        </tr>
    </table>
</form>
</body>
</html>
