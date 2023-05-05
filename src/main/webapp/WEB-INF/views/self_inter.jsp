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
                        <hr/>

                        <!-- Home Page Post Start -->
                        <div class="home-post">
                            <a href="#" class="thumb"><img src="${pageContext.request.contextPath}/${selfInter.headImg}" alt="" width="300" height="180"/></a>
                            <a href="#" class="readmore">头像</a>
                            <br/><br/>
                            <hr/>
                            <h4>
                                <a href="#"  style="color: brown">${selfInter.selfIntroduction}</a>
                            </h4>
                            <p>
                                自我介绍
                            </p>

                        </div>
                        <!-- Home Page Post End -->
                    </div>
                    <!-- Half Box End -->
                    <!-- Half Box Start -->
                    <div class="halfbox right">
                        <!-- Home Page Post Start -->
                        <hr/>


                        <div class="home-post">
                            <h4><a href="#" style="color: brown">${selfInter.username}</a></h4>
                            <a href="#" class="readmore">用户名</a>
                        </div>
                        <!-- Home Page Post End -->
                        <!-- Home Page Post Start -->
                        <hr/>

                        <div class="home-post">
                            <h4><a href="#" style="color: brown">${selfInter.email}</a></h4>
                            <a href="#" class="readmore">电子邮箱</a>
                        </div>
                        <!-- Home Page Post Start -->
                        <hr/>


                        <div class="home-post">
                            <h4><a href="#" style="color: brown">${selfInter.relation}</a></h4>
                            <a href="#" class="readmore">与管理员关系</a>
                        </div>

                        <hr/>

                        <!-- Home Page Post Start -->
                        <div class="home-post">
                            <h4><a href="#" style="color: brown">${selfInter.realName}</a></h4>
                            <a href="#" class="readmore">真名</a>
                        </div>
                        <!-- Home Page Post End -->
                    </div>
                    <!-- Half Box End -->
                </div>
                <hr />
                <div class="twothird left">
                    <!-- Half Box Start -->
                    <div class="halfbox left border-right">
                        <h3 class="heading colr">发帖</h3>
                        <!-- Video Gallery Start -->
                        <div class="video-gallery">
                            <ul>
                                <c:forEach items="${articleByUserId}" var="articleByUserId" end="2">
                                    <li>
                                        <hr/>
                                        <a href="#" class="thumb"><img src="${pageContext.request.contextPath}${articleByUserId.articleImg}" width="300" height="146" /></a>
                                        <h4><a href="#">《${articleByUserId.articleTitle}》</a></h4><br/>
                                        <p><a href="#" class="bold">${articleByUserId.articleContent}</a></p>

                                    </li>
                                </c:forEach>
                            </ul>
                        </div>
                        <!-- Video Gallery End -->
                    </div>
                    <!-- Half Box End -->
                    <!-- Half Box Start -->
                    <div class="halfbox right">
                        <h3 class="heading colr">照片相册</h3>
                        <!-- Home Page Post Start -->
                        <div class="video-gallery">
                            <ul>
                                <c:forEach items="${sortTimePhotosByUserId}" var="sortTimePhotosByUserId" end="2">
                                    <li>
                                        <hr/>
                                        <a href="#" class="thumb"><img src="${pageContext.request.contextPath}${sortTimePhotosByUserId.photoImg}" width="300" height="146" /></a>
                                        <h4><a href="#">《${sortTimePhotosByUserId.photoTitle}》</a></h4><br/>
                                        <p><a href="#" class="bold">${sortTimePhotosByUserId.photoContent}</a></p>
                                    </li>
                                </c:forEach>
                            </ul>
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