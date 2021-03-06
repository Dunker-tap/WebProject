<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>登录界面</title>
    <style>
        * {
            margin: 0;
            padding: 0;
        }

        html {
            height: 100%;
        }

        body {
            height: 100%;
        }

        .container {
            height: 100%;
            background-image: linear-gradient(to right, #fbc2eb, #a6c1ee);
        }

        .login-wrapper {
            background-color: #fff;
            width: 358px;
            height: 588px;
            border-radius: 15px;
            padding: 0 50px;
            position: relative;
            left: 50%;
            top: 50%;
            transform: translate(-50%, -50%);
        }

        .header {
            font-size: 38px;
            font-weight: bold;
            text-align: center;
            line-height: 200px;
        }

        .input-item {
            display: block;
            width: 100%;
            margin-bottom: 20px;
            border: 0;
            padding: 10px;
            border-bottom: 1px solid rgb(128, 125, 125);
            font-size: 15px;
            outline: none;
        }

        .input-item::placeholder {
            text-transform: uppercase;
        }

        .btn input {
            text-align: center;
            padding: 10px;
            width: 100%;
            margin-top: 10px;
            background-image: linear-gradient(to right, #a6c1ee, #fbc2eb);
            color: #fff;
        }

        .msg {
            text-align: center;
            line-height: 88px;
        }

        a {
            text-decoration-line: none;
            color: #abc1ee;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="login-wrapper">
        <div class="header">登录</div>
        <div style="color:red;">${login_msg} ${register_msg}</div>
        <div class="form-wrapper">
            <form action="/loginServlet" method="post" id="form">
                <%--name属性是用来传值的--%>
                <label>
                    <input id="username" type="text" name="username" value="${cookie.username.value}" placeholder="用户名"
                           class="input-item">
                </label>
                <label>
                    <input id="password" type="password" name="password" value="${cookie.password.value}"
                           placeholder="密码" class="input-item">
                </label>
                <p>
                    <label>
                        记住我 <input id="remember" type="checkbox" name="remember" value="1">
                    </label>
                </p>
                <div class="btn">
                    <input type="submit" name="登录">
                    <input type="reset" name="重置">
                </div>
            </form>
        </div>
        <div class="msg">
            没有账号？
            <a href="register.jsp">注册</a>
        </div>
    </div>
</div>
</body>
</html>
