
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: zhao
  Date: 2021/12/23
  Time: 17:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="media">
    <div class="media-left media-top" style="min-width: 42px">
        <img src="${pageContext.request.contextPath}/${comment.user.headImg}" class="img-circle" style="width:32px">
    </div>
    <div class="media-body">
        <p><strong>${comment.user.username}</strong>
            <span class="pull-right">
                <button onclick="like(${comment.commentId})" class="btn btn-link"> <span id="like-icon-${comment.commentId}" class="glyphicon glyphicon-thumbs-up <c:if test="${not empty cookie['comment-like-'.concat(comment.commentId)]}">alert-danger</c:if>"></span></button>
                <button onclick="dislike(${comment.commentId})" class="btn btn-link"> <span id="dislike-icon-${comment.commentId}" class="glyphicon glyphicon-thumbs-down <c:if test="${not empty cookie['comment-dislike-'.concat(comment.commentId)]}">alert-danger</c:if>"></span></button>
            </span>
        </p>
        <p>
            ${comment.commentContent}
        </p>
        <p id="comment-${comment.commentId}">
           <span class="text-info"><%=TimeFormat.getInterval(comment.getPubDate())%></span>
            <span class="pull-right"><button class="btn-link btn-reply" onclick="reply(${comment.commentId})" id="btn-${comment.commentId}">回复</button></span>
        </p>
        <hr>
        <c:forEach items="${comment.relpyId}" var="reply">
            <jsp:include page="comment.jsp">
                <jsp:param name="commentId" value="${reply.id}"/>
            </jsp:include>
        </c:forEach>
    </div>
</div>
