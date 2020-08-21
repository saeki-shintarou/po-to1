<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="../layout/app.jsp">
    <c:param name="content">

        <c:if test="${flush != null}">
            <div id="flush_success">

                <c:out value="${flush}"></c:out>
            </div>
        </c:if>
        <div id="flush_success">
                <c:out value="${flush}"></c:out>
            </div>
<img src="${pageContext.request.contextPath}/image/umimon.jpg" alt="うみのまもの">
        <h2>うみのまものが現れた！</h2>
<table>
 <tr>
<td class="chara_action"><a href="<c:url value='/action/battle3?id=${chara.id}' />">戦う</a></td>

<td class="chara_action"><a href="<c:url value='/chara/show?id=${chara.id}' />">逃げる</a></td>
</tr>
</table>
<table>
<tr>

<tr>   <th class="chara_vit">体力</th>
       <td><c:out value="${chara.vit}" /></tr>

       <tr>   <th class="chara_hp">hp</th>
       <td><c:out value="${chara.hp}" /></tr>


</table>

    </c:param>
</c:import>


