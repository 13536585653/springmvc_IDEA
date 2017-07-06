<%--
  Created by IntelliJ IDEA.
  User: langye
  Date: 2017/4/20
  Time: 11:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>主页</title>
</head>
<body>
    <table border="1px">
        <tr>
            <th>编号</th>
            <th>图书名称</th>
            <th>数量</th>
        </tr>

        <c:forEach items="${list}" var="book" varStatus="i">
            <tr>
                <td>${i.count}</td>
                <td>${book.name}</td>
                <td>${book.number}</td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
