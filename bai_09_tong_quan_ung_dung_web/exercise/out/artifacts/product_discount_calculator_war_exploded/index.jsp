<%--
  Created by IntelliJ IDEA.
  User: LINH NGUYEN
  Date: 6/24/2021
  Time: 2:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
  <title>Product Discount Calculator</title>
</head>
<body>
<form action="/display-discount" method="post">
  <table>
    <tr>
      <td>Product Description:</td>
      <td><input type="text" name="description"></td>
    </tr>
    <tr>
      <td>List Price:</td>
      <td><input type="text" name="price"></td>
    </tr>
    <tr>
      <td>Discount Percent:</td>
      <td><input type="text" name="discount"></td>
    </tr>
    <tr>
      <td colspan="2"><input type="submit" value="Calculate Discount"></td>
    </tr>
  </table>
</form>
</body>
</html>
