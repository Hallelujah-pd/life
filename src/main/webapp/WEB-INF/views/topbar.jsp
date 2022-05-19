<%--
  Created by IntelliJ IDEA.
  User: 彭帝
  Date: 2022/5/9
  Time: 19:11
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<%--<script src="https://cdn.bootcdn.net/ajax/libs/jquery/2.0.0/jquery.js"></script>--%>
<div id="top-bar">
    <div class="inner">
        <!-- Top Bar Posts Start -->
        <div class="small-posts">
            <p>life is the cornerstone of everything. <a href="#">阅读详情</a></p>
        </div>
        <!-- Top Bar Posts End -->
        <c:if test="${not empty sessionScope.user_session}">
            <div class="toplinks">

                <ul class="top-links">
                    <li><p>欢迎登陆！</p></li>
                </ul>
                <ul class="top-links">

                    <li><img src="${pageContext.request.contextPath}/${sessionScope.user_session.headImg}" height="20" width="20"></li>
                    <li><p>${sessionScope.user_session.username}</p></li>
                </ul>
                <ul class="top-links">
                    <li><a href="${pageContext.request.contextPath}/user/logOut">注销</a></li>
                </ul>
            </div>
        </c:if>

        <c:if test="${sessionScope.user_session == null}">
            <!-- Top Links Start -->
            <div class="toplinks">
                <a href="javascript:animatedcollapse.toggle('loginbox')" class="loginbtn">登陆</a>
                <!-- Login Box Start -->
                <div id="loginbox">
                    <h3 class="upper">用户登录</h3>
                    <ul>
                        <li class="用户名"><input id="inputUsername" type="text" value="username" class="bar" /></li>
                        <li class="密码"><input id="inputPassword" type="password" value="userPassword" class="bar" /></li>
                    </ul>
                    <div class="btns-sec">
                        <button  onclick="login()" class="backcolr dark">提交</button>
                        <p>需要一个帐户? <a href="${pageContext.request.contextPath}/sign/intoSign">注册</a></p>
                    </div>
                </div>
                <!-- Login Box End -->
                <!-- Top Links Start -->
                <ul class="top-links">
                    <li>请登陆账号！</li>
                </ul>
                <!-- Top Links End -->
            </div>
            <!-- Top Links End -->
        </c:if>
        <div class="clear"></div>
    </div>
</div>
<script type="text/javascript">
    function login(){
        var username = $.trim($("#inputUsername").val());
        var password = $.trim($("#inputPassword").val());
        if(username === ""){
            alert("请输入用户名");
            return false;
        }else if(password === ""){
            alert("请输入密码");
            return false;
        }
        //ajax去服务器端校验
        var data= {username:username,password:password};

        $.ajax({
            type:"POST",
            url:'${pageContext.request.contextPath}/user/login',
            data:data,
            dataType:'json',
            success:function(data){
                //alert(msg);
                if(data==null){
                    alert("没有这个用户！")
                }
                else{
                    alert("登录成功")
                    location.href='${pageContext.request.contextPath}/'

                }
            }
        });
    }
</script>
</html>
