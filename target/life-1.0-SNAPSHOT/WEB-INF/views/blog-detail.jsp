<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<head>
    <%@include file="head.jsp"%>

</head>
<script type="text/javascript">
    function comment(){
        var texComment = $.trim($("#texComment").val());
        let articleId = $("#texComment").attr("articleId");


        if(texComment === ""){
            alert("请输入评论");
            return false;
        }
        //ajax去服务器端校验
        var data= {texComment:texComment,articleId:articleId};

        $.ajax({
            type:"POST",
            url:'${pageContext.request.contextPath}/blogDetail/releaseComment?userId=${sessionScope.user_session.userId}',
            data:data,
            dataType:'json',
            success:function(data){
                //alert(msg);
                if(data!=null){

                    location.href='${pageContext.request.contextPath}/blogDetail/getBlogDetail?articleId=${blogDetail.articleId}'
                }
            }
        });
    }

</script>

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
                    	<h3 class="colr heading">评论</h3>
                        <c:forEach items="${comments}" var="comments">

                            <li class="leveltwo">
                                <div class="thumb">
                                    <a href="#"><img src="${pageContext.request.contextPath}/${comments.user.headImg}" width="50" height="50" /></a>
                                </div>
                                <div class="desc">
                                    <div class="desc-in-border">
                                        <div class="desc-in">
                                            <div class="title">
                                                <h5><a href="#" class="black">${comments.user.username}</a></h5>
                                                <p>${comments.commentTime}</p>
                                            </div>
                                            <p>
                                                    ${comments.commentContent}

                                            </p>
                                        </div>

                                    </div>

                                </div>
                            </li>
                        </c:forEach>
                    </div>
                    <!-- Comments Section End -->

                    <!-- Enter Your Comments Start -->
                    <div class="enter-comments">
                    	<h3 class="heading colr">填写评论</h3>

                        <ul class="forms">
                        	<li>
                            	<textarea id="texComment" articleId="${blogDetail.articleId}"></textarea>
                            </li>
                        </ul>
                        <ul class="forms">
                        	<li>
                            	<button class="backcolr" onclick="comment()">提交</button>
                            </li>
                        </ul>
                    </div>
                    <!-- Enter Your Comments End -->
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
                    <!-- Image Gallery Widget Start -->
                    <div class="widget image-gallery">
                        <h3 class="heading colr">照片</h3>
                        <ul>
                            <c:forEach items="${blogPhoto}" var="blogPhoto" end="11">
                                <li><a href="#"><img src="${pageContext.request.contextPath}${blogPhoto.photoImg}" alt="" width="62" height="61"/></a></li>
                            </c:forEach>

                        </ul>
                        <a href="#" class="buttonone backcolr">相册照片</a>
                    </div>
                    <!-- Image Gallery Widget Start -->
                </div>
                <!-- One Third Box End -->
                <!-- One Third Box Start -->
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