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
            <span class="sr-only">Loading...</span>
        </div>
    </div>


    <%@include file="back_sidebar.jsp"%>


    <div class="content">

        <%@include file="back_topbar.jsp"%>


        <div class="container-fluid pt-4 px-4">
            <div class="row g-4">
                    <div class="bg-light rounded h-100 p-4">
                        <h6 class="mb-4">Hoverable Table</h6>
                        <table class="table table-hover">
                            <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">位置</th>
                                <th scope="col">图片</th>
                                <th scope="col">标题</th>
                                <th scope="col">内容</th>
                                <th scope="col">种类</th>
                                <th scope="col">点击量</th>
                                <th scope="col">挂载时间</th>
                                <th scope="col">发布时间</th>
                                <th scope="col">操作</th>

                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach var="advs" items="${advs}">
                                <tr>
                                    <th scope="row">1</th>
                                    <td>${advs.advLocation},${advs.advPagelocal}</td>
                                    <td><img src="${pageContext.request.contextPath}${advs.advImg}" width="100" height="50"></td>
                                    <td>${advs.advHead}</td>
                                    <td>${advs.advContent}</td>
                                    <td>${advs.advOrder}</td>
                                    <td>${advs.advClick}</td>
                                    <td>${advs.advAddtime}小时</td>
                                    <td>${advs.advTime}</td>
                                    <td><a href="${pageContext.request.contextPath}/manageBackAdv/deleteAdv?advId=${advs.advId}">删除</a></td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>

            </div>
        </div>


        <div class="container-fluid pt-4 px-4">
            <div class="bg-light rounded-top p-4">

                <div class="col-12 col-sm-6 text-center text-sm-end">


                </div>
            </div>
        </div>
    </div>

</div>


<a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>
</div>

<%@include file="back_end.jsp"%>

</body>
</html>