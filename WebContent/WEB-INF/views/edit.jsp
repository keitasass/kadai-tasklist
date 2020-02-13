<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ja">
    <head>
        <meta charset="UTF-8">
        <title>タスク管理</title>
    </head>
    <body>
        <div id="edit">
            <div id="header">
                <h1>タスク管理 アプリケーション</h1>
                <h2>id : ${task.id} のタスク編集ページ</h2>
            </div>
            <form method="POST" action="${pageContext.request.contextPath}/update">
                <label for="content">タスク</label><br />
                <input type="text" name="content" value="${task.content}" />
                <br /><br />

                <input type="hidden" name="_token" value="${_token}" />
                <button type="submit">送信</button>
            </form>

            <p><a href="${pageContext.request.contextPath}/index">一覧に戻る</a></p>
            <p><a href="#" onclick="confirmDestroy();">このメッセージを削除する</a></p>
            <form method="POST" action="${pageContext.request.contextPath}/destroy">
                <input type="hidden" name="_token" value="${_token}" />
            </form>
            <script>
            function confirmDestroy() {
                if(confirm("本当に削除してよろしいですか？")) {
                    document.forms[1].submit();
                }
             }
            </script>
        </div>
    </body>
</html>