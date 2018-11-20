<%--
  Created by IntelliJ IDEA.
  User: Brenno
  Date: 20/11/2018
  Time: 11:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="en" class="fullscreen-bg">

<head>
    <title><tiles:getAsString name="title" /></title>

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- VENDOR CSS -->
    <link rel="stylesheet" href="<c:url value="/resources/assets/vendor/bootstrap/css/bootstrap.min.css" />">
    <link rel="stylesheet" href="<c:url value="/resources/assets/vendor/font-awesome/css/font-awesome.min.css" />">
    <link rel="stylesheet" href="<c:url value="/resources/assets/vendor/linearicons/style.css" />">
    <link rel="stylesheet" href="<c:url value="/resources/assets/vendor/chartist/css/chartist-custom.css" />">
    <!-- MAIN CSS -->
    <link rel="stylesheet" href="<c:url value="/resources/assets/css/main.css" />">
    <!-- FOR DEMO PURPOSES ONLY. You should remove this in your project -->
    <link rel="stylesheet" href="<c:url value="/resources/assets/css/demo.CSS" />">
    <!-- GOOGLE FONTS -->
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700" rel="stylesheet">
    <!-- ICONS -->
    <link rel="apple-touch-icon" sizes="76x76" href="<c:url value="/resources/assets/img/apple-icon.png" />">
    <link rel="icon" type="image/png" sizes="96x96" href="<c:url value="/resources/assets/img/favicon.png" />">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
</head>

<body>
<!-- WRAPPER -->
<div id="wrapper">
    <div class="vertical-align-wrap">
        <div class="vertical-align-middle">
            <div class="auth-box ">
                <div class="left">
                    <div class="content">
                        <div class="header">
                            <div class="logo text-center"><img src="<c:url value="/resources/assets/img/logo-dark.png" />" alt="Klorofil Logo"></div>
                            <p class="lead">Login to your account</p>
                        </div>
                        <form class="form-auth-small" action="index.php">
                            <div class="form-group">
                                <label for="signin-email" class="control-label sr-only">Email</label>
                                <input type="email" class="form-control" id="signin-email" value="samuel.gold@domain.com" placeholder="Email">
                            </div>
                            <div class="form-group">
                                <label for="signin-password" class="control-label sr-only">Password</label>
                                <input type="password" class="form-control" id="signin-password" value="thisisthepassword" placeholder="Password">
                            </div>
                            <div class="form-group clearfix">
                                <label class="fancy-checkbox element-left">
                                    <input type="checkbox">
                                    <span>Remember me</span>
                                </label>
                            </div>
                            <button type="submit" class="btn btn-primary btn-lg btn-block">LOGIN</button>
                            <div class="bottom">
                                <span class="helper-text"><i class="fa fa-lock"></i> <a href="#">Forgot password?</a></span>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="right">
                    <div class="overlay"></div>
                    <div class="content text">
                        <h1 class="heading">Free Bootstrap dashboard template</h1>
                        <p>by The Develovers</p>
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
</div>
<!-- END WRAPPER -->
</body>

</html>
