<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: LINH NGUYEN
  Date: 6/28/2021
  Time: 4:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet", type="text/css", href="/assert/bootstrap4/css/bootstrap.css">
</head>
<body>
<h1>Danh sách khách hàng</h1>
<table class="table">
    <thead>
    <tr>
        <th>Tên</th>
        <th>Ngày sinh</th>
        <th>Địa chỉ</th>
        <th>Ảnh</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${customerList}" var="customer">
    <tr>
        <td>${customer.name}</td>
        <td>${customer.birthday}</td>
        <td>${customer.address}</td>
        <td><img src="/assert/img/${customer.image}" width="100" height="100">
        </td>
    </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
