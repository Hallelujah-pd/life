<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <%@include file="head.jsp"%>
</head>
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
        <!-- Banner Section Start -->
        <div class="banner-sec">
        	<!-- Banner Start -->
            <div class="banner">
                <div class="slider-wrapper theme-default">
                    <div id="slider" class="nivoSlider">
                        <a href="#"><img src="${pageContext.request.contextPath}${article.articleImg}" title="#banner1" alt=""/></a>
                        <a href="#"><img src="${pageContext.request.contextPath}${article2.articleImg}" title="#banner2" alt="" width="300px" height="180px"/></a>
                        <a href="#"><img src="${pageContext.request.contextPath}${article3.articleImg}" title="#banner3" alt="" width="300" height="180"/></a>
                        <a href="#"><img src="${pageContext.request.contextPath}${article4.articleImg}" title="#banner4" alt="" width="300" height="180"/></a>
                    </div>
                    <!-- Banner Caption Start -->
                    <div id="banner1" class="nivo-html-caption">
                        <h4 class="white">${article.articleTitle}</h4>
                        <p>${article.articleContent}</p>
                    </div>
                    <!-- Banner Caption End -->
                    <!-- Banner Caption Start -->
                    <div id="banner2" class="nivo-html-caption">
                        <h4 class="white">${article2.articleTitle}</h4>
                        <p>${article2.articleContent}</p>
                    </div>
                    <!-- Banner Caption End -->
                    <!-- Banner Caption Start -->
                    <div id="banner3" class="nivo-html-caption">
                        <h4 class="white">${article3.articleTitle}</h4>
                        <p>${article3.articleContent}</p>
                    </div>
                    <!-- Banner Caption End -->
                    <!-- Banner Caption Start -->
                    <div id="banner4" class="nivo-html-caption">
                        <h4 class="white">${article4.articleTitle}</h4>
                        <p>${article4.articleContent}</p>
                    </div>
                    <!-- Banner Caption End -->
                </div>
            </div>
            <!-- Banner End -->
            <!-- Welcome Section Start -->
            <div class="welcome">
            	<h4 class="sec-head backcolr">欢迎加入</h4>
                <div class="welc-text">
                	<a href="#"><img src="${pageContext.request.contextPath}/static/images/welcome.jpg" alt="" /></a>
                    <p>
                    	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean commodo dolor at sapien luctus non venenatis dui lacinia. Phasellus viverra, orci ut lacinia varius.  Phasellus viverra, orci ut lacinia varius.
                    </p>
                    <ul class="actions">
                    	<li><a href="#" class="txthover"><span class="join">&nbsp;</span>Join Us</a></li>
                        <li><a href="#" class="txthover"><span class="sermons">&nbsp;</span>Sermons</a></li>
                        <li><a href="#" class="txthover"><span class="support">&nbsp;</span>Support</a></li>
                    </ul>
                    <div class="clear"></div>
                </div>
            </div>
            <!-- Welcome Section End -->
            <div class="clear"></div>
        </div>
        <!-- Banner Section End -->
        <div class="clear"></div>
    </div>
