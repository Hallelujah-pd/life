<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<head>
    <%@include file="head.jsp"%>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/kindeditor-4.1.5/themes/default/default.css" />
    <script charset="utf-8" src="${pageContext.request.contextPath}/static/kindeditor-4.1.5/kindeditor-min.js"></script>
    <script charset="utf-8" src="${pageContext.request.contextPath}/static/kindeditor-4.1.5/lang/zh_CN.js"></script>

    <script>

    var editor;
    KindEditor.ready(
        function (K) {
            editor = K.create('textarea[name="content"]', {
                    //上传处理程序的路径
                    uploadJson: '/KindEditor/asp.net/upload_json.ashx',
                    imageSizeLimit: '10MB', //批量上传图片单张最大容量
                    imageUploadLimit: 30, //批量上传图片同时上传最多个数
                    //文件管理处理程序的路径
                    fileManagerJson: '/KindEditor/asp.net/file_manager_json.ashx',
                    allowFileManager: true,
                    //要取值设置这里 这个函数就是同步KindEditor的值到textarea文本框
                    afterCreate: function () {
                        var self = this;
                        K.ctrl(document, 13, function () {
                            self.sync();
                            K('form[name=example]')[0].submit();
                        });
                        K.ctrl(self.edit.doc, 13, function () {
                            self.sync();
                            K('form[name=example]')[0].submit();
                        });
                    },
                    //上传后执行的回调函数,获取上传图片的路径
                    //afterUpload: function (data) {
                    //    alert(data);
                    //},
                    width: '900px;',
                    height: '500px;',
                    //编辑工具栏
                    items: [
                        'source', '|', 'undo', 'redo', '|', 'preview', 'print', 'template', 'code', 'cut', 'copy', 'paste',
                        'plainpaste', 'wordpaste', '|', 'justifyleft', 'justifycenter', 'justifyright',
                        'justifyfull', 'insertorderedlist', 'insertunorderedlist', 'indent', 'outdent', 'subscript',
                        'superscript', 'clearhtml', 'quickformat', 'selectall', '|', 'fullscreen', '/',
                        'formatblock', 'fontname', 'fontsize', '|', 'forecolor', 'hilitecolor', 'bold',
                        'italic', 'underline', 'strikethrough', 'lineheight', 'removeformat', '|', 'image', 'multiimage',
                        'flash', 'media', 'insertfile', 'table', 'hr', 'emoticons', 'baidumap', 'pagebreak',
                        'anchor', 'link', 'unlink', '|', 'about'
                    ],
                    afterCreate: function () { //kindeditor创建后，将编辑器的内容设置到原来的textarea控件里
                        this.sync();
                    },
                    afterChange: function () { //编辑器内容发生变化后，将编辑器的内容设置到原来的textarea控件里
                        this.sync();
                    },
                    afterBlur: function () { //编辑器聚焦后，将编辑器的内容设置到原来的textarea控件里
                        this.sync();
                    }
                }
            );

        }
    );


    function changeImg() {

            $("#rimage").blur(function () {
                console.log("选择图片完毕");
                // 获取表单对象
                var form = document.getElementById("addForm");
                // 根据表单对象创建FormData对象
                var formData = new FormData(form);
                // 获取到表单中选择的图片信息
                var photo = this.files[0];
                // 因为我是用的是文件选择框失去焦点的时候去发送请求,所以判断file是否为空,
                // 即如果没有选择文件就不进行ajax的提交
                if (photo==null){
                    return;
                }
                // 通过append方法向formData中添加数据
                formData.append("photo",photo);
                // 进行ajax的请求设置
                $.ajax({
                    url: '${pageContext.request.contextPath}/release/ajaxUpload', // 提交到后台的controller
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
</head>


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

        <!-- Bread Crumb End -->
        <!-- Page Heading Section Start -->
        <div class="pageheading">
        	<div class="textsec">
                <h1 class="colr">博客发布</h1>
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
        <div class="fullwidth box rightbar">
            <!-- Two Third Section Start -->
            <div class="twothird left">
            	<!-- Two Third Section Start -->
                <div class="twothird left">
                    <!-- Event List Start -->
                    <div class="events-list">

                    	<!-- Event Tabs Section Start -->
                        <div class="events-tabs">
                            <form action="${pageContext.request.contextPath}/release/insertArticle?uId=${sessionScope.user_session.userId}" method="post" id="addForm" >
                                <br/><br/>
                                标题:<input type="text" name="title" style="width: 300px"/>
                                <br/><br/>
<%--                                图片：<input type="file" name="photo" id="rimage"/>--%>
                                <div class="form-group">
                                    <label for="rimage">选择图片：</label>
                                    <input type="file" class="form-control" id="rimage" name="right" onchange="changeImg()"/>
                                </div>

                                <!--编写文本域--><br/><br/>
                                内容：<br/><br/><textarea id="mul_input" name="content" style="width:650px;height:200px;visibility:hidden;display: block;">KindEditor</textarea>
                                <br/><input type="submit" value="提交"/>
                            </form>

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

                <!-- One Third Box End -->
                <!-- One Third Box Start -->

                <!-- One Third Box End -->
                <!-- One Third Box Start -->
                <div class="onethird box left">
                    <!-- Advertisment Widget Start -->
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

                            <img src="${pageContext.request.contextPath}${advEnd.advImg}" width="1000" height="100"/></a>
                            <div class="notification">
                                <h5 class="badge">广告</h5>
                                <div class="notif-data">
                                    <div class="desc">
                                        <h4 class="colr">${advEnd.advHead}</h4>
                                        <p>${advEnd.advContent}</p>
                                    </div>
                                </div>
                            </div>
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