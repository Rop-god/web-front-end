<jsp:useBean id="newsItem" scope="request" type="com.entity.NewsItem"/>
<%@ page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>新闻详情</title>
    <style>
        .img {
            margin-bottom:10px ;
            box-shadow: 2px 2px 5px rgba(0, 0, 0, 0.2);
        }
        .return-button {
            margin-top: 20px;
            text-align: center;
            bottom: 0;
        }

        .return-button a {
            color: #111111;
            padding: 10px 20px;
            text-decoration: none;
            transition: background-color 0.3s;
            font-weight: bold;
        }

        .return-button a:hover {
            background-color: #085999;
        }
    </style>
</head>
<body>
<h1>${newsItem.title}</h1>
<p>${newsItem.publish_date}</p>
<p><img src="resources/news.png" class="img"></p>
<div>${newsItem.content}</div>
<div class="return-button">
    <a href="index">返回首页</a>
</div></body>
</html>
