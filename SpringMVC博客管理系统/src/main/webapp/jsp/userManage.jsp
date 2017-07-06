<%--
  Created by IntelliJ IDEA.
  User: sjj
  Date: 2015/10/24 0024
  Time: 19:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>SpringMVC 用户管理</title>
  <link rel="stylesheet" href="/css/bootstrap.min.css">
    <script src="/js/jquery.min.js"></script>
    <script src="/js/bootstrap.min.js"></script>
  <script>
      $(function(){
          $("#send").on("click",function(){
              $.ajax({
                  url: "/userlist",
                  type: "POST",
                  success:function(data){
                      alert(JSON.stringify(data));
                  }
              });
          })
      })
  </script>
</head>
<body>
<div class="container">
  <h1>SpringMVC 博客系统-用户管理</h1>
  <hr/>

  <h3>所有用户 <a href="/addUser" type="button" class="btn btn-default btn-sm">添加</a>
      <input type="button" id="send"  value="list" class="btn-primary">
  </h3>

  <!-- 如果用户列表为空 -->
  <c:if test="${empty userList}">
    <p class="bg-warning">
      <br/>
      User表为空，请<a href="/addUser" type="button" class="btn btn-default btn-sm">添加</a>
      <br/>
      <br/>
    </p>
  </c:if>

  <!-- 如果用户列表非空 -->
  <c:if test="${!empty userList}">
    <table class="table table-bordered table-striped">
      <tr>
        <th>ID</th>
        <th>姓名</th>
        <th>密码</th>
        <th>操作</th>
      </tr>

      <c:forEach items="${userList}" var="user">
        <tr>
          <td>${user.id}</td>
          <td>${user.firstName} ${user.lastName}</td>
          <td>${user.password}</td>
          <td>
            <a href="/showUser/${user.id}" type="button" class="btn btn-sm btn-success">详情</a>
            <a href="/updateUser/${user.id}" type="button" class="btn btn-sm btn-warning">修改</a>
            <a href="/deleteUser/${user.id}" type="button" class="btn btn-sm btn-danger">删除</a>
          </td>
        </tr>
      </c:forEach>
    </table>
  </c:if>
</div>


</body>
</html>
