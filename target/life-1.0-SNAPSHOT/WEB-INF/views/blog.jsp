<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="head.jsp"%>
</head>

<style>
    .articleClass{
        display: -webkit-box;
        -webkit-box-orient: vertical;
        -webkit-line-clamp: 3;
        overflow: hidden;
    }
</style>
<body>
<!-- Top Bar Start -->

<%@include file="topbar.jsp"%>
<!-- Top Bar End -->
<!-- Header Start -->
<div id="header">
	<div class="inner">

        <!-- Navigation Start -->
        <%@include file="nav_bar.jsp"%>
        <!-- Navigation End -->
        <div class="clear"></div>
        <!-- Bread Crumb Start -->

        <!-- Bread Crumb End -->
        <!-- Page Heading Section Start -->
        <div class="pageheading">
        	<div class="textsec">
                <h1 class="colr">博客</h1>
            </div>
            <div class="social">
            	<ul>
                	<li><h2 class="colr">加入我们</h2></li>
                    <li><a href="#" class="tweet-icon">&nbsp;</a></li>
                    <li><a href="#" class="fb-icon">&nbsp;</a></li>
                    <li><a href="#" class="vimeo-icon">&nbsp;</a></li>
                    <li><a href="#" class="lastfm-icon">&nbsp;</a></li>
                </ul>
            </div>
            <div class="clear"></div>
        </div>
        <!-- Page Heading Section End -->
        <div class="clear"></div>
    </div>
