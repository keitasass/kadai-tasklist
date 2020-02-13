<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ja">
    <head>
        <meta charset="UTF-8">
        <title>タスク管理</title>
    </head>
    <body>
        <div id="form">
            <div id="header">
                <h1>タスク管理 アプリケーション</h1>
                <h2>タスク新規作成ページ</h2>
            </div>
            <form method="POST" action="${pageContext.request.contextPath}/create">
                <label for="content">タスク</label><br />
                <input type="text" name="content" value="${task.content}" />
                <br /><br />

                <input type="hidden" name="_token" value="${_token}" />
                <button type="submit">送信</button>
            </form>
            <p><a href="${pageContext.request.contextPath}/index">一覧に戻る</a></p>
        </div>
    </body>
</html>