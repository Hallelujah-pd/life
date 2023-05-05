<%--
  Created by IntelliJ IDEA.
  User: 彭帝
  Date: 2022/5/12
  Time: 18:23
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>


<div id="footer">
    <div class="inner">
        <!-- Widget PlaceHolder Start -->
        <div class="widget-placeholder">
            <!-- Text Widget Start -->
            <div class="widget text-widget">
                <a href="#"><img src="${pageContext.request.contextPath}/static/images/logo-foot.png" alt="" /></a>
                <br />
                <br />
                <p>
                    P.O Box 1234<br />
                    Your City, City Name and Code 12345<br />
                    (800) 12-34567 | Fax: (123) 345-6789<br />
                    Email: <a href="mailto:email@yourcompany.com">Email@life.com</a><br />
                </p>
            </div>
            <!-- Text Widget End -->
            <!-- Social Network Start -->
            <div class="widget social-network">
                <h5 class="white">Follow Us</h5>
                <ul>
                    <li><a href="#"><img src="${pageContext.request.contextPath}/static/images/tweeter-icon.png" alt="" /></a></li>
                    <li><a href="#"><img src="${pageContext.request.contextPath}/static/images/facebook-icon.png" alt="" /></a></li>
                    <li><a href="#"><img src="${pageContext.request.contextPath}/static/images/vimeo-icon.png" alt="" /></a></li>
                    <li><a href="#"><img src="${pageContext.request.contextPath}/static/images/lastfm-icon.png" alt="" /></a></li>
                    <li><a href="#"><img src="${pageContext.request.contextPath}/static/images/myspace-icon.png" alt="" /></a></li>
                </ul>
                <div class="clear"></div>
            </div>
            <!-- Social Network End -->
        </div>
        <!-- Widget PlaceHolder End -->

        <div class="clear"></div>
    </div>
    <!-- Copyrights Start -->
    <div class="copyrights">
        <div class="inner">
            <!-- Go To Top Start -->
            <a href="#top" class="top">回到顶部</a>
            <!-- Go To Top Start -->
            <div class="clear"></div>
        </div>
    </div>
    <!-- Copyrights End -->
</div>

</html>
