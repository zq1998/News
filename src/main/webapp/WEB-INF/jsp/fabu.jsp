<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<% 
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"; 
%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>全部</title>
<script type="text/javascript" src="<%=basePath %>js/now.js" ></script>
<script type="text/javascript" src="<%=basePath %>js/jquery.js" ></script>
<link rel="stylesheet" href="<%=basePath %>css/style.css"/>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="head-box">
    <div class="head-content">
        <div class="action-menu">
            <a href="${path}/xinwen/all" class="tb ">全部</a>
            <a href="${path}/xinwen/other1/时政" class="tb">时政</a>
            <a href="#" class="tb">财经</a>
            <a href="#" class="tb">科技</a>
            <a href="#" class="tb">娱乐</a>
            <a href="#" class="tb">汽车</a>
            <a href="#" class="tb">港澳</a>
            <a href="#" class="tb">食品</a>
            <a href="#" class="tb">旅游</a>
            <a href="#" class="tb">文化</a>
            <a href="#" class="tb active">发布</a>
            <a href="${path}/xinwen/number" class="tb">号码查询</a>
            <a href="${path}/xinwen/charts" class="tb">图表</a>
        </div>
        <div class="key-search">
            <form action="/" method="post">
                <input type="text" class="search-txt">
                <a href="#" class="i">
                    <span class="ico"></span>
                </a>
            </form>
        </div>
        <div class="action-nav" >
            <a href="#" class="register-btn"></a>
        </div>
    </div>
</div>
<div class="main-content-box">
    <div class="main-content">
        <div class="form ">
            <form  class="add-form" action="" name="add-Xinwen" method="post">
                标题：<br><input class="form-biaoti" type="text" name="biaoti" autocomplete="off"/><br>
                <br>
                摘要：<br> <input class="form-zhaiyao" type="text" name="zhaiyao" value="" autocomplete="off"/><br>
                <br>
                类型：<br><select class="form-type" type="text" name="type" >
                <option value="时政">时政</option>
                <option value="财经">财经</option>
                <option value="科技">科技</option>
                <option value="娱乐">娱乐</option>
                <option value="汽车">汽车</option>
                <option value="港澳">港澳</option>
                <option value="食品">食品</option>
                <option value="旅游">旅游</option>
                <option value="文化">文化</option>
            </select>
                <br>
                <br>
                作者ID：<br> <input class="form-id" type="text" name="userid" value="" autocomplete="off"/><br>
                <br>
                <input class="form-add" type="button"  value="发布新闻" onclick="addXinwen()"/>
                <input type="text" name="status" value="0" style="visibility: hidden"/><br>
                <input type="text" name="message" value="null"  style="visibility: hidden"/><br>
            </form>
        </div>
    </div>
</div>
<script>
    var timestamp1 = Date.parse( new Date());
    document.getElementById("time-now").value=timestamp1;
    function addXinwen() {
        var form3=document.getElementsByName("add-Xinwen")[0];
        form3.action="<%=basePath%>xinwen/addXinwen";
        form3.method="post";
        form3.submit();
    }
</script>
</body>
</html>