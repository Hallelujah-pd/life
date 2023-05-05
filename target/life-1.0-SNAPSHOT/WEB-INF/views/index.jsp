<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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

        <img src="${pageContext.request.contextPath}${randomArticle2.articleImg}" height="335" width="995" style="border: gainsboro solid 5px">
        <!-- Banner Section End -->
        <div class="clear"></div>
    </div>
</div>
<!-- Header End -->
<!-- Content Section Start -->
<div id="contentsec">
	<div class="inner">
    	<!-- Notification Start -->

        <div class="widget facebook-widget">
            <c:if test="${empty advTop}">
                <a href="#"><img src="${pageContext.request.contextPath}/static/img/4.jpeg" width="1000" height="150"/></a>
            </c:if>
            <c:if test="${not empty advTop}">
                <a href="${pageContext.request.contextPath}/Adv/addAdvClick?advId=${advTop.advId}">
                    <img src="${pageContext.request.contextPath}${advTop.advImg}" width="1000" height="100"/>
                    <div class="notification">
                        <h5 class="badge">广告</h5>
                        <div class="notif-data">
                            <div class="desc">
                                <h4 class="colr">${advTop.advHead}</h4>
                                <p>${advTop.advContent}</p>
                            </div>
                        </div>
                    </div>
                </a>
            </c:if>
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
                            <a href="#" class="thumb"><img src="${pageContext.request.contextPath}${randomArticle2.articleImg}" alt="" width="300" height="180"/></a>
                            <h4>
                                <a href="#">${randomArticle2.articleTitle}</a>
                            </h4>
                            <p class="articleClass">
                                ${randomArticle2.articleContent}
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
                        <c:forEach items="${articleBySortClick}" var="articleBySortClick" end="1">
                            <div class="home-post">
                                <a href="#" class="thumb"><img src="${pageContext.request.contextPath}${articleBySortClick.articleImg}" alt="" width="300" height="110" /></a>
                                <h4><a href="#">${articleBySortClick.articleTitle}</a></h4>
                                <p class="articleClass">${articleBySortClick.articleContent}</p>
                                <a href="#" class="readmore">查看更多</a>
                            </div>
                        </c:forEach>
                        <!-- Home Page Post End -->
                        <!-- Home Page Post Start -->
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
                                        <a href="${pageContext.request.contextPath}/Adv/addAdvClick?advId=${advTop.advId}">

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