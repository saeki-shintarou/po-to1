<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="../layout/app.jsp">
    <c:param name="content">

        <c:if test="${flush != null}">
            <div id="flush_success">

                <c:out value="${flush}"></c:out>
            </div>
        </c:if>
<head>

        <link rel="stylesheet" href="<c:url value='/css/style2.css' />"></head></html>
<body>
  <div class="full-page">
<h2>うみのまもの</h2>

<img src="${pageContext.request.contextPath}/image/hiltusatu.jpg"alt="必殺">
            <div id="flush_success">
                <c:out value="${flush}"></c:out>
            </div>


<h3><c:out value="${chara.name}" />の必殺！無双切り‼︎‼︎のダメージ‼︎‼︎</h3>
<h3>うみのまものをやっつけた</h3>

<h3><a href="<c:url value='/ActionEnd2?id=${chara.id}' />">→　　次へ</a></h3>
<table>

<tr>   <th class="chara_vit">体力</th>
       <td><c:out value="${chara.vit}" /></tr>

       <tr>   <th class="chara_hp">hp</th>
       <td><c:out value="${chara.hp}" /></tr>


</table>
</div>
</body>
<html>
</html>

    </c:param>
</c:import>