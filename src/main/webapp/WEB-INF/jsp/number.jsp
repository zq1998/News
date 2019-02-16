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
            <a href="${path}/xinwen/fabu" class="tb">发布</a>
            <a href="#" class="tb active">号码查询</a>
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
            <form  class="add-form" action="" name="search-Num" method="post">
                电话号码：<br><input class="form-biaoti" type="text" name="num-num" autocomplete="off"/>
                <h class="number-from"></h>
                <br>
                <%--<input class="form-add" type="button"  value="查询号码信息" onclick="addNum()"/>--%>
            </form>
        </div>
    </div>
</div>
<script>
        var form3=document.getElementsByName("search-Num")[0];
        $(".form-biaoti").blur(function () {
            var nums=document.getElementsByName("num-num")[0];
            var sendNum="http://tcc.taobao.com/cc/json/mobile_tel_segment.htm?tel="+nums.value;
            $.ajax({
                url:sendNum,
                // async:false,
                dataType: 'jsonp',
                success:function (data) {
                    console.log(data);
                    var catName=data.catName;
                    var province=data.province;
                    $(".number-from").text(catName+" "+province);
                }
            });
        });
</script>
</body>
</html>