</div>
<!-- Header End -->
<!-- Content Section Start -->
<div id="contentsec">
	<div class="inner">
    	<!-- Notification Start -->
    	<div class="notification">
        	<h4 class="badge">Notifications</h4>
            <div class="notif-data">
            	<div class="desc">
                	<h4 class="colr">Latest Sormens</h4>
                    <p>Churchill High Shool Baccalaureate, June 6, 6:00 PM</p>
                </div>
                <div class="buttons">
                	<a href="#" class="txthover"><span class="listen">&nbsp;</span>Listen</a>
                    <a href="#" class="txthover"><span class="download">&nbsp;</span>Download</a>
                </div>
            </div>
            <a href="#" class="closeit">&nbsp;</a>
        </div>
        <!-- Notification End -->
        <!-- Advertisment Banners Section Start -->
        <div class="advert-banners">
            <ul>
                <c:forEach var="carouselPhoto" items="${carouselPhoto}" end="2">
                    <li>
                        <div class="thumb">
                            <a href="#"><img src="${pageContext.request.contextPath}${carouselPhoto.photoImg}" alt="" width="300" height="180"/></a>
                            <h4 class="white">${carouselPhoto.photoTitle}</h4>
                        </div>
                    </li>
                </c:forEach>
            </ul>
        </div>
        <!-- Advertisment Banners Section End -->
        <div class="clear"></div>
        <!-- Full Width Section Start -->
        <div class="fullwidth box rightbar">
            <!-- Two Third Section Start -->
            <div class="twothird left">
            	<!-- Two Third Section Start -->
                <div class="twothird left">
                    <!-- Half Box Start -->
                    <div class="halfbox left border-right">
                        <h3 class="heading colr">关于我们</h3>
                        <!-- Home Page Post Start -->
                        <div class="home-post">
                            <a href="#" class="thumb"><img src="${pageContext.request.contextPath}${randomArticle3.articleImg}" alt="" width="300" height="180"/></a>
                            <h4>
                                <a href="#">${randomArticle3.articleTitle}</a>
                            </h4>
                            <p>
                                ${randomArticle3.articleContent}
                            </p>
                            <a href="#" class="readmore">查看更多</a>
                        </div>
                        <!-- Home Page Post End -->
                    </div>
                    <!-- Half Box End -->
                    <!-- Half Box Start -->
                    <div class="halfbox right">
                        <h3 class="heading colr">每时一看</h3>
                        <!-- Home Page Post Start -->
                        <div class="home-post">
                            <a href="#" class="thumb"><img src="${pageContext.request.contextPath}${randomArticle.articleImg}" alt="" width="300" height="110" /></a>
                            <h4><a href="#">${randomArticle.articleTitle}</a></h4>
                            <p>${randomArticle.articleContent}</p>
                            <a href="#" class="readmore">查看更多</a>
                        </div>
                        <!-- Home Page Post End -->
                        <!-- Home Page Post Start -->
                        <div class="home-post">
                            <a href="#" class="thumb"><img src="${pageContext.request.contextPath}${randomArticle2.articleImg}" alt="" width="300" height="110"/></a>
                            <h4><a href="#">${randomArticle2.articleTitle}</a></h4>
                            <p>
                                ${randomArticle2.articleContent}
                            </p>
                            <a href="#" class="readmore">查看更多</a>
                        </div>
                        <!-- Home Page Post End -->
                    </div>
                    <!-- Half Box End -->
                </div>
                <hr />
                <div class="twothird left">
                    <!-- Half Box Start -->
                    <div class="halfbox left border-right">
                        <h3 class="heading colr">Video Gallery</h3>
                        <!-- Video Gallery Start -->
                        <div class="video-gallery">
                            <ul>
                                <li>
                                    <a href="#" class="thumb"><img src="${pageContext.request.contextPath}/static/images/img7.jpg" alt="" /></a>
                                    <p><a href="#" class="bold">Donec ut nibh tellus. Proin erat urna, luctuseg ementum at, facilisis sed nunc.</a></p>
                                </li>
                                <li><a href="#">Aenean commodo dolor at sapien luctus (05:30)</a></li>
                                <li><a href="#">Sapien luctus non venenatis (19:18)</a></li>
                            </ul>
                        </div>
                        <!-- Video Gallery End -->
                    </div>
                    <!-- Half Box End -->
                    <!-- Half Box Start -->
                    <div class="halfbox right">
                        <h3 class="heading colr">照片相册</h3>
                        <!-- Home Page Post Start -->
                        <div class="image-gallery">
                            <ul>
                                <c:forEach items="${allPhoto}" var="allPhoto" end="11">
                                    <li><a href="#"><img src="${pageContext.request.contextPath}${allPhoto.photoImg}" alt="" width="62" height="61"/></a></li>
                                </c:forEach>
                            </ul>
                            <a href="#" class="buttonone backcolr">View Gallery</a>
                        </div>
                        <!-- Home Page Post End -->
                    </div>
                    <!-- Half Box End -->
                </div>
            </div>
            <!-- Two Third Section End -->
            <!-- One Third Section Start -->
            <div class="onethird right">
                <!-- One Third Box Start -->
                <div class="onethird box left">
                    <!-- Upcoming Widget Start -->
                    <div class="widget wp-calendar">
                        <h4 class="sec-head backcolr">Upcomming Events</h4>
                        <div class="calendar">
                            <ul class="months">
                                <li><a href="#" class="calendar-prev">&nbsp;</a></li>
                                <li><h4 class="white">January 2012</h4></li>
                                <li><a href="#" class="calendar-next">&nbsp;</a></li>
                            </ul>
                            <ul class="days">
                                <li>Mon</li>
                                <li>Tue</li>
                                <li>Wed</li>
                                <li>Thu</li>
                                <li>Fri</li>
                                <li>Sat</li>
                                <li>Sun</li>
                            </ul>
                            <ul class="dates">
                                <li class="disabled"><a href="#">30</a></li>
                                <li><a href="#">1</a></li>
                                <li><a href="#">2</a></li>
                                <li><a href="#">3</a></li>
                                <li><a href="#">4</a></li>
                                <li><a href="#">5</a></li>
                                <li><a href="#">6</a></li>
                                <li><a href="#">7</a></li>
                                <li><a href="#">8</a></li>
                                <li><a href="#">9</a></li>
                                <li><a href="#">10</a></li>
                                <li><a href="#">11</a></li>
                                <li><a href="#">12</a></li>
                                <li><a href="#">13</a></li>
                                <li><a href="#">14</a></li>
                                <li><a href="#">15</a></li>
                                <li><a href="#">16</a></li>
                                <li><a href="#">17</a></li>
                                <li><a href="#">18</a></li>
                                <li><a href="#">19</a></li>
                                <li><a href="#">20</a></li>
                                <li><a href="#">21</a></li>
                                <li><a href="#">22</a></li>
                                <li><a href="#" class="ev-date">23</a></li>
                                <li><a href="#">24</a></li>
                                <li><a href="#" class="ev-date">25</a></li>
                                <li><a href="#">26</a></li>
                                <li><a href="#">27</a></li>
                                <li><a href="#">28</a></li>
                                <li><a href="#">29</a></li>
                                <li><a href="#">30</a></li>
                                <li><a href="#">31</a></li>
                                <li class="disabled"><a href="#">1</a></li>
                                <li class="disabled"><a href="#">2</a></li>
                                <li class="disabled"><a href="#">3</a></li>
                            </ul>
                        </div>
                    </div>
                    <!-- Upcoming Widget End -->
                </div>
                <!-- One Third Box End -->
                <!-- One Third Box Start -->
                <div class="onethird box left">
                	<!-- Facebook Widget Start -->
            		<div class="widget ads-widget">
                    	<a href="#"><img src="${pageContext.request.contextPath}/static/images/adv1.jpg" alt="" /></a>
                    </div>
                    <!-- Facebook Widget Start -->
            	</div>
                <!-- One Third Box End -->
                <!-- One Third Box Start -->
                <div class="onethird box left">
                	<!-- Facebook Widget Start -->
            		<div class="widget facebook-widget">
                    	<a href="#"><img src="${pageContext.request.contextPath}/static/images/facebook.jpg" alt="" /></a>
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