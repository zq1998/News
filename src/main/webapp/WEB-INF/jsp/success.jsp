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
</head>
<body>
<div class="head-box">
    <div class="head-content">
        <div class="action-menu">
            <a href="#" class="tb active">全部</a>
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
        <div class="content-list" id="content-list">
            <c:forEach var="xinwen" items="${requestScope.get('list')}" varStatus="status" end="35">
                <div class="item">
                    <div class="news-content">
                        <div class="part1">
                            <a href="#" class="show-content color-chag" target="_blank" onmousedown="linksClickStat(23137036);">
                                    ${xinwen.biaoti}
                            </a>
                        </div>
                        <div class="area-summary">
                        <span class="summary">
                                ${xinwen.zhaiyao}
                        </span>
                        </div>
                        <div class="part2">
                        <span class="discus-a">
                                ${xinwen.userid}
                        </span>
                            <span class="discus-b">
                                    ${xinwen.time}
                            </span>
                            <span class="discus-c">
                                    ${xinwen.type}
                            </span>
                            <span class="share-site-to" style="visibility: visible;" >
                            <i>分享到</i>
                            <span class="share-icon">
                                <a class="icon-sina"  title="分享到新浪微博" href="#" ></a>
                                <a class="icon-douban"  title="分享到豆瓣" href="#" ></a>
                                <a class="icon-qqzone"  title="分享到QQ空间" href="#" ></a>
                                <a class="icon-renren"  title="分享到人人网" href="#" ></a>
                            </span>
                        </span>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</div>
<div class="module-login-mask" style="display: none">
    <div class="module-login-container">
        <div class="box-register" >
            <div class="box-login">
                <div class="header" style="border-radius:5px 0 0 0;">登录</div>
                <div class="body-login" style="border-radius:0 0 0 5px;">
                    <div class="box-mobilelogin">
                        <form class="form-mobilelogin" action="#" autocomplete="on">
                            <div class="pr"><input type="text" name="mobile" id="mobile" placeholder="用户名" class="mobile" tabindex="1"></div>
                            <div class="pr"><input type="password" name="mbpwd" id="mbpwd" placeholder="密码" class="mbpwd" tabindex="2"></div>
                        </form>
                    </div>
                    <div class="box-btn">
                        <div class="btn btn-login pub-icons pub-btn pub-btn-valid">
                            <span>登录</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="header box-active" style="border-radius:0 5px 0 0;">
                <span>注册</span>
                <div class="go-out" onclick="hide_this(this)" style="position:absolute;right:8px;top:8px;width:15px;height:15px;">
                    <div class="btn-close icons dialog-btn-close" style="background-color: silver;border-radius: 8px">
                    </div>
                </div>
            </div>
            <div class="body-register" style="border-radius:0 0 5px 0;">
                <div class="box-register-mobile">
                    <div class="pr">
                        <input type="text" placeholder="账户" class="rgcode">
                    </div>
                    <div class="pr">
                        <input type="password" placeholder="密码" class="rgpwd">
                    </div>
                    <div>
                        <div class="btn btn-register pub-icons pub-btn pub-btn-valid ">
                            <div class="register-inner">
                                <span >注册</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>