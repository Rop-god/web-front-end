<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>管理员登录</title>
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            font-family: Arial, sans-serif;
            background: aqua;

        }

        .login-container {
            width: 60%;
            max-width: 400px;
            padding: 20px;
            background: #fff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            text-align: center;
        }

        .login-container h2 {
            margin-bottom: 20px;
            font-size: 24px;
            color: #333;
        }

        .login-container label {
            display: block;
            margin-bottom: 8px;
            text-align: left;
            color: #666;
        }

        .login-container input[type="text"],
        .login-container input[type="password"] {
            width: 90%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ddd;
            border-radius: 4px;
        }

        .login-container input[type="submit"] {
            width: 90%;
            padding: 10px;
            background: #007bff;
            border: none;
            border-radius: 4px;
            color: #fff;
            font-size: 16px;
            cursor: pointer;
            transition: background 0.3s;
        }

        .login-container input[type="submit"]:hover {
            background: #0056b3;
        }

        .login-container a {
            display: block;
            margin-top: 10px;
            color: #007bff;
            text-decoration: none;
            font-size: 14px;
        }

        .login-container a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
<div class="login-container">
    <h2>管理员登录</h2>
    <form action="${pageContext.request.contextPath}/login" method="post">
        <label for="username">用户名：</label>
        <input type="text" id="username" name="username" placeholder="账号admin" required>
        <br>
        <label for="pwd">密码：</label>
        <input type="password" id="pwd" name="pwd" placeholder="密码admin" required >
        <br>
        <button type="submit">登录</button>
    </form>
    <a href="${pageContext.request.contextPath}/index" class="return">返回首页</a>
</div>

</body>

</html>
