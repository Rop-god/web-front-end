<%@ page pageEncoding="UTF-8" %>
<style>
    *{
        padding: 0;
        margin: 0;
        box-sizing: border-box;
    }
    header {
        margin: 10px 0;
        width: 100%;
        display: flex;
        flex-wrap: wrap;
        justify-content: space-between;
    }
    header nav ul {
        display: flex;
        width: 100%;
        padding: 0;
        top: 0;
        position: fixed;
        list-style-type: none;
        background-color: #ffffff;
    }
    header nav li a {
        display: block;
        font-weight: bold;
        color: #111111;
        padding: 14px 16px;
        text-decoration: none;
        transition: color 0.1s;
    }
    header nav li a:hover {
        background-color: #111111;
        color: white;
        text-decoration: none;
    }
    header nav .right {
        border: 2px solid green;
        border-radius: 12px;
    }
    header .header-img img{
        position: relative;
        width: 200px;
        height: 50px;
        left: 10px;
    }
    header .header-text {
        position: relative;
        display: inline-block;
    }
    header .header-two {
        display: none;
        position: absolute;
        background-color: #111111;
        min-width: 160px;
        z-index: 1;
    }
    header .header-two a {
        color: white;
        padding: 12px 16px;
        text-decoration: none;
        display: block;
    }
    header .header-two a:hover {
        background-color: #575757;
    }
    header .header-text:hover .header-two {
        display: block;
    }
    .col-md-1 {width: 8.33%;}
    .col-md-2 {width: 16.67%;}
    .col-md-3 {width: 25%;}
    .col-md-4 {width: 33.33%;}
    .col-md-5 {width: 41.67%;}
    .col-md-6 {width: 50%;}
    .col-md-7 {width: 58.33%;}
    .col-md-8 {width: 66.67%;}
    .col-md-9 {width: 75%;}
    .col-md-10 {width: 83.33%;}
    .col-md-11 {width: 91.67%;}
    .col-md-12 {width: 100%;}
</style>
<header>
    <div class="header">
        <nav>
            <ul>
                <li class="header-img"> <img src="resources/header.png" alt="NEFU" title="NEFU"></li>
                <li><a href="index">首页</a></li>
                <li class="header-text">
                    <a href="#" onclick="return false">专业介绍</a>
                    <div class="header-two" >
                        <a href="resources/html/professional-introduce.html">专业简介</a>
                        <a href="resources/html/professional-direction.html">方向简介</a>
                    </div>
                </li>
                <li class="header-text">
                    <a href="#" onclick="return false">实验室</a>
                    <div class="header-two" >
                        <a href="resources/html/nineonelaboratory.html">921实验室</a>
                        <a href="resources/html/ninethreelaboratory.html">923创新实验室</a>
                        <a href="resources/html/ninefivelaboratory.html">925移动开发实验室</a>
                    </div>
                </li>
                <li class="header-text">
                    <a href="#" onclick="return false">教师队伍</a>
                    <div class="header-two" >
                        <a href="resources/html/Professor.html">教授</a>
                        <a href="resources/html/AssociateProfessor.html">副教授</a>
                        <a href="resources/html/Inspector.html">讲师</a>
                    </div>
                </li>
                <li class="header-text">
                    <a href="resources/html/guide.html" >就业指南</a>
                </li>
                <li class="right"><a href="login">管理员登录</a></li>
            </ul>
        </nav>
    </div>
</header>
