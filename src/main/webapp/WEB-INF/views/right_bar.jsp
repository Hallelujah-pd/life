<%--
  Created by IntelliJ IDEA.
  User: 彭帝
  Date: 2022/5/23
  Time: 10:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <!-- One Third Box End -->
    <!-- One Third Box Start -->
    <div class="onethird box left">
        <!-- Recent Posts Widget Start -->
        <div class="widget tabs-widget">
            <h3 class="heading colr">Tab Widget</h3>
            <!-- Tab Code Start -->
            <div class="tab-section">
                <div class="tab_menu_container">
                    <ul id="tabs-code">
                        <li style="width:34%;"><a class="current" rel="tab1">Blogs</a></li>
                        <li style="width:33%;"><a class="" rel="tab2">Tags</a></li>
                        <li style="width:33%;"><a class="" rel="tab3">Comments</a></li>
                    </ul>
                    <div class="clear"></div>
                </div>
                <div class="tab_container">
                    <div class="tab_container_in">
                        <div id="tab1" class="tab_sidebar_list">
                            <ul class="post-thumbs">
                                <li>
                                    <div class="thumb">
                                        <a href="#"><img src="${pageContext.request.contextPath}/static/images/post1.gif" alt="" /></a>
                                    </div>
                                    <div class="desc">
                                        <h5><a href="#" class="txthover">Worship and prayer</a></h5>
                                        <p>Lorem ipsum dolor sit amet, ectetur adipiscing elit. Aenean commodo dolor at sapien luctus non</p>
                                        <a href="#" class="readmore">Read more</a>
                                    </div>
                                </li>
                                <li>
                                    <div class="thumb">
                                        <a href="#"><img src="${pageContext.request.contextPath}/static/images/post2.gif" alt="" /></a>
                                    </div>
                                    <div class="desc">
                                        <h5><a href="#" class="txthover">Worship and prayer</a></h5>
                                        <p>Lorem ipsum dolor sit amet, ectetur adipiscing elit. Aenean commodo dolor at sapien luctus non</p>
                                        <a href="#" class="readmore">Read more</a>
                                    </div>
                                </li>
                                <li>
                                    <div class="thumb">
                                        <a href="#"><img src="${pageContext.request.contextPath}/static/images/post3.gif" alt="" /></a>
                                    </div>
                                    <div class="desc">
                                        <h5><a href="#" class="txthover">Worship and prayer</a></h5>
                                        <p>Lorem ipsum dolor sit amet, ectetur adipiscing elit. Aenean commodo dolor at sapien luctus non</p>
                                        <a href="#" class="readmore">Read more</a>
                                    </div>
                                </li>
                                <li>
                                    <div class="thumb">
                                        <a href="#"><img src="${pageContext.request.contextPath}/static/images/post1.gif" alt="" /></a>
                                    </div>
                                    <div class="desc">
                                        <h5><a href="#" class="txthover">Worship and prayer</a></h5>
                                        <p>Lorem ipsum dolor sit amet, ectetur adipiscing elit. Aenean commodo dolor at sapien luctus non</p>
                                        <a href="#" class="readmore">Read more</a>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div id="tab2" class="tab_sidebar_list">
                            <div class="tags-box">
                                <a href="#">Lorem</a>
                                <a href="#">ipsum</a>
                                <a href="#">dolor</a>
                                <a href="#">sit</a>
                                <a href="#">amet</a>
                                <a href="#">consectetur</a>
                                <a href="#">adipiscing</a>
                                <a href="#">elit</a>
                                <a href="#">tempus</a>
                                <a href="#">lacinia</a>
                                <a href="#">posuere</a>
                                <a href="#">consequat</a>
                                <a href="#">dictumst</a>
                                <a href="#">lacinia</a>
                                <a href="#">Lorem</a>
                                <a href="#">ipsum</a>
                                <a href="#">dolor</a>
                                <a href="#">sit</a>
                                <a href="#">amet</a>
                                <a href="#">consectetur</a>
                                <a href="#">adipiscing</a>
                                <a href="#">elit</a>
                                <a href="#">tempus</a>
                                <a href="#">lacinia</a>
                                <a href="#">posuere</a>
                                <a href="#">consequat</a>
                                <a href="#">dictumst</a>
                                <a href="#">lacinia</a>
                            </div>
                        </div>
                        <div id="tab3" class="tab_sidebar_list">
                            <ul class="post-thumbs">
                                <li>
                                    <div class="thumb">
                                        <a href="#"><img src="${pageContext.request.contextPath}/static/images/post2.gif" alt="" /></a>
                                    </div>
                                    <div class="desc">
                                        <h5><a href="#" class="txthover">Worship and prayer</a></h5>
                                        <p>Lorem ipsum dolor sit amet, ectetur adipiscing elit. Aenean commodo dolor at sapien luctus non</p>
                                        <a href="#" class="readmore">Read more</a>
                                    </div>
                                </li>
                                <li>
                                    <div class="thumb">
                                        <a href="#"><img src="${pageContext.request.contextPath}/static/images/post1.gif" alt="" /></a>
                                    </div>
                                    <div class="desc">
                                        <h5><a href="#" class="txthover">Worship and prayer</a></h5>
                                        <p>Lorem ipsum dolor sit amet, ectetur adipiscing elit. Aenean commodo dolor at sapien luctus non</p>
                                        <a href="#" class="readmore">Read more</a>
                                    </div>
                                </li>
                                <li>
                                    <div class="thumb">
                                        <a href="#"><img src="${pageContext.request.contextPath}/static/images/post3.gif" alt="" /></a>
                                    </div>
                                    <div class="desc">
                                        <h5><a href="#" class="txthover">Worship and prayer</a></h5>
                                        <p>Lorem ipsum dolor sit amet, ectetur adipiscing elit. Aenean commodo dolor at sapien luctus non</p>
                                        <a href="#" class="readmore">Read more</a>
                                    </div>
                                </li>
                                <li>
                                    <div class="thumb">
                                        <a href="#"><img src="${pageContext.request.contextPath}/static/images/post1.gif" alt="" /></a>
                                    </div>
                                    <div class="desc">
                                        <h5><a href="#" class="txthover">Worship and prayer</a></h5>
                                        <p>Lorem ipsum dolor sit amet, ectetur adipiscing elit. Aenean commodo dolor at sapien luctus non</p>
                                        <a href="#" class="readmore">Read more</a>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div class="clear"></div>
                    </div>
                </div>
            </div>
            <!-- Tab Code End -->
        </div>
        <!-- Recent Posts Widget End -->
    </div>
    <!-- One Third Box End -->
    <!-- One Third Box Start -->
    <div class="onethird box left">
        <!-- Image Gallery Widget Start -->
        <div class="widget image-gallery">
            <h3 class="heading colr">选项卡小部件</h3>
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
        <div class="widget ads-widget">
            <a href="#"><img src="${pageContext.request.contextPath}/static/images/adv1.jpg" alt="" /></a>
        </div>
        <!-- Advertisment Widget Start -->
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
