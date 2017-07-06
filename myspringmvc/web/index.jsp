<%--
  Created by IntelliJ IDEA.
  User: langye
  Date: 2017/4/14
  Time: 7:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>index</title>
</head>
<body>
<h1>用户信息</h1>
<table border="1px" width="60%">
    <tr>
        <th>编号</th>
        <th>用户名</th>
        <th>密码</th>
    </tr>
    <c:forEach items="${list}" var="user" varStatus="i">
        <tr>
            <td>${i.count}</td>
            <td>${user.userName}</td>
            <td>${user.password}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
