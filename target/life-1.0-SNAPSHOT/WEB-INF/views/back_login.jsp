<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <%@include file="back_head.jsp"%>

</head>
<script type="text/javascript">
    function login(){
        var adminName = $.trim($("#inputAdminName").val());
        var adminPassword = $.trim($("#inputAdminPassword").val());
        if(adminName === ""){
            alert("请输入用户名");
            return false;
        }else if(adminPassword === ""){
            alert("请输入密码");
            return false;
        }
        //ajax去服务器端校验
        var data= {adminName:adminName,adminPassword:adminPassword};

        $.ajax({
            type:"POST",
            url:'${pageContext.request.contextPath}/back/login',
            data:data,
            dataType:'json',
            success:function(data){
                //alert(msg);
                if(data==null){
                    alert("没有这个用户！")
                }
                else{
                    alert("登录成功")
                    location.href='${pageContext.request.contextPath}/backIndex/intoIndex'

                }
            }
        });
    }
</script><body>
<div class="container-fluid position-relative bg-white d-flex p-0">

    <div id="spinner"
         class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
        <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
            <span class="sr-only">Loading...</span>
        </div>
    </div>


    <div class="container-fluid">
        <div class="row h-100 align-items-center justify-content-center" style="min-height: 100vh;">
            <div class="col-12 col-sm-8 col-md-6 col-lg-5 col-xl-4">
                <div class="bg-light rounded p-4 p-sm-5 my-4 mx-3">
                    <div class="d-flex align-items-center justify-content-between mb-3">
                        <a href="index1.html" class="">
                            <h3 class="text-primary"><i class="fa fa-hashtag me-2"></i>LIFE</h3>
                        </a>
                        <h3>登陆</h3>
                    </div>
                    <div class="form-floating mb-3">
                        <input type="email" class="form-control" id="inputAdminName" placeholder="name@example.com">
                        <label for="inputAdminName">用户名</label>
                    </div>
                    <div class="form-floating mb-4">
                        <input type="password" class="form-control" id="inputAdminPassword" placeholder="Password" >
                        <label for="inputAdminPassword">密码</label>
                    </div>
                    <div class="d-flex align-items-center justify-content-between mb-4">
                        <div class="form-check">
                            <input type="checkbox" class="form-check-input" id="exampleCheck1">
                            <label class="form-check-label" for="exampleCheck1">记住密码</label>
                        </div>
                    </div>
                    <button type="submit" class="btn btn-primary py-3 w-100 mb-4" onclick="login()">登陆</button>
                </div>
            </div>
        </div>
    </div>

</div>

<%@include file="back_end.jsp"%>
</body>
</html>