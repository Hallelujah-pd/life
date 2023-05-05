<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <%@include file="head.jsp"%>

</head>
<script>
    function changeImg() {

        $("#headImg").blur(function () {
            console.log("选择图片完毕");
            // 获取表单对象
            var form = document.getElementById("modForm");
            // 根据表单对象创建FormData对象
            var formData = new FormData(form);
            // 获取到表单中选择的图片信息
            var modHeadImg = this.files[0];
            // 因为我是用的是文件选择框失去焦点的时候去发送请求,所以判断file是否为空,
            // 即如果没有选择文件就不进行ajax的提交
            if (modHeadImg==null){
                return;
            }
            // 通过append方法向formData中添加数据
            formData.append("modHeadImg",modHeadImg);
            // 进行ajax的请求设置
            $.ajax({
                url: '${pageContext.request.contextPath}/user/ajaxUploadUser', // 提交到后台的controller
                type: 'POST',  // 提交方式
                cache: false,  // 设置不让页面缓存
                data: formData,  // 提交的数据
                dataType: 'json',  // 提交数据的格式 这里用json
                processData: false,    //不需要对数据做任何预处理
                contentType: false,    //不设置数据格式
            });

        });
    }
</script>
</script>

<body>
<!-- Top Bar Start -->
<%@include file="topbar.jsp"%>

<!-- Top Bar End -->
<!-- Header Start -->
<div id="header">
	<div class="inner">
    	<!-- Top Header Section Start -->
        <%@include file="nav_bar.jsp"%>

        <!-- Top Header Section End -->
        <div class="clear"></div>
        <!-- Navigation Start -->

        <!-- Navigation End -->
        <div class="clear"></div>
        <!-- Bread Crumb Start -->

        <!-- Bread Crumb End -->
        <!-- Page Heading Section Start -->
        <div class="pageheading">
        	<div class="textsec">
                <h1 class="colr">资料修改</h1>
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
        	<!-- Contact Us Start -->
            <div class="contactus">
            	<!-- Contact Us Left Section Start -->
            	<div class="left-sec">
                	<!-- Text Section Start -->
                	<div class="text-sec">
                    	<h2 class="colr">头像</h2>
                        <h5>展示你自己的风采</h5>
                    </div>
                    <!-- Text Section End -->
                    <!-- Map Section Start -->
                    <div class="map">
                        <img src="${pageContext.request.contextPath}/${userById.headImg}" width="500" height="268"/>
                    </div>
                    <!-- Map Section End -->
                    <!-- Address Section Start -->

                    <!-- Address Section End -->
                    <!-- Sunday Services Start -->
                    <div class="sunday-service">

                    </div>
                    <!-- Sunday Services End -->
                </div>
                <!-- Contact Us Left Section End -->
                <!-- Contact Us Right Section Start -->
                <form action="${pageContext.request.contextPath}/user/updateUser?userId=${sessionScope.user_session.userId}" method="post" id="modForm">

                    <div class="right-sec">
                        <!-- Quick Enquiry Start -->
                        <div class="quick-inquiry">
                            <h2 class="colr">个人信息</h2>
                            <ul>
                                <li class="txt">头像</li>
                                <li>
                                    <input type="file" id="headImg" name="modHeadImg" onchange="changeImg()"/>
                                </li>
                            </ul>
                            <ul>
                                <li class="txt">用户名</li>
                                <li>
                                    <input type="text" class="bar" value="${userById.username}" name="modUsername"/>
                                    <p class="required">*必选</p>
                                </li>
                            </ul>
                            <ul>
                                <li class="txt">密码</li>
                                <li>
                                    <input type="password" class="bar" value="${userById.userPassword}" name="modPassword"/>
                                    <p class="required">*必选</p>
                                </li>
                            </ul>
                            <ul>
                                <li class="txt">电子邮箱</li>
                                <li>
                                    <input type="text" class="bar" value="${userById.email}" name="modEmail"/>
                                    <p class="required">*必选</p>
                                </li>
                            </ul>
                            <ul>
                                <li class="txt">个人介绍</li>
                                <li>
                                    <textarea cols="" rows="" name="modSelfInt">${userById.selfIntroduction}</textarea>
                                </li>
                            </ul>
                            <ul>
                                <li>
                                    <button class="backcolr left">提交</button>
                                    <p class="required">最多500字</p>
                                </li>
                            </ul>
                        </div>
                        <!-- Quick Enquiry End -->
                        <!-- Donation Start -->
                        <!-- Donation End -->
                    </div>
                </form>
                <!-- Contact Us Right Section End -->
                <div class="clear"></div>
            </div>
            <!-- Contact Us End -->
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