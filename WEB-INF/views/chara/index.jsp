<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:import url="/WEB-INF/views/layout/app.jsp">
    <c:param name="content">
        <c:if test="${flush != null}">
            <div id="flush_success">
                <c:out value="${flush}"></c:out>
            </div>
        </c:if>
        <img src="${pageContext.request.contextPath}/image/download.png" width="200" height="50">
        <h2>キャラクター　一覧</h2>
        <table id="chara_list">
            <tbody>
                <tr>
 　　　　　　　　　　　 <th class="chara_name">氏名</th>
                    <th class="chara_action">操作</th>


                </tr>
          <c:forEach var="chara" items="${charas}" varStatus="status">
                    <tr class="row${status.count % 2}">
                        <td class="chara_name"><c:out value="${chara.name}" /></td>
<td class="chara_action"><a href="<c:url value='/chara/show?id=${chara.id}' />">行動する</a></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

        <div id="pagination">
            （全 ${chara_count} 件）<br />
            <c:forEach var="i" begin="1" end="${((chara_count - 1) / 15) + 1}" step="1">
                <c:choose>
                    <c:when test="${i == page}">
                        <c:out value="${i}" />&nbsp;
                    </c:when>
                    <c:otherwise>
                        <a href="<c:url value='/chara/index?page=${i}' />"><c:out value="${i}" /></a>&nbsp;
                    </c:otherwise>
                </c:choose>
            </c:forEach>
        </div>
        <p><a href="<c:url value='/chara/new' />">キャラクターの登録</a></p>

    </c:param>
</c:import>