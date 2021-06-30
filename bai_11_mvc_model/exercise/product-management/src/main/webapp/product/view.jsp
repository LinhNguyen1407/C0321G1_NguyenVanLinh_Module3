<%--
  Created by IntelliJ IDEA.
  User: LINH NGUYEN
  Date: 6/30/2021
  Time: 11:05 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Detail information of product</h1>
<p>
    <a href="/products">Back to product list</a>
</p>
<table>
    <tr>
        <td>Id:</td>
        <td>${productView.id}</td>
    </tr>
    <tr>
        <td>Name:</td>
        <td>${productView.name}</td>
    </tr>
    <tr>
        <td>Price:</td>
        <td>${productView.price}</td>
    </tr>
    <tr>
        <td>Description:</td>
        <td>${productView.description}</td>
    </tr>
    <tr>
        <td>Producer:</td>
        <td>${productView.producer}</td>
    </tr>
</table>
</body>
</html>
