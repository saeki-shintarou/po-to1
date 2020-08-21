<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:import url="../layout/app.jsp">
    <c:param name="content">
<img src="${pageContext.request.contextPath}/image/download-1.png">
        <h2>キャラクター詳細ページ</h2>
         <table id="chara_">
<tr>   <th class="chara_name">氏名</th>
       <td><c:out value="${chara.name}" /></tr>

<tr>   <th class="chara_vit">体力</th>
       <td><c:out value="${chara.vit}" /></tr>

       <tr>   <th class="chara_hp">hp</th>
       <td><c:out value="${chara.hp}" /></tr>

        <tr>   <th class="chara_power">力</th>
       <td><c:out value="${chara.power}" /></tr>
</table>

 <table class="chara_action">
 <tr>
<td class="chara_action"><a href="<c:url value='/action/yama?id=${chara.id}' />"><img src="${pageContext.request.contextPath}/image/yama.jpg" width="250" height="100">山にいく</a></td>

<td class="chara_action"><a href="<c:url value='/action/kawa?id=${chara.id}' />"><img src="${pageContext.request.contextPath}/image/kawa.jpg" width="250" height="100">川にいく</a></td>

<td class="chara_action"><a href="<c:url value='/action/umi?id=${chara.id}' />"><img src="${pageContext.request.contextPath}/image/umi.jpg" width="250" height="100">海にいく</a></td>
</tr>
</table>
        <p><a href="${pageContext.request.contextPath}/chara/index">一覧に戻る</a></p>

    </c:param>
</c:import>