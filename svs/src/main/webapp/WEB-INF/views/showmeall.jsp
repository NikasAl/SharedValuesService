<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: navdonin
  Date: 23/06/15
  Time: 18:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Parameters</title>
</head>
<body>

<table>
    <tr>
        <th>Name</th>
        <th>Value</th>
    </tr>

    <c:forEach items="${parameters}" var="parameter">
        <tr>
            <%--<td><input type="text" path="parameterObj[${status.index}].name"></td>--%>
            <td>${parameter.name}</td>
            <td>${parameter.value}</td>
        </tr>
    </c:forEach>

    <td colspan="2"><a href="reload">reload file</a></td>
</table>



</body>
</html>
