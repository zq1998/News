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
<script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/echarts.min.js"></script>
<script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts-gl/echarts-gl.min.js"></script>
<script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts-stat/ecStat.min.js"></script>
<script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/extension/dataTool.min.js"></script>
<script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/map/js/china.js"></script>
<script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/map/js/world.js"></script>
<script type="text/javascript" src="https://api.map.baidu.com/api?v=2.0&ak=ZUONbpqGBsYGXNIYHicvbAbM"></script>
<script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/extension/bmap.min.js"></script>
<script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/simplex.js"></script>
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
            <a href="${path}/xinwen/fabu" class="tb ">发布</a>
            <a href="${path}/xinwen/number" class="tb ">号码查询</a>
            <a href="#" class="tb active">图表</a>

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
<div id="container" style="height: 600px;margin-top: 44px"></div>
<div id="container1" style="height: 600px;margin-top: 644px"></div>
<script type="text/javascript">
    var dom = document.getElementById("container");
    var myChart = echarts.init(dom);
    var app = {};
    option = null;
    var data = genData(50);

    option = {
        title : {
            text: '',
            subtext: '',
            x:'center'
        },
        tooltip : {
            trigger: 'item',
            formatter: "{a} <br/>{b} : {c} ({d}%)"
        },
        legend: {
            type: 'scroll',
            orient: 'vertical',
            right: 10,
            top: 20,
            bottom: 20,
            data: data.legendData,

            selected: data.selected
        },
        series : [
            {
                name: '姓名',
                type: 'pie',
                radius : '55%',
                center: ['40%', '50%'],
                data: data.seriesData,
                itemStyle: {
                    emphasis: {
                        shadowBlur: 10,
                        shadowOffsetX: 0,
                        shadowColor: 'rgba(0, 0, 0, 0.5)'
                    }
                }
            }
        ]
    };
    function genData(count) {
        var json1={"科技":399,"食品":435,"娱乐":361,"汽车":360,"时政":138,"时尚":18,"港澳":297,"财经":226,"旅游":240};
        var nameList = new Array();
        nameList=["科技","食品","娱乐","汽车","时政","时尚","港澳","财经","旅游"];
        var legendData = [];
        var seriesData = [];
        var selected = {};
        for (var i = 0; i < nameList.length; i++) {
            var name = nameList[i];
            legendData.push(name);
            seriesData.push({
                name: name,
                value: json1[name]
            });
            selected[name] = i <9;
        }

        return {
            legendData: legendData,
            seriesData: seriesData,
            selected: selected
        };

        function makeWord(max, min) {
            var nameLen = Math.ceil(Math.random() * max + min);
            var name = [];
            for (var i = 0; i < nameLen; i++) {
                name.push(nameList[Math.round(Math.random() * nameList.length - 1)]);
            }
            return name.join('');
        }
    }
    if (option && typeof option === "object") {
        myChart.setOption(option, true);
    }
</script>
<script type="text/javascript">
    var dom = document.getElementById("container1");
    var myChart = echarts.init(dom);
    var app = {};
    option = null;
    var data = genData(50);

    option = {
        title : {
            text: '',
            subtext: '',
            x:'center'
        },
        tooltip : {
            trigger: 'item',
            formatter: "{a} <br/>{b} : {c} ({d}%)"
        },
        legend: {
            type: 'scroll',
            orient: 'vertical',
            right: 10,
            top: 20,
            bottom: 20,
            data: data.legendData,

            selected: data.selected
        },
        series : [
            {
                name: '姓名',
                type: 'pie',
                radius : '55%',
                center: ['40%', '50%'],
                data: data.seriesData,
                itemStyle: {
                    emphasis: {
                        shadowBlur: 10,
                        shadowOffsetX: 0,
                        shadowColor: 'rgba(0, 0, 0, 0.5)'
                    }
                }
            }
        ]
    };
    function genData(count) {
        var json1={"1月":399,"2月":435,"3月":361,"4月":360,"5月":138,"6月":18,"7月":297,"8月":226,"9月":240,"10月":399,"11月":435,"12月":361};
        var nameList = new Array();
        nameList=["1月","2月","3月","4月","5月","6月","7月","8月","9月","10月","11月","12月"];
        var legendData = [];
        var seriesData = [];
        var selected = {};
        for (var i = 0; i < nameList.length; i++) {
            var name = nameList[i];
            legendData.push(name);
            seriesData.push({
                name: name,
                value: json1[name]
            });
            selected[name] = i < 13;
        }

        return {
            legendData: legendData,
            seriesData: seriesData,
            selected: selected
        };

        function makeWord(max, min) {
            var nameLen = Math.ceil(Math.random() * max + min);
            var name = [];
            for (var i = 0; i < nameLen; i++) {
                name.push(nameList[Math.round(Math.random() * nameList.length - 1)]);
            }
            return name.join('');
        }
    }
    if (option && typeof option === "object") {
        myChart.setOption(option, true);
    }
</script>
</body>
</html>