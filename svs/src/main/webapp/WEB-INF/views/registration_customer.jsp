<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<jsp:include page="headcommon.jsp" />
<body id="index2">

<jsp:include page="auth.jsp" />

<header>
    <jsp:include page="header.jsp" />
</header>

<div id="content">
    <div class="container">
        <div class="row">
            <div class="grid_12 m_13" style="text-align: center;">
                <h4 class="m_69">Регистрация заказчика</h4>
                <div style="width:450px; position: relative; left:50%; margin-left:-225px; text-align: left;">
                    <form method="post" name="reg_form" onsubmit="return check();" action="indexregform">
                        <table>
                            <tr>
                                <td>Имя:</td>
                                <td><input type="text" type="email" name="name" class="inpt" id="name"></td>
                            </tr>
                            <tr>
                                <td>E-mail:</td>
                                <td><input type="email" name="login" class="inpt" id="reg_login"></td>
                            </tr>
                            <tr>
                                <td>Пароль:</td>
                                <td><input type="password" name="pass" id="reg_pass" class="inpt"></td>
                            </tr>
                            <tr>
                                <td>Пароль еще раз:</td>
                                <td><input type="password" name="cpasswd" id="cpasswd" class="inpt"></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td><input type="checkbox" name="lic"><a href="indexrules" onClick='window.open("indexrules","rules","width=700, height=900, left="+((screen.width-700)/2)+", top="+(screen.height-600)+", toolbar=0, location=0, menubar=0, scrollbars=1, resizable=0, status=1"); return false;'>C правилами согласен.</a></td>
                            </tr>
                            <tr>
                                <td><input type="hidden" name="action" value="reg"></td>
                                <td><input type="submit" value="Регистрация" class="inpt"></td>
                            </tr>
                        </table>
                    </form>
                </div>
            </div>
        </div>

    </div>
</div>

<jsp:include page="footer.jsp" />

</body>
</html>