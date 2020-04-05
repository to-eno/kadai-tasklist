<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="../base/BaseFile.jsp">
    <c:param name="content">


        <form method="POST" action="${pageContext.request.contextPath}/ins">
            <c:import url="form.jsp" />
        </form>

        <p><a href="${pageContext.request.contextPath}/index">一覧へ</a></p>

    </c:param>
</c:import>