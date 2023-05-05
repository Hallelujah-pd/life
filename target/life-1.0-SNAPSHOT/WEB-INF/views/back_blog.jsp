<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <%@include file="back_head.jsp"%>
</head>

<body>
<div class="container-fluid position-relative bg-white d-flex p-0">

    <div id="spinner"
         class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
        <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
            <span class="sr-only">加载中...</span>
        </div>
    </div>


    <%@include file="back_sidebar.jsp"%>


    <div class="content">

        <%@include file="back_topbar.jsp"%>



        <div class="container-fluid pt-4 px-4">
            <div class="bg-light text-center rounded p-4">
                <div class="d-flex align-items-center justify-content-between mb-4">
                    <h6 class="mb-0">文章管理</h6>
                </div>
                <div class="table-responsive">
                    <table class="table text-start align-middle table-bordered table-hover mb-0">
                        <thead>
                        <tr class="text-dark">
                            <th scope="col"></th>
                            <th scope="col">图片</th>
                            <th scope="col">标题</th>
                            <th scope="col">发布时间</th>
                            <th scope="col">发布人</th>
                            <th scope="col">点击量</th>
                            <th scope="col">删除</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${articleBySortTime}" var="articleBySortTime">

                            <tr>
                                <td>${articleBySortTime.articleId}</td>
                                <td><img src="${pageContext.request.contextPath}${articleBySortTime.articleImg}" width="100" height="50"></td>
                                <td>${articleBySortTime.articleTitle}</td>
                                <td>${articleBySortTime.articleTime}</td>
                                <td>${articleBySortTime.user.username}</td>
                                <td>${articleBySortTime.articleClick}</td>
                                <td><a class="btn btn-sm btn-primary" href="${pageContext.request.contextPath}/backBlog/deleteBlog?blogId=${articleBySortTime.articleId}">删除</a></td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

        <div class="container-fluid pt-4 px-4">
            <div class="bg-light rounded-top p-4">
            </div>
        </div>

    </div>


    <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>
</div>

<%@include file="back_end.jsp"%>
</html>