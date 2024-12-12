<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<jsp:useBean id="newsLists" scope="request" type="java.util.List<com.entity.NewsItem>"/>
<%@ page import="com.entity.NewsItem" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>管理员后台</title>
    <script src="https://cdn.ckeditor.com/4.24.0/standard/ckeditor.js"></script>
    <style>
        body { font-family: Arial, sans-serif; }
        .container { width: 80%; margin: 0 auto; }
        .news-form { margin-bottom: 20px; }
        .news-list { list-style: none; padding: 0; }
        .news-item { border: 1px solid #ddd; padding: 10px; margin-bottom: 10px; }
        #title {
            width: 50%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ddd;
            border-radius: 4px;
        }
        #content {
            width: 80%;
            height: 200px;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ddd;
            border-radius: 4px;
        }
        .news-form button[type="submit"] {
            width:60px;
            padding: 10px;
            background: #111111;
            border: none;
            border-radius: 4px;
            color: #fff;
            font-size: 16px;
            cursor: pointer;
            transition: background 0.3s;
        }

        .news-form button[type="submit"]:hover {
            background: #0056b3;
        }
        .content {
            text-indent: 2em;
        }
        .nav {
            border-radius: 4px;
            text-decoration: none;
            color: white;
            font-size: 20px;
            background: #111111;
            border: none;
            width:60px;
            padding: 10px;
            font-weight: bold; /
        }
        .nav:hover {
            background: #f9f9f9 ;
            color: #111111;
            font-weight: bold; /
        }
        .return-button {
            margin-top: 20px;
            text-align: center;
        }

        .return-button a {
            background-color: #0c3ba1;
            color: white;
            padding: 10px 20px;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s;
        }

        .return-button a:hover {
            background-color: #085999;
        }
    </style>
</head>
<body>
<div class="return-button">
    <a href="${pageContext.request.contextPath}/index">返回首页</a>
</div>
<div class="container">

    <h1>新闻公告管理</h1>
    <div class="news-form">
        <h2>添加新闻</h2>
        <form action="${pageContext.request.contextPath}/addNews" method="post">
            <label for="title">标题:</label>
            <input type="text" id="title" name="title" required>
            <br>
            <label for="content" style="display: block; margin-bottom: 5px">内容:</label>
            <textarea id="content" name="content" required></textarea>
            <br>
            <button type="submit">提交</button>
        </form>
    </div>

    <h2>新闻列表</h2>
    <ul class="news-list">
        <%--@elvariable id="newsLists" type="java.util.List<com.entity.NewsItem>"--%>
        <c:forEach var="n" items="${newsLists}">
            <li class="news-item">
                <h1>${n.title}</h1>
                <p><img src="resources/news.png" class="img"></p>
                <p class="content">${n.content}</p>
                <p>${n.publish_date}</p>
                <a href="${pageContext.request.contextPath}/editNews?id=${n.id}" class="nav">编辑</a>
                <a href="${pageContext.request.contextPath}/deleteNews?id=${n.id}" class="nav">删除</a>
            </li>
        </c:forEach>
    </ul>
    <c:if test="${empty newsLists}">
        <p>没有新闻公告可显示。</p>
    </c:if>
</div>

<script>
    CKEDITOR.replace('content');
</script>
</body>
</html>
