<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<jsp:include page="head.jsp" />

<body>

<jsp:include page="mainmenu.jsp" />


<div class="w1024">
    <div class="lines">
        <div class="m_menu mm_menu_lc l_c" style="border-left:0px;"><a href="?page=money&sub=make" class="m_c">Пополнить</a></div>
        <div class="m_menu"><a href="?page=money&sub=payments" class="m_c">Платежи</a></div>
        <div style="clear: both;"></div>
    </div>
    <div class="b_body">
        <div class="in_body">
            <div class="body-content">
                <form id=pay name=pay method="POST" action="https://merchant.webmoney.ru/lmi/payment.asp">
                    <p>Пополнение счета через сервис WebMoney</p>
                    <p>
                        <input type="hidden" name="LMI_PAYMENT_DESC_BASE64" value="0J/QvtC/0L7Qu9C90LXQvdC40LUgVXBUb3AuUFJP">
                        <input type="hidden" name="LMI_PAYMENT_NO" value="1">
                        <input type="hidden" name="LMI_PAYEE_PURSE" value="R289634779625">
                        <input type="hidden" name="LMI_SIM_MODE" value="0">
                        <input type="hidden" name="uid" value="11976">
                    </p>
                    <p>
                        <input type="text" name="LMI_PAYMENT_AMOUNT" value="" class="inpt" style="width: 250px;" placeholder="Введите сумму пополнения">
                        <input type="submit" value="Пополнить" class="t_btn">
                    </p>
                </form>

            </div>
        </div>
    </div>
</div>

</body>
</html>