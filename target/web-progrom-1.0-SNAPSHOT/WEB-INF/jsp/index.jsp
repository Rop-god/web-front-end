<%@ page import="com.entity.NewsItem" %>
<%@ page import="javax.imageio.ImageTranscoder" %>
<%@ page pageEncoding="UTF-8" %>
<jsp:useBean id="newsList" scope="request" type="java.util.List<com.entity.NewsItem>"/>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <c:url var="base" value="/"/>
    <base href="${base}">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>软件工程专业</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        html, body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
            height: 100%;
        }
        .wrapper {
            display: flex;
            flex-direction: column;
            min-height: 100%;
        }
        .news-list {
            list-style-type: none;
            padding: 0;
        }

        .news-item {
            margin-bottom: 10px;
        }

        .news-item a {
            text-decoration: none;
            color: #0c3ba1;
        }
        .main-image-container {
            text-align: center;
            margin: 20px 0;
        }

        .main-image-container img {
            width: 100%;
            height: auto;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        #footer {
            text-align: center;
            padding: 10px;
            background-color: #0c3ba1;
            color: white;
            margin-top: 20px;
        }
        .main {
            display: flex;
            height: 100%;
            margin: 20px auto;
            background-color: white;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .main h1 {
            text-align: center;
            color: #0c3ba1;
            margin-bottom: 10px;
        }
        .news-list {
            list-style-type: none;
            padding: 0;
            margin: 0;
        }
        .news-item {
            padding: 10px;
            border-bottom: 1px solid #ddd;
        }
        .news-item a {
            text-decoration: none;
            color: #0c3ba1;
            font-weight: bold;
            font-size: 18px;
        }
        .news-item span {
            display: block;
            color: #999;
            font-size: 14px;
        }
        .news-item:hover {
            background-color: #f9f9f9;
        }
        .side-image-container {
            flex: 1 1 40%;
            margin-bottom: 20px;
        }

        .side-image-container img {
            width: 100%;
            display: block;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .side-container {
            width: 30%;
            flex: 1 1 40%;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
<div class="wrapper">
    <div id="header">
        <%@include file="/WEB-INF/jsp/header.jsp" %>
    </div>
    <div class="main-image-container">
        <img src="resources/index.png" alt="主页图片">
    </div>

    <div class="main">
        <div class="side-image-container">
            <img src="resources/background.png" class="back-img" alt="侧边图片">
        </div>
        <div class="side-container">
            <h1>新闻公告</h1>
            <ul class="news-list">
                <c:forEach var="news" items="${newsList}">
                    <li class="news-item">
                        <a href="newsDetails?uid=${news.id}">${news.title}</a>
                        <span>${news.publish_date}</span>
                    </li>
                </c:forEach>
             </ul>
        </div>
    </div>
    <div id="footer">
        <%@include file="/WEB-INF/jsp/footer.jsp" %>
    </div>
    </div>
</body>
</html>
