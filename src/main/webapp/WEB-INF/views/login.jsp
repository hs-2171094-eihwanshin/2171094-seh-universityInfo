<%--
  Created by IntelliJ IDEA.
  User: eihwanshin
  Date: 4/13/24
  Time: 5:21 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>로그인 폼 (커스텀 로그인 폼)</title>
    <!-- Bootstrap CSS (교수님 코드랑 같습니다!) -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
    <link href="https://getbootstrap.com/docs/4.0/examples/signin/signin.css" rel="stylesheet" crossorigin="anonymous"/>
</head>
<body>
<div class="container">
    <form class="form-signin" method="post" action="<c:url value="/login" />">
        <h2 class="form-signin-heading">로그인해주세요.</h2>

        <!-- 로그인 실패시 에러 메시지 -->
        <c:if test="${not empty errorMsg}">
            <div style="color: #ff0000;"><h3> ${errorMsg} </h3></div>
        </c:if>

        <!-- 로그아웃시 메시지 -->
        <c:if test="${not empty logoutMsg}">
            <div style="color: #0000ff;"><h3> ${logoutMsg} </h3></div>
        </c:if>

        <p>
            <label for="username" class="sr-only">username</label>
            <input type="text" id="username" name="username" class="form-control" placeholder="이름" required
                   autofocus>
        </p>
        <p>
            <label for="password" class="sr-only">password</label>
            <input type="password" id="password" name="password" class="form-control" placeholder="암호" required>
        </p>
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        <button class="btn btn-lg btn-primary btn-block" type="submit">로그인 하기</button>
    </form>
</div>
</body>

</html>
