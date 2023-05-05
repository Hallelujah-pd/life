<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    	<!-- Top Header Section Start -->

        <!-- Top Header Section End -->
        <div class="clear"></div>
        <!-- Navigation Start -->
        <%@include file="nav_bar.jsp"%>

        <!-- Navigation End -->
        <div class="clear"></div>
        <!-- Bread Crumb Start -->

        <!-- Bread Crumb End -->
        <!-- Page Heading Section Start -->
        <div class="pageheading">
        	<div class="textsec">
                <h1 class="colr">相册照片</h1>
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
        <div class="fullwidth overflow">

            <ul class="gallery-grid ourHolder">

                <c:forEach var="page" items="${photoPageInfo.list}">
                    <li class="item" id="id-1" value="videos">
                        <a href="#" class="thumb"><img src="${pageContext.request.contextPath}${page.photoImg}" alt="" width="310" height="210"/></a>
                        <div class="thumb-hover">
                            <a href="${pageContext.request.contextPath}${page.photoImg}" class="tip4 zoom">&nbsp;</a>
                        </div>
                    </li>
                </c:forEach>

            </ul>
            <!-- Gallery Grid End -->
            <!-- Pagination Start -->
            <div class="pagination">
                <!--分页文字信息  -->
                <div class="col-md-6">当前 ${photoPageInfo.pageNum }页,总${photoPageInfo.pages }
                    页,总 ${photoPageInfo.total } 条记录</div>
                <!-- 分页条信息 -->
                <div class="col-md-6">
                    <nav aria-label="Page navigation">
                        <ul class="pagination">
                            <li><a href="${pageContext.request.contextPath}/photo/getPhoto?pn=1">首页</a></li>
                            <c:if test="${photoPageInfo.hasPreviousPage }">
                                <li><a href="${pageContext.request.contextPath}/photo/getPhoto?pn=${photoPageInfo.pageNum-1}"
                                       aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
                                </a></li>
                            </c:if>


                            <c:forEach items="${photoPageInfo.navigatepageNums }" var="page_Num">
                                <c:if test="${page_Num == photoPageInfo.pageNum }">
                                    <li class="active"><a href="#">${page_Num }</a></li>
                                </c:if>
                                <c:if test="${page_Num != photoPageInfo.pageNum }">
                                    <li><a href="${pageContext.request.contextPath}/photo/getPhoto?pn=${page_Num }">${page_Num }</a></li>
                                </c:if>

                            </c:forEach>
                            <c:if test="${photoPageInfo.hasNextPage }">
                                <li><a href="${pageContext.request.contextPath}/photo/getPhoto?pn=${photoPageInfo.pageNum+1 }"
                                       aria-label="Next"> <span aria-hidden="true">&raquo;</span>
                                </a></li>
                            </c:if>
                            <li><a href="${pageContext.request.contextPath}/photo/getPhoto?pn=${photoPageInfo.pages}">末页</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
            <!-- Pagination End -->
            <div class="clear"></div>
            <br />
        </div>
        <!-- Full Width Section Start -->
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