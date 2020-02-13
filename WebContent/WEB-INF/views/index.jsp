<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ja">
    <head>
        <meta charset="UTF-8">
        <title>タスク管理</title>
    </head>
    <body>
        <div id="wrapper">
            <div id="header">
                <h1>タスク管理 アプリケーション</h1>
                <h2>タスク一覧</h2>
            </div>
            <ul>
                <c:forEach var="task" items="${tasks}">
                    <li>
                        <a href="${pageContext.request.contextPath}/show?id=${task.id}">
                            <c:out value="${task.id}" />
                        </a>
                        : <c:out value="${task.content}" />
                    </li>
                </c:forEach>
            </ul>
        <p><a href="${pageContext.request.contextPath}/new">新規メッセージの投稿</a></p>
        </div>
    </body>
</html>