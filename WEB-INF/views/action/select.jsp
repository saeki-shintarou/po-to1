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

<img src="${pageContext.request.contextPath}/image/suraimu.jpg" alt="川スライム">
            <div id="flush_success">
                <c:out value="${flush}"></c:out>
            </div>

        <p>コマンドを入力して相手を倒そう！</p>
   <table>
 <tr>
<td class="chara_action"><a href="<c:url value='/action/at?id=${chara.id}' />">→　　攻撃</a></td>

<td class="chara_action"><a href="<c:url value='/action/df?id=${chara.id}' />">→　　防御</a></td>

<td class="chara_action"><a href="<c:url value='/action/kiai?id=${chara.id}' />">→　　気合を入れる</a></td>

</tr>
</table>
<table>
<tr>

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

