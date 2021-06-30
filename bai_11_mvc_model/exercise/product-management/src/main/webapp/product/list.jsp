<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: LINH NGUYEN
  Date: 6/29/2021
  Time: 9:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Product List</title>
</head>
<body>
<h1>Products</h1>
<p>
    <a href="/products?action=create">Create new product</a>
</p>
<c:if test="${empty productList}">
    <h3>Product List Empty</h3>
</c:if>

<c:if test="${not empty productList}">
    <table border="1">
        <tr>
            <th>Id</th>
            <th>Name</th>
            <th>Price</th>
            <th>Description</th>
            <th>Producer</th>
            <th colspan="2">Action</th>
        </tr>
        <c:forEach items="${productList}" var="product">
            <tr>
                <td><a href="/products?action=view&name=${product.getName()}">${product.getId()}</a></td>
                <td>${product.getName()}</td>
                <td>${product.getPrice()}</td>
                <td>${product.getDescription()}</td>
                <td>${product.getProducer()}</td>
                <td><a href="/products?action=edit&id=${product.getId()}">Edit</a></td>
                <td><a href="/products?action=delete&name=${product.getName()}">Delete</a></td>
            </tr>
        </c:forEach>
    </table>
</c:if>
</body>
</html>
