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
<h2>川スライム</h2>
<img src="${pageContext.request.contextPath}/image/download.jpg" alt="川スライム">
            <div id="flush_success">
                <c:out value="${flush}"></c:out>
            </div>


<h3>魔物をやっつけた！</h3>
<h3>体力が１０減った！力やHPが増加した</h3>

<h3><a href="<c:url value='/action/up?id=${chara.id}' />">→　　次へ</a></h3>


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