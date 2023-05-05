<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<head>
    <%@include file="head.jsp"%>

</head>
<script type="text/javascript">
    function sign(){
        var username = $.trim($("#signUsername").val());
        var password = $.trim($("#signPassword").val());
        var realName = $.trim($("#inputRealName").val());
        var relation = $.trim($("#inputRelation").val());
        var email = $.trim($("#inputEmail").val());
        var reason = $.trim($("#inputReason").val());

        if(username === ""){
            alert("请输入用户名");
            return false;
        }else if(password === ""){
            alert("请输入密码");
            return false;
        }
        //ajax去服务器端校验
        var data= {username:username,password:password,realName:realName,relation:relation,email:email,reason:reason};

        $.ajax({
            type:"POST",
            url:'${pageContext.request.contextPath}/sign/signUp',
            data:data,
            dataType:'json',
            success:function(data){
                //alert(msg);
                if(data==null){
                    alert("注册失败！")
                }
                else{
                    alert("注册成功")
                    location.href='${pageContext.request.contextPath}/'

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
                <h1 class="colr">Events</h1>
                <p class="black">(08 Events)</p>
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
                    <!-- Event List Start -->
                    <div class="events-list">
                    	<!-- Event Tabs Section Start -->
                        <div class="events-tabs">

                                用户名：&ensp;&ensp;<input type="text" id="signUsername" name="signUsername"/><br/><br/>
                                密码：&ensp;&ensp;&ensp;&ensp;<input type="password" id="signPassword" name="signPassword"/><br/><br/>
<%--                                确定密码：<input type="password"/><br/><br/>--%>
                                真名：&ensp;&ensp;&ensp;&ensp;<input type="text" id="inputRealName" name="realName"/><br/><br/>
                                关系：&ensp;&ensp;&ensp;&ensp;<input type="text" id="inputRelation" name="relation"/><br/><br/>
                                原因：&ensp;&ensp;&ensp;&ensp;<input type="text" id="inputReason" name="reason"/><br/><br/>
                                电子邮件：<input type="text" id="inputEmail" name="email"/><br/><br/>
<%--                                验证码：&ensp;&ensp;<input type="text" id="code" name="code"/><br/><br>--%>

                            <button  onclick="sign()" class="backcolr dark">提交</button>


                        </div>
                        <!-- Event Tabs Section End -->
                    </div>
                    <!-- Event List End -->
                </div>
            </div>
            <!-- Two Third Section End -->
            <!-- One Third Section Start -->
            <div class="onethird right">
                <!-- One Third Box Start -->
                <div class="onethird box left">
                    <!-- Recent Posts Widget Start -->
                    <div class="widget recent-post">
                        <h3 class="heading colr">Recent Posts</h3>
                        <p class="black bold">Donec ut nibh tellus. Proin erat urna, luctuseg ementum at, facilisis sed nunc.</p>
                        <ul>
                        	<li><a href="#">Aenean commodo dolor at sapien luctus</a></li>
                            <li><a href="#">Sapien luctus non venenatis</a></li>
                            <li><a href="#">Aenean commodo dolor at sapien luctus</a></li>
                            <li><a href="#">Sapien luctus non venenatis</a></li>
                            <li><a href="#">Aenean commodo dolor at sapien luctus</a></li>
                            <li><a href="#">Sapien luctus non venenatis</a></li>
                        </ul>
                    </div>
                    <!-- Recent Posts Widget End -->
                </div>
                <!-- One Third Box End -->
                <!-- One Third Box Start -->
                <div class="onethird box left">
                    <!-- Image Gallery Widget Start -->
                    <div class="widget image-gallery">
                    	<h3 class="heading colr">Tab Widget</h3>
                        <ul>
                            <li><a href="#"><img src="${pageContext.request.contextPath}/static/images/flickr1.gif" alt="" /></a></li>
                            <li><a href="#"><img src="${pageContext.request.contextPath}/static/images/flickr2.gif" alt="" /></a></li>
                            <li><a href="#"><img src="${pageContext.request.contextPath}/static/images/flickr3.gif" alt="" /></a></li>
                            <li><a href="#"><img src="${pageContext.request.contextPath}/static/images/flickr4.gif" alt="" /></a></li>
                            <li><a href="#"><img src="${pageContext.request.contextPath}/static/images/flickr5.gif" alt="" /></a></li>
                            <li><a href="#"><img src="${pageContext.request.contextPath}/static/images/flickr6.gif" alt="" /></a></li>
                            <li><a href="#"><img src="${pageContext.request.contextPath}/static/images/flickr7.gif" alt="" /></a></li>
                            <li><a href="#"><img src="${pageContext.request.contextPath}/static/images/flickr8.gif" alt="" /></a></li>
                            <li><a href="#"><img src="${pageContext.request.contextPath}/static/images/flickr9.gif" alt="" /></a></li>
                            <li><a href="#"><img src="${pageContext.request.contextPath}/static/images/flickr10.gif" alt="" /></a></li>
                            <li><a href="#"><img src="${pageContext.request.contextPath}/static/images/flickr11.gif" alt="" /></a></li>
                            <li><a href="#"><img src="${pageContext.request.contextPath}/static/images/flickr12.gif" alt="" /></a></li>
                        </ul>
                        <a href="#" class="buttonone backcolr">View Gallery</a>
                    </div>
                    <!-- Image Gallery Widget Start -->
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

<!-- Scroller Section End -->
<!-- Footer Start -->
<%@include file="footer.jsp"%>

<!-- Footer End -->
</body>
</html>