<%--
  Created by IntelliJ IDEA.
  User: fengxiangli
  Date: 16/4/19
  Time: 上午3:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>北京大学图书管理系统-管理员 修改管理员用户</title>

    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<div class="container">
    <h1>北京大学图书管理系统-管理员 修改管理员用户</h1>
    <hr/>
    <form:form action="/admin/adminUsers/updateP" method="post" commandName="adminUser" role="form">
        <div class="form-group">
            <label for="account">Account:</label>
            <input type="text" class="form-control" id="account" name="account" placeholder="Enter Account" value="${adminUser.account}"/>
        </div>
        <div class="form-group">
            <label for="password">Password:</label>
            <input type="password" class="form-control" id="password" name="password" placeholder="Enter Password:"/>
        </div>
        <div class="form-group">
            <select name="type">
                <option value=0>普通管理员</option>
                <option value=1>超级管理员</option>
            </select>
        </div>

        <!-- 把 id 一并写入 userP 中 -->
        <input type="hidden" id="idadminstrator" name="idadminstrator" value="${adminUser.idadminstrator}"/>
        <div class="form-group">
            <a href="/admin/adminUsers/back" type="button" class="btn btn-primary btn-sm">返回</a></h3>
            <button type="submit" class="btn btn-sm btn-success">提交</button>
        </div>
    </form:form>
</div>

<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</body>
