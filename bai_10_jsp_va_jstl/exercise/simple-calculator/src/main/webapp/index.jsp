<%--
  Created by IntelliJ IDEA.
  User: LINH NGUYEN
  Date: 6/28/2021
  Time: 5:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Title</title>
  </head>
  <body>
  <h1>Simple Calculator</h1>
  <form action="/calculator/calculate" , method="post">
    <fieldset>
      <legend>Calculator</legend>
      <table>
        <tr>
          <td>First operand</td>
          <td><input type="text" , name="fOper"></td>
        </tr>
        <tr>
          <td>Operator</td>
          <td>
            <select name="operator" , id="Operator">
              <option value="+">Add</option>
              <option value="-">Subtract</option>
              <option value="*">Multiply</option>
              <option value="/">Divide</option>
            </select>
          </td>
        </tr>
        <tr>
          <td>Second operand</td>
          <td><input type="text" , name="sOper"></td>
        </tr>
        <tr>
          <td colspan="2"><input type="submit" name="Calculate"></td>
        </tr>
      </table>
    </fieldset>
  </form>
  </body>
</html>