</div>
<!-- Header End -->
<!-- Content Section Start -->
<div id="contentsec">
	<div class="inner">
        <!-- Full Width Section Start -->
        <div class="fullwidth box rightbar">
            <!-- Two Third Section Start -->
            <div class="twothird left">
            	<!-- Two Third Section Start -->
                <div class="twothird left">

                    <c:forEach items="${pageInfo.list}" var="page">
                        <!-- Blog Post Start -->
                        <div class="post">
                            <div class="heading colr">
                                <h1>《${page.articleTitle}》</h1>
                            </div>
                            <div class="desc">
                                <div class="post-opts">

                                        <h6>${page.articleTime}</h6>

                                    <div class="post-cats">
                                        <p class="postby"><a href="#" class="txthover">${page.user.username}</a></p>
                                        <p class="cats">
                                            点击量：${page.articleClick}
                                        </p>
                                    </div>

                                </div>
                                <div class="post-details">
                                    <h5 class="articleClass" ><a href="${pageContext.request.contextPath}/blogDetail/getBlogDetail?articleId=${page.articleId}" class="colr">${page.articleContent}</a></h5>

                                    <a href="${pageContext.request.contextPath}/blogDetail/getBlogDetail?articleId=${page.articleId}" class="readmore">阅读详情</a>
                                </div>
                            </div>
                        </div>
                        <!-- Blog Post End -->
                    </c:forEach>
                    <!-- Pagination Start -->
                    <div class="pagination">
                        <!--分页文字信息  -->
                        <div class="col-md-6">当前 ${pageInfo.pageNum }页,总${pageInfo.pages }
                            页,总 ${pageInfo.total } 条记录</div>
                        <!-- 分页条信息 -->
                        <div class="col-md-6">
                            <nav aria-label="Page navigation">
                                <ul class="pagination">
                                    <li><a href="${pageContext.request.contextPath}/blog/pageList?pn=1">首页</a></li>
                                    <c:if test="${pageInfo.hasPreviousPage }">
                                        <li><a href="${pageContext.request.contextPath}/blog/pageList?pn=${pageInfo.pageNum-1}"
                                               aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
                                        </a></li>
                                    </c:if>


                                    <c:forEach items="${pageInfo.navigatepageNums }" var="page_Num">
                                        <c:if test="${page_Num == pageInfo.pageNum }">
                                            <li class="active"><a href="#">${page_Num }</a></li>
                                        </c:if>
                                        <c:if test="${page_Num != pageInfo.pageNum }">
                                            <li><a href="${pageContext.request.contextPath}/blog/pageList?pn=${page_Num }">${page_Num }</a></li>
                                        </c:if>

                                    </c:forEach>
                                    <c:if test="${pageInfo.hasNextPage }">
                                        <li><a href="${pageContext.request.contextPath}/blog/pageList?pn=${pageInfo.pageNum+1 }"
                                               aria-label="Next"> <span aria-hidden="true">&raquo;</span>
                                        </a></li>
                                    </c:if>
                                    <li><a href="${pageContext.request.contextPath}/blog/pageList?pn=${pageInfo.pages}">末页</a></li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                    <!-- Pagination End -->
                </div>
            </div>
            <!-- Two Third Section End -->
            <!-- One Third Section Start -->
            <div class="onethird right">
                <!-- One Third Box Start -->
                <div class="onethird box left">
                    <!-- Recent Posts Widget Start -->
                    <div class="widget recent-post">
                        <h3 class="heading colr">最近的帖子</h3>
                        <p class="black bold">只要地球是自由的。没关系，但现在</p>
                        <ul>
                            <c:forEach items="${articleBySortClick}" var="articleBySortClick" end="6">
                                <li><a href="#">${articleBySortClick.articleTitle}</a></li>
                            </c:forEach>
                        </ul>
                    </div>
                    <!-- Recent Posts Widget End -->
                </div>

                <div class="onethird box left">
                    <!-- Advertisment Widget Start -->
                    <div class="onethird box left">
                        <!-- Facebook Widget Start -->
                        <div class="widget ads-widget">
                            <c:if test="${empty advSideOne}">
                                <a href="#"><img src="${pageContext.request.contextPath}/static/img/3.jpeg" width="300" height="300"/></a>
                            </c:if>
                            <c:if test="${not empty advSideOne}">
                                <a href="${pageContext.request.contextPath}/Adv/addAdvClick?advId=${advSideOne.advId}">
                                    <img src="${pageContext.request.contextPath}${advSideOne.advImg}" width="300" height="200"/>
                                </a>
                                <div class="notification">

                                    <h5 class="badge">广告</h5>
                                    <div class="notif-data">
                                        <div class="desc">
                                            <a href="${pageContext.request.contextPath}/Adv/addAdvClick?advId=${advSideOne.advId}">
                                                <h4 class="colr">${advSideOne.advHead}</h4>
                                                <p>${advSideOne.advContent}</p>
                                            </a>
                                        </div>
                                    </div>
                                </div>

                            </c:if>
                        </div>

                        <!-- Facebook Widget Start -->
                    </div>

                    <!-- Advertisment Widget Start -->
                </div>
                <!-- One Third Box End -->
                <!-- One Third Box Start -->
                <div class="onethird box left">
                    <!-- Facebook Widget Start -->
                    <div class="widget facebook-widget">
                        <c:if test="${empty advSideTwo}">
                            <a href="#"><img src="${pageContext.request.contextPath}/static/img/3.jpeg" width="300" height="300"/></a>
                        </c:if>
                        <c:if test="${not empty advSideTwo}">
                            <a href="${pageContext.request.contextPath}/Adv/addAdvClick?advId=${advSideTwo.advId}">
                                <img src="${pageContext.request.contextPath}${advSideTwo.advImg}" width="300" height="200"/>
                            </a>

                            <div class="notification">
                                <h5 class="badge">广告</h5>
                                <div class="notif-data">
                                    <div class="desc">
                                        <a href="${pageContext.request.contextPath}/Adv/addAdvClick?advId=${advSideTwo.advId}">

                                            <h4 class="colr">${advSideTwo.advHead}</h4>
                                            <p>${advSideTwo.advContent}</p>
                                        </a>
                                    </div>
                                </div>
                            </div>

                        </c:if>
                    </div>

                    <!-- Facebook Widget Start -->
                </div>
                <!-- One Third Box End -->
            </div>
            <!-- One Third Section End -->
            <div class="clear"></div>
        </div>
        <!-- Full Width Section Start -->
    </div>
</div>
<div id="scroller-sec">
    <div class="inner">
        <div class="scroll-sec">
            <div id="logoscroll" class="scroller">
                <ul>
                    <div class="widget facebook-widget">
                        <c:if test="${empty advEnd}">
                            <a href="#"><img src="${pageContext.request.contextPath}/static/img/4.jpeg" width="1000" height="150"/></a>
                        </c:if>
                        <c:if test="${not empty advEnd}">
                            <a href="${pageContext.request.contextPath}/Adv/addAdvClick?advId=${advEnd.advId}">

                            <img src="${pageContext.request.contextPath}${advEnd.advImg}" width="1000" height="100"/>
                            <div class="notification">
                                <h5 class="badge">广告</h5>
                                <div class="notif-data">
                                    <div class="desc">
                                        <h4 class="colr">${advEnd.advHead}</h4>
                                        <p>${advEnd.advContent}</p>
                                    </div>
                                </div>
                            </div>
                            </a>
                        </c:if>
                    </div>
                </ul>
            </div>
        </div>
        <div class="clear"></div>
    </div>
</div>
<!-- Content Section End -->
<!-- Scroller Section Start -->

<!-- Scroller Section End -->
<!-- Footer Start -->
<%@include file="footer.jsp"%>
<!-- Footer End -->
</body>
</html>