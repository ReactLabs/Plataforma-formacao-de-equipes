<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!doctype html>
<html lang="en" class="fullscreen-bg" contentType="text/html">

<head>
    <title><tiles:getAsString name="title" /></title>

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- VENDOR CSS -->
    <base href="/">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/assets/vendor/bootstrap/css/bootstrap.min.css" />">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/assets/vendor/font-awesome/css/font-awesome.min.css" />">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/assets/vendor/linearicons/style.css" />">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/assets/vendor/chartist/css/chartist-custom.css" />">
    <!-- MAIN CSS -->
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/assets/css/main.css" />">
    <!-- FOR DEMO PURPOSES ONLY. You should remove this in your project -->
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/assets/css/demo.css" />">
    <!-- GOOGLE FONTS -->
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700" rel="stylesheet">
    <!-- ICONS -->
    <link rel="apple-touch-icon" sizes="76x76" href="<c:url value="/resources/assets/img/apple-icon.png" />">
    <link rel="icon" type="image/png" sizes="96x96" href="<c:url value="/resources/assets/img/favicon.png" />">
    <link rel="stylesheet" type="text/css" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
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
                            <div class="logo text-center"><img src="<c:url value="/resources/assets/img/react.png" />" alt="Klorofil Logo"></div>
                            <p class="lead">Entre com sua conta</p>
                        </div>
                        <form class="form-auth-small" action="/login" method="POST">
                            <div class="form-group">
                                <label for="signin-email" class="control-label sr-only">Login</label>
                                <input type="text" class="form-control" id="signin-email" name="username" placeholder="login">
                            </div>
                            <div class="form-group">
                                <label for="signin-password" class="control-label sr-only">Senha</label>
                                <input type="password" class="form-control" id="signin-password" name="password" placeholder="senha">
                            </div>
                            <div class="row">
                                <button type="submit" class="btn btn-react btn-lg btn-block">LOGIN</button>
                                <a  href="" data-toggle="modal" data-target="#exampleModal">
                                    Desejo me cadastrar
                                </a>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="right">
                    <div class="overlay"></div>
                    <div class="content text">
                        <h1 class="heading">REACTing to the next level!</h1>
                        <p>by The Develovers with ❤</p>
                    </div>
                </div>
                <div class="clearfix"></div>

                <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h4 class="modal-title" id="exampleModalLabel">Cadastro de novos professores:
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </h4>
                            </div>
                            <div class="modal-body">
                                    <h4 class="panel-collapse"> Faça seu pre-cadastro e logo ativaremos sua conta!</h4>

                                    <form:form role="form" action="/cadastro" id="cadastro-form" method="POST" modelAttribute="cadastro">

                                        <form:input type="text" class="form-control" placeholder="Digite seu login" required="required" path="login" />
                                        <br>
                                        <form:input type="text" class="form-control" placeholder="Seu nome" required="required" path="nome" />
                                        <br>
                                        <form:input type="text" class="form-control" placeholder="Deixe alguma observacao (Opcional)"  path="observacao" />
                                        <br>
                                        <form:input type="password" class="form-control" placeholder="Senha" required="required" path="senha"/>
                                        <br>


                            </div>
                            <div class="modal-footer">
                                <button class="btn btn-success" type="submit" id="cadastro">Quero me cadastrar!</button>
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Sair</button>
                            </div>
                                    </form:form>
                        </div>
                    </div>
                </div>


            </div>
        </div>
    </div>
</div>
<!-- END WRAPPER -->
</body>

<script>
    $('#cadastro-form').on("submit", function () {
        alert('Em Breve ativaremos sua conta!');
    });

</script>
</html>
