<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>UpMob продвижение и тестирование Android приложений.</title>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
    <meta name="format-detection" content = "telephone=no">
    <meta name="description" content="UpMob сервис для продвижения андроид приложений в топ Google Play" />
    <meta name="keywords" content="Продвижение андроид приложений, тестирование, раскрутка мобильных приложений, продвижение в Google Play" />
    <link rel="icon" href="resources/images/favicon.ico" type="image/x-icon">

    <link rel="stylesheet" href="resources/css/camera.css">
    <link rel="stylesheet" href="resources/css/style.css">



    <script src="resources/js/jquery-1.9.1.js"></script>
    <script src="resources/js/jquery-migrate-1.1.1.js"></script>
    <script src="resources/js/jquery.easing.1.3.js"></script>
    <script src="resources/js/superfish.js"></script>
    <script src="resources/js/jquery.mobilemenu.js"></script>
    <script src="resources/js/camera.js"></script>
    <script src="resources/js/jquery.ui.totop.js"></script>
    <script src="resources/js/script.js"></script>
    <script src="resources/js/myforms.js"></script>
    <script>
        $(document).ready(function(){
            $('#slider').camera({
                height: '39.81%',
                loader: true,
                minHeight: '200px',
                navigation: true,
                navigationHover: false,
                pagination: false,
                playPause: false,
                thumbnails: false
            });
        });
    </script>
    <!--[if (gt IE 9)|!(IE)]><!-->
    <script src="resources/js/jquery.mobile.customized.min.js"></script>
    <!--<![endif]-->
    <!--[if lt IE 8]>
    <div style=' clear: both; text-align:center; position: relative;'>
        <a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode">
            <img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today.">
        </a>
    </div>
    <![endif]-->
    <!--[if lt IE 9]>
    <script src="resources/js/html5shiv.js"></script>
    <link rel="stylesheet" media="screen" href="resources/css/ie.css">
    <![endif]-->
</head>
<body class="index">

<jsp:include page="auth.jsp" />
<header>
    <jsp:include page="header.jsp" />

    <%--<!--=================== slider ==================-->--%>
    <div class="camera_wrap" id="slider">
        <div data-src="resources/images/slide1.jpg" data-thumb="resources/images/slide1.jpg">
            <div class="camera_caption">

                <h2 style="color: #ffffff;">
                    Инструмент продвижения
                    android приложений
                </h2>

                <a href="indexreg" class="caption_btn">Регистрация</a>
            </div>
        </div>
        <div data-src="resources/images/slide3.jpg" data-thumb="resources/images/slide3.jpg">
            <div class="camera_caption">
                <h2>
                    Инструмент заработка
                    на android устройствах
                </h2>

                <a href="indexreg" class="caption_btn">Регистрация</a>
            </div>
        </div>
<%--        <div data-src="resources/images/slide2.jpg" data-thumb="resources/images/slide2.jpg">
            <div class="camera_caption">
                <h2>
                    Инструмент для
                    <span>арбитража</span>
                </h2>

                <a href="?page=reg" class="caption_btn">Регистрация</a>
            </div>
        </div>--%>
    </div>


</header>
<!--======================== content ===========================-->
<div id="content">
    <div class="top_box">
        <div class="container">

            <div class="row">
                <div class="grid_12">
                    <h3>Преимущества работы с UpMob</h3>
                </div>
            </div>
            <div class="row">
                <div class="grid_3">
                    <div class="top_item">
                        <a><img src="resources/images/top_icon1.png" alt=""></a>
                        <h4>Выгодно </h4>
                    </div>
                </div>
                <div class="grid_3">
                    <div class="top_item">
                        <a><img src="resources/images/top_icon1.png" alt=""></a>
                        <h4>Легкость создания <br> рекламной кампании</h4>
                    </div>
                </div>
<%--
                <div class="grid_3">
                    <div class="top_item">
                        <a><img src="resources/images/top_icon2.png" alt=""></a>
                        <h4>> 100 000 исполнителей </h4>
                    </div>
                </div>
                <div class="grid_3">
                    <div class="top_item">
                        <a><img src="resources/images/top_icon3.png" alt=""></a>
                        <h4>Быстрота выполнения </h4>
                    </div>
                </div>
--%>
            </div>
        </div>
    </div>

    <div class="second_box">
        <div class="container">
            <div class="row">
                <div class="grid_7">
                    <h4 class="m_47">Почему выбирают нас</h4>
                    <div class="wrapper">
                        <img src="resources/images/page1_img1.png" alt="" class="img1">
                        <div class="extra_wrap">
                            <p class="italic">
                                Наша команда разработчиков имеет многолетний опыт создания и продвижения мобильных приложений.
                                Мы постарались сделать для Вас удобную и гибкую систему самостоятельного продвижения.

                            </p>

                            <ul class="list m_50">
                                <li><a>Низкая цена установки</a></li>
                                <li><a>Полная автоматизация обработки заказов</a></li>
                                <li><a>Гибкие настройки заказов</a></li>
                                <li><a>Быстрое продвижение приложений</a></li>
                                <li><a>Гарантированный результат</a></li>
                                <li><a>Интуитивно понятный интерфейс</a></li>
                                <li><a>Просто создать кампанию и получить результат</a></li>
                                <li><a>Только живые исполнители</a></li>
                                <li><a>Качественное выполнение заказа</a></li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="grid_5">
                    <h4 class="m_71">Цены на услуги.</h4>

                    <div class="stat_box m_68">
                        <div class="stat">
                            5
                        </div>
                        <div class="extra_wrap">
                            <h4><a>Цена инсталла от 5 рублей</a></h4>
                            <p class="italic">
                                Мы изучили условия рынка продвижения мобильных приложений и подобрали для Вас наилучшие условия.
                            </p>
                        </div>
                    </div>


                    <div class="stat_box">
                        <div class="stat">
                            50
                        </div>
                        <div class="extra_wrap">
                            <h4><a>Всего 50 рублей для старта</a></h4>
                            <p class="italic m_30">
                                Минимальный заказ 10 установок. По этому для того, что бы начать работать с нашей системой, Вам потребуется всего 50 рублей.
                            </p>
                        </div>
                    </div>


                </div>
            </div>
        </div>
    </div>


<%--
    <div class="third_box">
        <div class="container">
            <div class="row">
                <div class="grid_8">
                    <img src="resources/images/money.jpg" alt="" class="img">
                    <div class="extra_wrapp">
                        <h3 class="third_box_h3">
                            Готовая схема
                            <span>заработка</span>
                        </h3>
                        <p class="third_box_p">
                            Выполняйте установки приложений из Google Play и зарабатывайте на этом деньги.
                        </p>
                        <!--<a href="#" class="third_box_btn m_30">Узнать подробнее</a>!-->

                    </div>
                </div>
            </div>
        </div>
    </div>
--%>



</div>

<jsp:include page="footer.jsp" />

</body>
</html>