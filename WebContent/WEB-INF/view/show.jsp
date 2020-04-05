<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:import url="../base/BaseFile.jsp">
    <c:param name="content">
        <c:choose>
            <c:when test="${tasklist != null}">

                <h2>タスクid : ${tasklist.id} 詳細</h2>
                <table>
                    <tbody>
                        <tr>
                            <th>タスク</th>
                            <td><c:out value="${tasklist.content}" /></td>
                        </tr>
                        <tr>
                            <th>作成日時</th>
                            <td><fmt:formatDate value="${tasklist.ent_date}" pattern="yyyy-MM-dd HH:mm:ss" /></td>
                        </tr>
                        <tr>
                            <th>更新日時</th>
                            <td><fmt:formatDate value="${tasklist.upd_date}" pattern="yyyy-MM-dd HH:mm:ss" /></td>
                        </tr>
                    </tbody>
                </table>
                <p><a href="${pageContext.request.contextPath}/index">一覧へ</a></p>
                <p><a href="${pageContext.request.contextPath}/edit?id=${tasklist.id}">タスクの編集</a></p>
            </c:when>
            <c:otherwise>
                <h2>お探しのデータは見つかりませんでした。</h2>
            </c:otherwise>
        </c:choose>
    </c:param>
</c:import>