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
    <title>$Title$</title>
</head>
<body>
    <a href="${pageContext.request.contextPath}">Return to Home</a>
    <br />
    <h1>학년별 이수 학점 조회</h1>
    <table>
        <tr>
            <th>년도</th>
            <th>학기</th>
            <th>취득 학점</th>
            <th>상세 보기</th>
        </tr>
        <!-- 학점 총합 계산을 위한 변수 -->
        <c:set var="sum" value="0" />
        <c:forEach var="credit" items="${credits}" >
            <!-- 2024년 2학기는 제외 -->
            <c:choose>
                <c:when test="${credit.year == 2024 and credit.semester == 2}">

                </c:when>
                <c:otherwise>
                    <!-- 학점 총계 계산 -->
                    <c:set var="sum" value="${sum + credit.sumCredit}" />
                    <tr>
                        <td>${credit.year}</td>
                        <td>${credit.semester}</td>
                        <td>${credit.sumCredit}</td>
                        <!-- 상세보기 링크, 동적으로 링크 생성 -->
                        <td><a href="${pageContext.request.contextPath}/courseinfo/${credit.year}/${credit.semester}">상세보기</a></td>
                    </tr>
                </c:otherwise>
            </c:choose>
        </c:forEach>
        <tr>
            <td>총계</td>
            <td></td>
            <td>${sum}</td>
            <td></td>
        </tr>
    </table>

    <br />
    <c:if test="${not empty courses}">
        <!-- 2024, 2로 전부 동일하니 대충 맨 앞의 객체에서 가져오기 -->
        <h2>상세보기 페이지 - ${courses[0].year}년 ${courses[0].semester}학기</h2>
        <table>
            <tr>
                <th>년도</th>
                <th>학기</th>
                <th>교과목명</th>
                <th>교과구분</th>
                <th>담당교수</th>
                <th>학점</th>
            </tr>
            <c:forEach var="course" items="${courses}">
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
