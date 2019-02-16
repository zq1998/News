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
<script>

</script>
<div class="head-box">
    <div class="head-content">
        <div class="action-menu">
            <a href="${path}/xinwen/index" class="tb active">全部</a>
            <a href="${path}/xinwen/other/时政" class="tb">时政</a>
            <a href="${path}/xinwen/guoji" class="tb">国际</a>
            <a href="${path}/xinwen/caijing" class="tb">财经</a>
            <a href="${path}/xinwen/jiaoyu" class="tb">教育</a>
            <a href="${path}/xinwen/wenhua" class="tb">文化</a>
            <a href="${path}/xinwen/jiankang" class="tb">健康</a>
            <a href="${path}/xinwen/keji" class="tb">科技</a>
            <a href="${path}/xinwen/yule" class="tb">娱乐</a>
            <a href="${path}/xinwen/junshi" class="tb">军事</a>
        </div>
        <div class="key-search">
            <form action="/" method="post">
                <input type="text" class="search-txt">
                <a href="#" class="i">
                    <span class="ico"></span>
                </a>
            </form>
        </div>
        <div class="action-nav" onclick="show_this(this)">
            <a href="#" class="register-btn">注册</a>
            <a href="#" class="login-btn">登录</a>
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
<div class="module-login-mask" style="">
    <div class="module-login-container">
        <div class="box-register" >
            <div class="box-login">
                <div class="header" style="border-radius:5px 0 0 0;">登录</div>
                <div class="body-login" style="border-radius:0 0 0 5px;">
                    <div class="box-mobilelogin">
                        <form name="login-form" class="form-mobilelogin" action="#" autocomplete="on">
                            <div class="pr"><input type="text" name="username" id="mobile" placeholder="用户名" class="mobile" tabindex="1" autocomplete="off"></div>
                            <div class="pr"><input type="password" name="password" id="mbpwd" placeholder="密码" class="mbpwd" tabindex="2" autocomplete="off"></div>
                        </form>
                    </div>
                    <div class="box-btn">
                        <div class="btn btn-login pub-icons pub-btn pub-btn-valid">
                            <span onclick="login()">登录</span>
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
                <form action="" name="userForm">
                    <div class="box-register-mobile">
                        <div class="pr">
                            <input type="text" name="username" placeholder="账户" class="rgcode" autocomplete="off">
                        </div>
                        <div class="pr">
                            <input type="password" name="password" placeholder="密码" class="rgpwd" autocomplete="off">
                        </div>
                        <div>
                            <div class="btn btn-register pub-icons pub-btn pub-btn-valid ">
                                <div class="register-inner">
                                    <span onclick="addUser()">注册</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<script>
    function addUser() {
        var form=document.getElementsByName("userForm")[0];
        form.action="<%=basePath %>user/addUser";
        form.method="post";
        form.submit();
    }
    function login() {
        var form1=document.getElementsByName("login-form")[0];
        form1.action="<%=basePath %>user/loginUser";
        form1.method="post";
        form1.submit();
    }
</script>
</body>
</html>