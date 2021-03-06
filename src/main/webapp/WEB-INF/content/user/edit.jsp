<%--
  Created by IntelliJ IDEA.
  User: Mxia
  Date: 2017/3/21
  Time: 16:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户新增</title>
    <link rel="stylesheet" href="/repo/bootstrap/css/bootstrap.min.css">
</head>
<body>
    <div class="container">

        <div class="row">

            <div class="col-md-4">
                <h2></h2>
                <button class="btn btn-default"><a href="/user/list">查看列表</a></button>
                <h4>编辑用户</h4>
                <form action="/user/add" method="post">
                    <input type="hidden" name="user.id" value="${user.id}">
                    <div class="form-group">
                        <label>姓名</label>
                        <input type="text" name="user.userName" value="${user.userName}" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>密码</label>
                        <input type="password" name="user.password" value="${user.password}" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>金额</label>
                        <input type="text" name="user.money" value="${user.money}" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>状态</label>
                        <select name="user.enable">
                            <option value="true" ${user.enable ? 'selected':''}>正常</option>
                            <option value="false" ${user.enable ? 'selected':''}>禁用</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <button class="btn btn-success">保存编辑</button>
                    </div>
                </form>

            </div>
        </div>

    </div>


</body>
</html>
