<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>
<div class="shadow" id="shadow" onclick="show('close');"></div>
<div class="form" id="form">
    <div class="close"><a href="#" onclick="show('close');"><img src="resources/images/close.png" width="28" height="30" border="0" alt="Закрыть"></a></div>
    <h4 class="m_47">Авторизация</h4><br>

    <c:if test="${not empty error}">
        <div class="error">${error}</div>
    </c:if>
    <c:if test="${not empty msg}">
        <div class="msg">${msg}</div>
    </c:if>

    <form name='loginForm' action="<c:url value='/login' />" method='POST'>
        <table style="margin-left: 20px;">
            <tr>
                <td style="color: black;" align=right>E-mail:</td>
                <td><input type="text" name="username" class="inpt"></td>
            </tr>
            <tr>
                <td style="color: black;" align=right>Пароль:</td>
                <td><input type="password" name="password" class="inpt"></td>
            </tr>
            <tr>
                <td></td>
                <td align=center><input type="submit" value="Вход" class="inpt" style="width: 150px; cursor: pointer;"></td>
            </tr>
            <tr></tr>
        </table>

        <input type="hidden" name="${_csrf.parameterName}"
               value="${_csrf.token}" />
    </form>

<%--
    <form name='loginForm' action="<c:url value='/login' />" method='POST'>

        <table>
            <tr>
                <td>User:</td>
                <td><input type='text' name='username'></td>
            </tr>
            <tr>
                <td>Password:</td>
                <td><input type='password' name='password' /></td>
            </tr>
            <tr>
                <td colspan='2' align="center"><input name="submit" type="submit"
                                                      value="submit" /></td>
            </tr>
        </table>

        <input type="hidden" name="${_csrf.parameterName}"
               value="${_csrf.token}" />

    </form>
--%>
</div>