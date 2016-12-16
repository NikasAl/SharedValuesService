<%@ page language="java" contentType="text/html; charset=utf8"
         pageEncoding="utf8" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>Менеджер слов</title>
</head>

<script type="text/javascript">
    function setFocus() {
        document.getElementById("enw").focus();
    }
</script>

<body onload="setFocus()">

<%--<a href="<c:url value="/logout" />">
    <spring:message code="label.logout"/>
</a>--%>

<h2 align="center">Менеджер слов</h2>

<form:form method="post" action="wordadd" commandName="word">

    <table align="center" width="300px">
        <tr>
            <td><form:label path="engword">
                Слово на англ.
            </form:label></td>
            <td><form:input path="engword" id="enw"/></td>
        </tr>
        <tr>
            <td><form:label path="rusword">
                Слово на рус.
            </form:label></td>
            <td><form:input path="rusword"/></td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit"
                                   value="Добавить"/></td>
        </tr>
    </table>
</form:form>


<% int i = 1; %>
<div align="center" width="90%">
    <h3>Слова</h3>
    <c:if test="${!empty wordList}">
        <table class="data" border="1" cellpadding="5px">
            <tr>
                <th>№</th>
                <th>ENG</th>
                <th>RUS</th>
                <th>&nbsp;</th>
            </tr>
            <c:forEach items="${wordList}" var="word">
                <tr>
                    <td><%= i++ %>
                    </td>
                    <td id="engw">${word.engword}</td>
                    <td id="rusw">${word.rusword}</td>
                    <td><a href="deleteword/${word.id}">X</a></td>
                </tr>
            </c:forEach>
        </table>
    </c:if>
</div>

</body>
</html>