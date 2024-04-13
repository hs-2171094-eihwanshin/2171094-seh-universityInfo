<%--
  Created by IntelliJ IDEA.
  User: eihwanshin
  Date: 4/13/24
  Time: 9:18 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>신청 완료</title>
</head>
<body>

${pageContext.request.userPrincipal.name} 님 수강 신청 완료되었습니다! <br>
<a href="${pageContext.request.contextPath}/courseenroll"> 이어서 수강 신청 하기 </a> <br>
<a href="${pageContext.request.contextPath}/courseenrollinfo"> 수강 신청 내역 보기  </a> <br>
<a href="${pageContext.request.contextPath}/"> 홈으로 돌아가기 </a>

</body>
</html>