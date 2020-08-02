<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:if test="${errors != null}">
    <div id="flush_error">
        入力内容にエラーがあります。<br />
        <c:forEach var="error" items="${errors}">
            ・<c:out value="${error}" /><br />
        </c:forEach>

    </div>
</c:if>


<label for="name">氏名</label><br />
<c:out value="${sessionScope.login_user.name}" />
<br /><br />

<label for="title">タイトル</label><br />
<input type="text" name="title" value="${task.title}" />
<br /><br />

<label for="content">内容</label><br />
<textarea name="content" rows="10" cols="50">${task.content}</textarea>
<br /><br />

<label for="limit2">締切日</label><br />
<input type="text" name="limit2" value="${task.limit2}" />
<br /><br />

<label for="start">着手日</label><br />
<input type="text" name="start" value="${task.start}" />
<br /><br />

<label for="finish">終了日</label><br />
<input type="text" name="finish" value="${task.finish}" />
<br /><br />

<input type="hidden" name="_token" value="${_token}" />
<button type="submit">投稿</button>