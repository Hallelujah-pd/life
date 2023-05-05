<%--
  Created by IntelliJ IDEA.
  User: 彭帝
  Date: 2022/5/29
  Time: 19:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<div class="sidebar pe-4 pb-3">
    <nav class="navbar bg-light navbar-light">
        <a href="index1.html" class="navbar-brand mx-4 mb-3">
            <h3 class="text-primary"><i class="fa fa-hashtag me-2"></i>LIFE</h3>
        </a>
        <div class="d-flex align-items-center ms-4 mb-4">
            <div class="position-relative">
                <img class="rounded-circle" src="${pageContext.request.contextPath}/back_static/picture/user.jpg" alt=""
                     style="width: 40px; height: 40px;">
                <div class="bg-success rounded-circle border border-2 border-white position-absolute end-0 bottom-0 p-1"></div>
            </div>
            <div class="ms-3">
                <h6 class="mb-0">pd</h6>
                <span>Admin</span>
            </div>
        </div>
        <div class="navbar-nav w-100">
            <a href="${pageContext.request.contextPath}/backIndex/intoIndex" class="nav-item nav-link"><i class="fa fa-tachometer-alt me-2"></i>数据展示</a>
            <a href="${pageContext.request.contextPath}/BacKAdv/intoBackAdv" class="nav-item nav-link"><i class="fa fa-th me-2"></i>广告发布</a>
            <a href="${pageContext.request.contextPath}/manageBackAdv/showBackAdv" class="nav-item nav-link"><i class="fa fa-table me-2"></i>广告管理</a>
            <a href="${pageContext.request.contextPath}/backBlog/intoBackBlog" class="nav-item nav-link"><i class="fa fa-chart-bar me-2"></i>文章管理</a>

        </div>
    </nav>
</div>
</html>
