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
<h2>ゲームクリア　　おつかれさまでした</h2>

<img src="${pageContext.request.contextPath}/image/clear.jpg"alt="クリア">
            <div id="flush_success">
                <c:out value="${flush}"></c:out>
            </div>



<h3><a href="<c:url value='/employees/index?id=${chara.id}' />">→　タイトルへ戻る？</a></h3>

</div>
</body>
<html>
</html>

    </c:param>
</c:import>