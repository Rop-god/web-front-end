<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>编辑新闻</title>
    <script src="https://cdn.ckeditor.com/4.24.0/standard/ckeditor.js"></script>
    <style>
        body { font-family: Arial, sans-serif; }
        .container { width: 80%; margin: 0 auto; }
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
    </style>
</head>
<body>
<div class="container">
    <h1>编辑新闻</h1>
    <form action="${pageContext.request.contextPath}/editNews" method="post">
        <input type="hidden" name="id" value="${news.id}">
        <label for="title">标题:</label>
        <input type="text" id="title" name="title" value="${news.title}" required>
        <br>
        <label for="content" style="display: block; margin-bottom: 5px">内容:</label>
        <textarea id="content" name="content" required>${news.content}</textarea>
        <br>
        <button type="submit">保存</button>
    </form>
</div>

<script>
    CKEDITOR.replace('content');
</script>
</body>
</html>
