<%--
  Created by IntelliJ IDEA.
  User: LHF
  Date: 2017/6/28
  Time: 19:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>SignUp</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Free HTML5 Template by FreeHTML5.co" />
    <meta name="keywords" content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />




    <!-- Facebook and Twitter integration -->
    <meta property="og:title" content=""/>
    <meta property="og:image" content=""/>
    <meta property="og:url" content=""/>
    <meta property="og:site_name" content=""/>
    <meta property="og:description" content=""/>
    <meta name="twitter:title" content="" />
    <meta name="twitter:image" content="" />
    <meta name="twitter:url" content="" />
    <meta name="twitter:card" content="" />

    <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
    <link rel="shortcut icon" href="favicon.ico">

    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,700,300' rel='stylesheet' type='text/css'>

    <link rel="stylesheet" href="LoginPage/css/log/bootstrap.min.css">
    <link rel="stylesheet" href="LoginPage/css/log/animate.css">
    <link rel="stylesheet" href="LoginPage/css/log/style.css">

    <!-- Modernizr JS -->
    <script src="LoginPage/js/log/modernizr-2.6.2.min.js"></script>
    <!-- FOR IE9 below -->
    <!--[if lt IE 9]>
    <script src="LoginPage/js/log/respond.min.js"></script>
    <![endif]-->

</head>
<body class="style-3">

<!--<form name="form1" action="Login.action"  >
</form> <script language="javascript"> document.form1.submit() </script>>-->

<div class="container">
    <div class="row">
        <div class="col-md-12 text-center">
            <ul class="menu">

                <li class="active"><a href="index.jsp">主页</a></li>

            </ul>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4 col-md-push-8">


            <!-- Start Sign In Form -->
            <form action="SignUp.action" class="fh5co-form animate-box" data-animate-effect="fadeInRight">
                <h2>注册</h2>
                <div class="form-group">
                    <div class="alert alert-success" role="alert">欢迎使用在线学习平台</div>
                </div>
                <div class="form-group">
                    <label for="name" class="sr-only">用户名</label>
                    <input type="text" name="Name" class="form-control" id="Name" placeholder="Name" autocomplete="off">
                </div>
                <div class="form-group">
                    <label for="email" class="sr-only">邮箱</label>
                    <input type="email" name="Email" class="form-control" id="Email" placeholder="Email" autocomplete="off">
                </div>
                <div class="form-group">
                    <label for="password" class="sr-only">密码</label>
                    <input type="password" name="Password" class="form-control" id="Password" placeholder="Password" autocomplete="off">
                </div>
                <div class="form-group">
                    <label for="Permission" class="sr-only">权限</label>
                    <input type="text" name="Permission" class="form-control" id="Permission" placeholder="Permission of you" autocomplete="off">
                </div>
                <div class="form-group">
                    <label for="remember"><input type="checkbox" id="remember"> 记住我</label>
                </div>
                <div class="form-group">
                    <p>已经注册? <a href="login.jsp">登入</a></p>
                </div>
                <div class="form-group">
                    <input type="submit" value="注册" class="btn btn-primary">
                </div>
            </form>
            <!-- END Sign In Form -->


        </div>
    </div>
    <div class="row" style="padding-top: 60px; clear: both;">
        <div class="col-md-12 text-center"><p><small>&copy; All Rights Reserved. More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></small></p></div>
    </div>
</div>

<!-- jQuery -->
<script src="LoginPage/js/log/jquery.min.js"></script>
<!-- Bootstrap -->
<script src="LoginPage/js/log/bootstrap.min.js"></script>
<!-- Placeholder -->
<script src="LoginPage/js/log/jquery.placeholder.min.js"></script>
<!-- Waypoints -->
<script src="LoginPage/js/log/jquery.waypoints.min.js"></script>
<!-- Main JS -->
<script src="LoginPage/js/log/main.js"></script>

</body>
</html>
