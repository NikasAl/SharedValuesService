<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Создание рекламной кампании</title>
    <link rel="icon" href="/resources/images/favicon.ico" type="image/x-icon"/>

    <link rel="stylesheet" href="/resources/css/bootstrap-3.1.1.min.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/bootstrap-multiselect.css" type="text/css">
    <script type="text/javascript" src="/resources/js/jquery-2.1.0.min.js"></script>
    <script type="text/javascript" src="/resources/js/bootstrap-3.1.1.min.js"></script>
    <script type="text/javascript" src="/resources/js/bootstrap-multiselect.js"></script>
    <script type="text/javascript" src="/resources/js/orders.js"></script>
    <script type="text/javascript" src="http://zhur-artur.ru/demo/js/jquery-ui-1.10.3.custom.min.js"></script>
    <!-- Initialize the plugin: -->
    <script type="text/javascript">
        $(document).ready(function () {
            $('.multiselect').multiselect({
                dropRight: true,
                includeSelectAllOption: true,
                buttonWidth: '300px'
            });
        });
        $('#example1').multiselect();
    </script>
    <style type="text/css">
        .hr_head {
            margin-top: 3px !important;
        }
    </style>
    <link rel="stylesheet" href="/resources/css/promote.css" type="text/css">
</head>

<body>
<jsp:include page="mainmenu.jsp"/>

<div class="lines">
    <div class="m_menu mm_menu" style="border-left:0px;"><a href="?page=orders&sub=create" class="m_c">Создать</a></div>
    <div class="m_menu l_c"><a href="?page=orders&sub=all" class="m_c">Кампании</a></div>
    <div style="clear: both;"></div>
</div>

<div class="b_body">
    <div class="in_body">
        <div class="body-content">
            <form method="post" name="create_form" onsubmit="return check()" action="core/create.php">
                <table>
                    <tr>
                        <td>Название приложения:*</td>
                        <td>
                            <input type="text" name="name" class="inpt" id="name">

                            <div class="help">Имя приложения из GooglePlay.</div>
                        </td>
                    </tr>
                    <tr>
                        <td>ID приложения:*</td>
                        <td>
                            <input type="text" name="idapp" class="inpt" id="idapp" onblur="SendRequest();">

                            <div class="help">Ссылка или ID приложения в GooglePlay.</div>
                        </td>
                    </tr>
                    <tr>
                        <td>Изображение:</td>
                        <td>
                            <div id="response"></div>
                            <input type="hidden" name="imgs" id="imgs">

                            <div class="help">Подгружается автоматически.</div>
                        </td>
                    </tr>
                    <tr>
                        <td>Ссылка для переадресации:</td>
                        <td>
                            <input type="text" name="link" class="inpt" placeholder="http://">

                            <div class="help">Укажите ссылку транзитной страницы.</div>
                        </td>
                    </tr>
                    <tr>
                        <td>Источник перехода (referer)<sup style="color: red; font-weight:bold;">
                            <small>new</small>
                        </sup>:
                        </td>
                        <td>
                            <input type="text" name="referer" class="inpt" placeholder="http://">

                            <div class="help">Переход будет считаться с этого адреса. (функционал тестируется)</div>
                        </td>
                    </tr>
                    <tr>
                        <td>Описание заказа*</td>
                        <td>
                            <textarea rows="" cols="" class="inpt" id="text" name="text"></textarea>

                            <div class="help">Введите комментарий к заказу.</div>
                        </td>
                    </tr>
                    <tr>
                        <td>Выберите Страну(ы):</td>
                        <td>
                            <select class="multiselect" multiple="multiple" name="geo[]" style="width:500px;">
                                <option value="RU">Россия</option>
                                <option value="UA">Украина</option>
                                <option value="BY">Белорусия</option>
                                <option value="KZ">Казахстан</option>

                                <!--<option value="AU">Австралия</option>
                                <option value="UK">Великобритания</option>
                                <option value="DE">Германия</option>
                                <option value="DK">Дания</option>
                                <option value="CA">Канада</option>
                                <option value="NL">Нидерланды</option>
                                <option value="NZ">Новая Зеландия</option>
                                <option value="NO">Норвегия</option>
                                <option value="KR">Республика Корея</option>
                                <option value="US">Сша</option>
                                <option value="SG">Сингапур</option>
                                <option value="FI">Финляндия</option>
                                <option value="FR">Франция</option>
                                <option value="CH">Швейцария</option>
                                <option value="SE">Швеция</option>
                                <option value="JP">Япония</option>!-->

                            </select>

                            <div class="help">Укажите страны, исполнители из которых подойдут для Вашего заказа.</div>
                        </td>
                    </tr>
                    <tr>
                        <td>Количество установок в час:</td>
                        <td>
                            <input type="text" name="only" class="inpt">

                            <div class="help">При установке лимитов, инсталлы будут идти более медленно.<br>0 или поле
                                не заполнено - без лимитов.
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <input type="checkbox" name="launch" value="launch" onchange="checkbox(); itog();">&nbsp;Проверять
                            приложение на запуск.
                            <div class="help">Запустить скачанное приложение.</div>
                        </td>
                    </tr>
                    <tr>
                        <td>Цена:</td>
                        <td>
                            <input type="NUMBER" name="price" class="inpt" value="6" id="price" onkeyup="itog();"
                                   onblur="CheckSum();" min=6 max=9999999>

                            <div class="help">Цена за одно выполненное задание. (min 6 руб.)</div>
                        </td>
                    </tr>
                    <tr>
                        <td>Количество исполнителей:*</td>
                        <td>
                            <input type="NUMBER" name="sum" class="inpt" id="sum" value="100" onkeyup="itog();" min=10
                                   max=9999999>

                            <div class="help">Требуемое количество исполнителей. (min 10)</div>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            Требуемая сумма:
                        </td>
                        <th id="itog">
                            600 р.
                        </th>
                    </tr>

                    <tr>
                        <td></td>
                        <td><input type="checkbox" name="lic">&nbsp;<a href="rules.php"
                                                                       onClick='window.open("rules.php","rules","width=700, height=900, left="+((screen.width-700)/2)+", top="+(screen.height-600)+", toolbar=0, location=0, menubar=0, scrollbars=1, resizable=0, status=1"); return false;'>Я
                            принимаю условия пользовательского соглашения.</a></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="submit" value="Отправить на модерацию" class="inpt"></td>
                    </tr>
                </table>
            </form>
        </div>
    </div>
</div>
</div>

</body>
</html>