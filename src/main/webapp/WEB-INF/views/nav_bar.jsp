<%--
  Created by IntelliJ IDEA.
  User: 彭帝
  Date: 2022/5/11
  Time: 11:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<!-- Top Header Section Start -->
<div class="top-head">
    <!-- Logo Start -->
    <div class="logo">
        <a href="index.jsp"><img src="${pageContext.request.contextPath}/static/images/logo.png" alt="" /></a>
    </div>
    <!-- Logo End -->
    <!-- Right Section Start -->
    <div class="right-sec">
        <!-- Search Start -->
        <div class="search">
            <h5>搜索</h5>
            <ul>
                <li><input type="text" class="bar" /></li>
                <li><input type="button" class="go backcolr" value="Go" /></li>
            </ul>
        </div>
        <!-- Search End -->
        <!-- Services Start -->
        <div class="service-sec">
            <h5>Sunday Services</h5>
            <h5>@ 9:30 &amp; 11:00 am</h5>
            <p>1521 Hurt Rd, Marietta GA 30008</p>
        </div>
        <!-- Services End -->
    </div>
    <!-- Right Section End -->
    <div class="clear"></div>
</div>
<!-- Top Header Section End -->
<div class="clear"></div>
<div class="navigation bordercolr">
    <div id="smoothmenu1" class="ddsmoothmenu">
        <ul>
            <li class="current-menu-item"><a href="${pageContext.request.contextPath}/">主页</a></li>
            <li><a href="${pageContext.request.contextPath}/blog/pageList">博客</a></li>
            <li><a href="${pageContext.request.contextPath}/release/intoRelease">博客发布</a></li>
            <li><a href="#">相册</a>
                <ul class="backcolr">
                    <li><a href="${pageContext.request.contextPath}/photo/getPhoto">照片</a></li>
                    <li><a href="${pageContext.request.contextPath}/PhotoDetail/getPhotoDetail">照片详情</a></li>
                </ul>
            </li>
            <li><a href="#">个人中心</a>
                <ul class="backcolr">
                    <li><a href="${pageContext.request.contextPath}/user/selfInter?userId=${sessionScope.user_session.userId}">个人介绍</a></li>
                    <li><a href="${pageContext.request.contextPath}/user/dataMod?userId=${sessionScope.user_session.userId}">资料修改</a></li>

                </ul>
            </li>
            <li><a href="#">页面</a>
                <ul class="backcolr">
                    <li><a href="${pageContext.request.contextPath}/">主页</a></li>
                    <li><a href="${pageContext.request.contextPath}/blog/pageList">博客</a></li>
                    <li><a href="events.html">活动</a></li>
                    <li><a href="${pageContext.request.contextPath}/release/intoRelease">博客发布</a></li>
                    <li><a href="#">相册</a>
                        <ul>
                            <li><a href="portfolio.html">照片</a></li>
                            <li><a href="../../static/portfolio-slideshow.html">照片详情</a></li>
                        </ul>
                    </li>
                </ul>
            </li>
        </ul>
        <div class="clear"></div>
    </div>
</div>
</html>
