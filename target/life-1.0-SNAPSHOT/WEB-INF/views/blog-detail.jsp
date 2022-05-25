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

        <div class="clear"></div>
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
                    <!-- Blog Post Start -->
                    <p>${blogDetail.articleContent}</p>
                    <!-- Blog Post End -->
                    <!-- About Author Start -->
                    <div class="about-author">
                    	<a href="#" class="thumb"><img src="${pageContext.request.contextPath}/${blogDetail.user.headImg}" width="49.4" height="49.9" /></a>
                        <h5 class="colr">${blogDetail.user.username}</h5>
                        <p>
                            ${blogDetail.user.selfIntroduction}
                        </p>
                    </div>
                    <!-- About Author End -->
                    <!-- Comments Section Start -->
                    <div class="comments-sec">
                    	<h3 class="colr heading">53 Comments</h3>
                    	<ul>
                        	<!-- Level One Comments Start -->
                        	<li>
                            	<div class="thumb">
                                	<a href="#"><img src="${pageContext.request.contextPath}/static/images/avatar1.gif" alt="" /></a>
                                </div>
                                <div class="desc">
                                	<div class="desc-in-border">
                                    	<div class="desc-in">
                                    		<div class="title">
                                            	<h5><a href="#" class="black">Nelsom Cole</a></h5>
                                                <p>23 June 2012</p>
                                            </div>
                                            <p>
                                            	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam aliquet dignissim urna, eget lacinia est at a. Curabitur ultricies rhoncus dui, eget congue sem ultrices quis. Fusce sit amet dui lorem. Pellentesque que mattis congue. Nulla scelerisque nisl id. <a href="#" class="reply">Reply</a>
                                            </p>
                                    	</div>
                                    </div>
                                </div>
                            </li>
                            <!-- Level One Comments End -->
                            <!-- Level Two Comments Start -->
                            <li class="leveltwo">
                            	<div class="thumb">
                                	<a href="#"><img src="${pageContext.request.contextPath}/static/images/avatar2.gif" alt="" /></a>
                                </div>
                                <div class="desc">
                                	<div class="desc-in-border">
                                    	<div class="desc-in">
                                    		<div class="title">
                                            	<h5><a href="#" class="black">Linda Garth</a></h5>
                                                <p>Posted Apr 27, 2012</p>
                                            </div>
                                            <p>
                                            	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam aliquet dignissim urna. <a href="#" class="reply">Reply</a>
                                            </p>
                                    	</div>
                                    </div>
                                    <span class="pointer">&nbsp;</span>
                                </div>
                            </li>
                            <!-- Level Two Comments End -->
                            <!-- Level Three Comments Start -->
                            <li class="levelthree">
                            	<div class="thumb">
                                	<a href="#"><img src="${pageContext.request.contextPath}/static/images/avatar3.gif" alt="" /></a>
                                </div>
                                <div class="desc">
                                	<div class="desc-in-border">
                                    	<div class="desc-in">
                                    		<div class="title">
                                            	<h5><a href="#" class="black">Kax Miller</a></h5>
                                                <p>23 June 2012</p>
                                            </div>
                                            <p>
                                            	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam aliquet dignissim urna, eget lacinia est at a. Curabitur ultricies rhoncus dui, eget congue sem ultrices quis. <a href="#" class="reply">Reply</a>
                                            </p>
                                    	</div>
                                    </div>
                                    <span class="pointer">&nbsp;</span>
                                </div>
                            </li>
                            <!-- Level Three Comments End -->
                            <!-- Level One Comments Start -->

                        </ul>
                    </div>
                    <!-- Comments Section End -->
                    <div class="loadmore">
                    	<p><a href="#">Load More</a></p>
                    </div>
                    <!-- Enter Your Comments Start -->
                    <div class="enter-comments">
                    	<h3 class="heading colr">填写评论</h3>

                        <ul class="forms">
                        	<li>
                            	<textarea rows="" cols="" onfocus="if(this.value==='Enter Message') {this.value='';}"
                                onblur="if(this.value==='') {this.value='Enter Message';}">Enter Message</textarea>
                            </li>
                        </ul>
                        <ul class="forms">
                        	<li>
                            	<button class="backcolr">提交</button>
                            </li>
                        </ul>
                    </div>
                    <!-- Enter Your Comments End -->
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