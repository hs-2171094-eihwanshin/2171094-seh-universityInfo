<%--
  Created by IntelliJ IDEA.
  User: eihwanshin
  Date: 4/12/24
  Time: 3:33 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>$Title$</title>
</head>
<body>
    <p> <a href="${pageContext.request.contextPath}/courseinfo">학년별 이수 학점 조회</a></p>
    <p> <a href="${pageContext.request.contextPath}/courseenroll">수강 신청하기</a></p>
    <p> <a href="${pageContext.request.contextPath}/courseenrollinfo">수강 신청 조회</a></p>

    <!-- 로그인 상태에 따라 로그아웃 버튼을 보여줌 -->
    <c:if test="${pageContext.request.userPrincipal.name != null}">
        <p> <a href="javascript:document.getElementById('logout').submit()">Logout</a> </p>
    </c:if>

    <form id="logout" action="${pageContext.request.contextPath}/logout" method="post">
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
    </form>

</body>
</html>
