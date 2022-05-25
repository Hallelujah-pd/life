<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="head.jsp"%>
</head>

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
        <div class="breadcrumb">
        	<ul>
            	<li><a href="#">Home</a></li>
                <li><a href="#">Latest Blogs</a></li>
                <li><a href="#">June 2012</a></li>
            </ul>
            <div class="clear"></div>
        </div>
        <!-- Bread Crumb End -->
        <!-- Page Heading Section Start -->
        <div class="pageheading">
        	<div class="textsec">
                <h1 class="colr">Latest Blogs</h1>
                <p class="black">(180 Blogs)</p>
            </div>
            <div class="social">
            	<ul>
                	<li><h2 class="colr">Join Us</h2></li>
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
                            <div class="thumb">
                                <a href="${pageContext.request.contextPath}/blogDetail/getBlogDetail?articleId=${page.articleId}"><img src="${pageContext.request.contextPath}${page.articleImg}" width="645" height="272" /></a>
                            </div>
                            <div class="desc">
                                <div class="post-opts">
                                    <div class="post-date">
                                        <h1>26</h1>
                                        <h6>MAY<br />2012</h6>
                                    </div>
                                    <div class="post-cats">
                                        <p class="postby"><a href="#" class="txthover">${page.user.username}</a></p>
                                        <p class="cats">
                                            <a href="#" class="txthover">Church Media</a>
                                        </p>
                                    </div>
                                    <div class="post-share">
                                        <a href="#"><img src="${pageContext.request.contextPath}/static/images/share1.gif" alt="" /></a>
                                        <a href="#"><img src="${pageContext.request.contextPath}/static/images/share2.gif" alt="" /></a>
                                    </div>
                                </div>
                                <div class="post-details">
                                    <h5><a href="blog-detail.html" class="colr">${page.articleTitle}</a></h5>

                                    <a href="#" class="readmore">阅读详情</a>
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
            <%@include file="right_bar.jsp"%>
            <!-- One Third Section End -->
            <div class="clear"></div>
        </div>
        <!-- Full Width Section Start -->
    </div>
</div>
<!-- Content Section End -->
<!-- Scroller Section Start -->
<div id="scroller-sec">
	<div class="inner">
    	<div class="scroll-sec">
        	<a id="logoPrevious">Previous</a>
            <div id="logoscroll" class="scroller">
            	<ul>
                	<li><a href="#"><img src="${pageContext.request.contextPath}/static/images/logo1.gif" alt="" /></a></li>
                    <li><a href="#"><img src="${pageContext.request.contextPath}/static/images/logo2.gif" alt="" /></a></li>
                    <li><a href="#"><img src="${pageContext.request.contextPath}/static/images/logo3.gif" alt="" /></a></li>
                    <li><a href="#"><img src="${pageContext.request.contextPath}/static/images/logo4.gif" alt="" /></a></li>
                    <li><a href="#"><img src="${pageContext.request.contextPath}/static/images/logo5.gif" alt="" /></a></li>
                    <li><a href="#"><img src="${pageContext.request.contextPath}/static/images/logo1.gif" alt="" /></a></li>
                    <li><a href="#"><img src="${pageContext.request.contextPath}/static/images/logo2.gif" alt="" /></a></li>
                    <li><a href="#"><img src="${pageContext.request.contextPath}/static/images/logo1.gif" alt="" /></a></li>
                    <li><a href="#"><img src="${pageContext.request.contextPath}/static/images/logo2.gif" alt="" /></a></li>
                    <li><a href="#"><img src="${pageContext.request.contextPath}/static/images/logo3.gif" alt="" /></a></li>
                    <li><a href="#"><img src="${pageContext.request.contextPath}/static/images/logo4.gif" alt="" /></a></li>
                    <li><a href="#"><img src="${pageContext.request.contextPath}/static/images/logo5.gif" alt="" /></a></li>
                    <li><a href="#"><img src="${pageContext.request.contextPath}/static/images/logo1.gif" alt="" /></a></li>
                    <li><a href="#"><img src="${pageContext.request.contextPath}/static/images/logo2.gif" alt="" /></a></li>
                </ul>
            </div>
            <a id="logoNext">Next</a>
        </div>
        <div class="clear"></div>
    </div>
</div>
<!-- Scroller Section End -->
<!-- Footer Start -->
<%@include file="footer.jsp"%>
<!-- Footer End -->
<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script></div>
</body>
</html>