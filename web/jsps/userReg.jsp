<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%--
  Created by IntelliJ IDEA.
  User: root
  Date: 17-11-12
  Time: 下午3:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>userReg.jsp</title>
</head>
<body>
    <form action="<c:url value='/doReg' />" method="post">
        Username :<input type="text" name="name" value="<c:out value="${user.name}" />"><br>
        Password :<input type="password" name="password" value="<c:out value="${user.password}" />"><c:out value="${requestScope['error.password.nosame']}"/><br>
        ConfirmPass :<input type="password" name="confirmPass"><br>
        Email :<input type="text" name="email" value="<c:out value="${user.email}" />"><c:out value="${requestScope['error.email.registed']}"/><br>
        NickName:<input type="text" name="nickName" value="<c:out value="${user.nickName}" />"><br>
        <input type="submit">
    </form>
</body>
</html>
