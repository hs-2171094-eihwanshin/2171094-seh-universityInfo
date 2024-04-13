<%--
  Created by IntelliJ IDEA.
  User: eihwanshin
  Date: 4/13/24
  Time: 5:31 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>수강 신청 조회</title>
</head>
<body>
    <a href="${pageContext.request.contextPath}">Return to Home</a>
    <br />
    <h1>수강 신청 조회</h1>
    <!-- controller로 2024년 2학기 과목 조회함 -->
    <!-- 수강 신청 내역이 없을 경우 -->
    <c:if test="${empty courses}">
        <h2>수강 신청 내역이 없습니다.</h2>
    </c:if>
    <!-- 수강 신청 내역이 있을 경우 -->
    <c:if test="${not empty courses}">
        <table>
            <tr>
                <th>년도</th>
                <th>학기</th>
                <th>교과목명</th>
                <th>교과구분</th>
                <th>담당교수</th>
                <th>학점</th>
            </tr>
            <c:forEach var="course" items="${courses}" >
                <tr>
                    <td>${course.year}</td>
                    <td>${course.semester}</td>
                    <td>${course.title}</td>
                    <td>${course.division}</td>
                    <td>${course.professor}</td>
                    <td>${course.credit}</td>
                </tr>
            </c:forEach>
        </table>
    </c:if>
</body>
</html>
