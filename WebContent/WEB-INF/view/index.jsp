<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:import url="../base/BaseFile.jsp">
    <c:param name="content">
        <c:if test="${flush != null}">
            <div id="flush_success">
                <c:out value="${flush}"></c:out>
            </div>
        </c:if>
        <p class="EntData"><a href="${pageContext.request.contextPath}/new">タスクの追加</a></p>
        No：簡易内容(先頭10文字)<br>
            <table id="list" style="width:300px; ">
            <c:forEach var="task" items="${tasklist}">
                <tr>
                <td style="width:40px; ">
                    <c:set var="con" value= "${task.content}" />
                    <a href="${pageContext.request.contextPath}/show?id=${task.id}">
                        <c:out value="${task.id}" />
                    </a>
                </td>
                <td style="width:200px; ">
                    <c:out value= "${fn:substring(con, 0, 10)}" />
                </td>
                <td style="width:60px; ">
                    <c:set var="con" value= "${task.content}" />
                    <p class="EntData"><a href="${pageContext.request.contextPath}/edit?id=${task.id}">編集</a></p>
                </td>

                </tr>
            </c:forEach>
            </table>

        <div id="pagination">
            （全 ${tskcnt} 件）<br />
            <c:forEach var="i" begin="1" end="${((tskcnt - 1) / 15) + 1}" step="1">
                <c:choose>
                    <c:when test="${i == page}">
                        <c:out value="${i}" />&nbsp;
                    </c:when>
                    <c:otherwise>
                        <a href="${pageContext.request.contextPath}/index?page=${i}"><c:out value="${i}" /></a>&nbsp;
                    </c:otherwise>
                </c:choose>
            </c:forEach>
        </div>


    </c:param>
</c:import>