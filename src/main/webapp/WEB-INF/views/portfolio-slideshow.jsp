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
                <h1 class="colr">图片详情</h1>
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
        <div class="fullwidth">
        	<!-- Gallery Slide Show Start -->
            <div id="gallery">
                <div id="main">
                    <div id="images">
                        <c:forEach var="sortTimePhotos" items="${sortTimePhotos}">
                            <div class="slide">
                                <a href="" class="thumb"><img src="${pageContext.request.contextPath}${sortTimePhotos.photoImg}" alt="" /></a>
                                <div class="caption">
                                    <h5>${sortTimePhotos.photoTitle}</h5>
                                    <p>
                                            ${sortTimePhotos.photoContent}
                                    </p>
                                </div>
                            </div>
                        </c:forEach>

                    </div>
                </div>
                <div class="thumbsec">
                    <div id="thumbs">
                        <c:forEach var="sortTimePhotos" items="${sortTimePhotos}">
                            <div class="thumb">
                                <a href=""><img src="${pageContext.request.contextPath}${sortTimePhotos.photoImg}" width="62" height="61" /></a>
                            </div>
                        </c:forEach>

                    </div>
                </div>
            </div>
            <!-- Gallery Slide Show End -->
            <div class="clear"></div>
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