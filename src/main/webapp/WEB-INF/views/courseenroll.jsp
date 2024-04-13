<%--
  Created by IntelliJ IDEA.
  User: eihwanshin
  Date: 4/13/24
  Time: 9:03 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- form jstl 사용 -->
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <title>수강 신청하기</title>
</head>
<body>
<!-- post 방식으로 /doenroll에 수강신청하기 시도 -->
<sf:form method="post" action="${pageContext.request.contextPath}/doenroll" modelAttribute="course">
    <table>
        <!-- 검증 때 오류 생겨서 여기서 hidden으로 값을 넣어줌 -->
        <sf:input type="hidden" path="year" value="2024" />
        <sf:input type="hidden" path="semester" value="2" />
        <tr>
            <td class="label"> 교과코드:</td>
            <td><sf:input type="text" path="code"/> <br/>
                <sf:errors path="code" class="error"/>
            </td>
        </tr>
        <tr>
            <td class="label"> 교과목명:</td>
            <td><sf:input type="text" path="title"/>  <br/>
                <sf:errors path="title" class="error"/>
            </td>
        </tr>
        <tr>
            <td class="label"> 교과구분:</td>
            <td><sf:input type="text" path="division"/> <br/>
                <sf:errors path="division" class="error" />
            </td>
        </tr>
        <tr>
            <td class="label"> 담당교수:</td>
            <td><sf:input type="text" path="professor"/> <br/>
                <sf:errors path="professor" class="error" />
            </td>
        </tr>
        <tr>
            <td class="label"> 학점:</td>
            <td><sf:input type="number" path="credit"/> <br/>
                <sf:errors path="credit" class="error" />
            </td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" value="수강 신청하기"/> </td>
        </tr>
    </table>
</sf:form>
</body>
</html>
