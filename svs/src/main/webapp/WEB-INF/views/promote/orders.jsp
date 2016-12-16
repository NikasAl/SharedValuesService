<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<jsp:include page="head.jsp" />

<body>

<jsp:include page="mainmenu.jsp" />

<div class="w1024">

    <div class="lines">
        <div class="m_menu l_c" style="border-left:0px;"><a href="/promote/orders/create" class="m_c">Создать</a></div>
        <div class="m_menu mm_menu"><a href="?page=orders&sub=all" class="m_c">Кампании</a></div>
        <div style="clear: both;"></div>
    </div>

    <div class="b_body">
        <div class="in_body">
            <div class="body-content">

                <table cellspacing="0" cellpadding="0" class="tiket_tbl">
                    <tr>
                        <th>Статус</th>
                        <th width=90>Статистика</th>
                        <th width=100>Логотип</th>
                        <th>Описание</th>
                        <th>Настройки</th>
                        <th width=145>Управление</th>

                    </tr>
                    <tr>
                        <td style="vertical-align: middle;" align=center><img src="img/completed.png"></td>
                        <td><b>Выполнено:</b><br>91 из 150</td>
                        <td><img src="imgapp/44f2d4f25f566f22f00e2f1eb44be946.jpg"></td>
                        <td>
                            <b>Имя:</b> Tanks Mash 3D<br>
                            <b>ID:</b> ru.electronikas.tanksmashgpfree<br>

                        </td>
                        <td>
                            <b>Задание:</b><br>+ скачать
                            <br><b>Лимит: </b>10 в час.<br><b>ГЕО:</b> Все страны
                            <br><b>Цена за задание:</b> 6 руб.<br>
                        </td>
                        <td style="vertical-align: middle;" align=center>
                            <!--<a href="#" class="edit_ico"><img src="img/edit.png"></a>!-->
                            <a href="core/orders.php?status=active&id=1743" class="edit_ico"><img src="img/play.png"></a>
                            <a href="core/orders.php?status=delete&id=1743" onclick="return confirm('Вы действительно хотите удалить данный заказ?')" class="edit_ico"><img src="img/dell.png"></a>
                        </td>
                    </tr>


                    <tr>
                        <td style="vertical-align: middle;" align=center><img src="img/completed.png"></td>
                        <td><b>Выполнено:</b><br>90 из 90</td>
                        <td><img src="imgapp/44f2d4f25f566f22f00e2f1eb44be946.jpg"></td>
                        <td>
                            <b>Имя:</b> Tanks Mash 3D<br>
                            <b>ID:</b> ru.electronikas.tanksmashgpfree<br>

                        </td>
                        <td>
                            <b>Задание:</b><br>+ скачать
                            <br><b>Лимит: </b>10 в час.<br><b>ГЕО:</b> Все страны
                            <br><b>Цена за задание:</b> 6 руб.<br>
                        </td>
                        <td style="vertical-align: middle;" align=center>
                            <!--<a href="#" class="edit_ico"><img src="img/edit.png"></a>!-->
                            <a href="core/orders.php?status=active&id=1708" class="edit_ico"><img src="img/play.png"></a>
                            <a href="core/orders.php?status=delete&id=1708" onclick="return confirm('Вы действительно хотите удалить данный заказ?')" class="edit_ico"><img src="img/dell.png"></a>
                        </td>
                    </tr>

                    <tr>
                        <td style="vertical-align: middle;" align=center><img src="img/completed.png"></td>
                        <td><b>Выполнено:</b><br>200 из 200</td>
                        <td><img src="imgapp/954e3af59133ce745a98c646dd07f894.jpg"></td>
                        <td>
                            <b>Имя:</b> Mahjong 3D<br>
                            <b>ID:</b> ru.electronikas.boxpairs<br>
                            <b>Link:</b> market://details?id=ru.electronikas.boxpairs
                        </td>
                        <td>
                            <b>Задание:</b><br>+ скачать
                            <br><b>ГЕО:</b> Все страны
                            <br><b>Цена за задание:</b> 7 руб.<br>
                        </td>
                        <td style="vertical-align: middle;" align=center>
                            <!--<a href="#" class="edit_ico"><img src="img/edit.png"></a>!-->
                            <a href="core/orders.php?status=active&id=108" class="edit_ico"><img src="img/play.png"></a>
                            <a href="core/orders.php?status=delete&id=108" onclick="return confirm('Вы действительно хотите удалить данный заказ?')" class="edit_ico"><img src="img/dell.png"></a>
                        </td>
                    </tr>

                </table>
            </div>
        </div>
    </div>
</div>

</body>
</html>
