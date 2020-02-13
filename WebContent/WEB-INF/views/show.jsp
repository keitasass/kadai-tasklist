<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ja">
    <head>
        <meta charset="UTF-8">
        <title>タスク管理</title>
    </head>
    <body>
        <div id="show">
            <div id="header">
                <h1>タスク管理 アプリケーション</h1>
                <h2>id : ${task.id} のタスク詳細ページ</h2>
            </div>

            <p>タスク：<c:out value="${task.content}" /></p>
            <p>作成日時：<fmt:formatDate value="${task.created_at}" pattern="yyyy-MM-dd HH:mm:ss" /></p>
            <p>更新日時：<fmt:formatDate value="${task.updated_at}" pattern="yyyy-MM-dd HH:mm:ss" /></p>

            <p><a href="${pageContext.request.contextPath}/index">一覧に戻る</a></p>
            <p><a href="${pageContext.request.contextPath}/edit?id=${task.id}">このタスクを編集する</a></p>
        </div>
    </body>
</html>