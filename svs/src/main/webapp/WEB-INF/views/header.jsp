<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="sec"
          uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="container">
    <div class="row">
        <div class="grid_12">
            <!--======================== logo ============================-->
            <h1>
                <a href="index"><img src="resources/images/logo.png" alt=""></a>
            </h1>
            <!--======================== menu ============================-->
            <nav>
                <ul class="sf-menu clearfix">
                    <li><a href="index">Главная</a></li>
                    <li><a href="?page=customer">Заказчикам</a></li>
                    <li><a href="?page=performer">Заработать</a></li>

                    <sec:authorize ifNotGranted="ROLE_CUSTOMER">
                        <li><a href="#" onclick="show('enter');">Вход</a></li>
                        <li class="current"><a href="indexreg">Регистрация</a>
                            <ul>
                                <li><a href="indexregc">Заказчик</a></li>
                                <li><a href="indexregw">Исполнитель</a></li>
                            </ul>
                        </li>
                    </sec:authorize>

                    <sec:authorize ifAnyGranted="ROLE_CUSTOMER">
                        <li><a href="promote">В Панель</a></li>
                    </sec:authorize>

                </ul>
            </nav>
        </div>
    </div>
</div>
