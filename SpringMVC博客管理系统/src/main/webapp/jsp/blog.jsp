<%--
  Created by IntelliJ IDEA.
  User: 熊显付
  Date: 2017/4/11
  Time: 22:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>title</title>
    <link rel="stylesheet" href="/css/bootstrap.min.css">
    <script src="/js/jquery.min.js"></script>
    <script src="/js/bootstrap.min.js"></script>
    <script>
        $(function(){

            $("#add").on("click",function(){
                //默认数量框是1如果数量大于1重新加载模态框数量框的值则变回1
                $("#myModal").modal("toggle");
                $(".add").on("click",function(){
                    $.ajax({
                        type:"POST",
                        data:$("#form").serialize(),
                        datatype:"text",
                        url:"/blog/addblog",
                        contentType:"application/x-www-form-urlencoded",
                        success:function(data){
                            alert(data);
                        }
                    });
                });
            });
            $("#send").on("click",function(){
                $.ajax({
                    url: "/blog/bloglist",
                    type: "POST",
                    data: "id=1998",
                    success:function(data){
                        alert(JSON.stringify(data));
                    }
                });
            })


            $(".alter").on("click",function(){
                $.ajax({
                    url: "/blog/blogid",
                    datatype:"text",
                    type: "POST",
                    data: "id=2",
                    success:function(data){
                        alert(data);
                    }
                });
            })
        })

    </script>
</head>
<body>

<div class="container">

<h3>所有 <input type="button"  id="add" class="btn  btn-default btn-sm" value="添加"/><input type="button" id="send"  value="list" class="btn-primary"></h3>

<table class="table table-bordered table-striped">
    <tr>
        <th>ID</th>
        <th>title</th>
        <th>content</th>
        <th>userByUserid</th>
        <th>操作</th>
    </tr>
    <c:forEach items="${bloglist}" var="blog">
        <tr>
            <td>${blog.id}</td>
            <td>${blog.title} </td>
            <td>${blog.content}</td>
            <td>${blog.userByUserid.id}</td>
            <td>
                <input name="${blog.id}" type="button" class="btn alter btn-sm btn-warning" value="修改">
                <a href="/blog/updateBlog/${blog.id}" type="button" class="btn btn-sm btn-warning">修改</a>
                <a href="/blog/deleteBlog/${blog.id}" type="button" class="btn btn-sm btn-danger">删除</a>
            </td>
        </tr>
    </c:forEach>
</table>
</div>

<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <p>添加博客信息
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                        &times;
                    </button>
                </p>

            </div>
            <div class="modal-body">
                <form class="form-horizontal" id="form">
                    <div class="form-group">
                        <label  class="col-sm-2 control-label">id</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="id" id="id" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">title</label>
                        <div class="col-sm-10">
                            <input type="text" name="title" class="form-control" id="title" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">content</label>
                        <div class="col-sm-10">
                            <input type="text" name="content" class="form-control" id="content" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">userid</label>
                        <div class="col-sm-10">
                            <input type="text" name="userid" class="form-control" id="userid" />
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭
                </button>
                <button type="button" class="btn add btn-default" data-dismiss="modal">提交
                </button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>
</body>
</html>
