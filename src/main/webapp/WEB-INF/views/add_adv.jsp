<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <%@include file="back_head.jsp"%>

</head>


<script>

    function changeAdvImg() {

        $("#advImage").blur(function () {
            console.log("选择图片完毕");
            // 获取表单对象
            var form = document.getElementById("addAdvForm");
            // 根据表单对象创建FormData对象
            var formData = new FormData(form);
            // 获取到表单中选择的图片信息
            var advPhoto = this.files[0];
            // 因为我是用的是文件选择框失去焦点的时候去发送请求,所以判断file是否为空,
            // 即如果没有选择文件就不进行ajax的提交
            if (advPhoto==null){
                return;
            }
            // 通过append方法向formData中添加数据
            formData.append("advPhoto",advPhoto);
            // 进行ajax的请求设置
            $.ajax({
                url: '${pageContext.request.contextPath}/BacKAdv/ajaxAddBackAdv', // 提交到后台的controller
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

<body>
<div class="container-fluid position-relative bg-white d-flex p-0">

    <div id="spinner"
         class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
        <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
            <span class="sr-only">Loading...</span>
        </div>
    </div>


    <%@include file="back_sidebar.jsp"%>


    <div class="content">

        <%@include file="back_topbar.jsp"%>



        <div class="container-fluid pt-4 px-4">
            <div class="row g-4">
                <div class="col-sm-12 col-xl-6">
                    <div class="bg-light rounded h-100 p-4">
                        <h5 class="mb-4">广告发布</h5>

                        <form method="post" action="${pageContext.request.contextPath}/BacKAdv/addBackAdv" id="addAdvForm">

                            <input class="form-control mb-3" type="text" placeholder="广告标题"
                                   aria-label="default input example" name="advTitle">
                            <br>
                            <div class="mb-3">
                                <h6 class="mb-4">添加广告图片</h6>
                                <input class="form-control" type="file" id="advImage" onchange="changeAdvImg()" name="advPhoto">
                            </div>
                            <br>
                            <div class="form-floating">
                            <textarea class="form-control" placeholder="Leave a comment here" id="floatingTextarea"
                                      style="height: 150px;" name="advContent"></textarea>
                                <label for="floatingTextarea">广告类容</label>
                            </div>
                            <br>
                            <div class="col-sm-12 col-xl-12 ">
                                <div class="bg-light rounded h-100 p-4">
                                    <h6 class="mb-4">选择展示页面</h6>

                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="checkbox" id="inlineCheckbox1" name="advLocation" value="主页">
                                        <label class="form-check-label" for="inlineCheckbox1">主页</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="checkbox" id="inlineCheckbox2" name="advLocation" value="博客">
                                        <label class="form-check-label" for="inlineCheckbox2">博客</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="checkbox" id="inlineCheckbox3" name="advLocation" value="博客详情">
                                        <label class="form-check-label" for="inlineCheckbox3">博客详情</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="checkbox" id="inlineCheckbox4" name="advLocation" value="博客发布">
                                        <label class="form-check-label" for="inlineCheckbox4">博客发布</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="checkbox" id="inlineCheckbox5" name="advLocation" value="个人介绍">
                                        <label class="form-check-label" for="inlineCheckbox5">个人介绍</label>
                                    </div>

                                    <hr>
                                </div>
                            </div>
                            <div class="col-sm-12 col-xl-12 ">
                                <div class="bg-light rounded h-100 p-4">
                                    <h6 class="mb-4">选择展示位置</h6>

                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="checkbox" id="inlineCheck1" name="advPageLocal" value="顶部">
                                        <label class="form-check-label" for="inlineCheck1">顶部</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="checkbox" id="inlineCheck2" name="advPageLocal" value="底部">
                                        <label class="form-check-label" for="inlineCheck2">底部</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="checkbox" id="inlineCheck3" name="advPageLocal" value="侧边1">
                                        <label class="form-check-label" for="inlineCheck3">侧边1</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="checkbox" id="inlineCheck4" name="advPageLocal" value="侧边2">
                                        <label class="form-check-label" for="inlineCheck4">侧边2</label>
                                    </div>
                                    <hr>
                                </div>
                            </div>
                            <select class="form-select form-select-sm mb-3" aria-label=".form-select-sm example" name="advOrder">
                                <option selected="">类别</option>
                                <option value="生活用品">生活用品</option>
                                <option value="电子产品">电子产品</option>
                                <option value="医药保健">医药保健</option>
                                <option value="礼品鲜花">礼品鲜花</option>
                                <option value="农资绿植">农资绿植</option>
                            </select>

                            <select class="form-select form-select-sm mb-3" aria-label=".form-select-sm example" name="advTime">
                                <option selected="" >广告挂载时间</option>
                                <option value="6">6小时</option>
                                <option value="12">12小时</option>
                                <option value="24">24小时</option>
                                <option value="48">两天</option>
                                <option value="72">三天</option>
                                <option value="96">四天</option>
                                <option value="120">五天</option>
                            </select>

                            <button type="submit" class="btn btn-primary">提交</button>
                        </form>

                    </div>

                </div>
                <div class="col-sm-12 col-xl-6">
                    <div class="bg-light rounded h-100 p-4">
                        <h5 class="mb-4">剩余广告位</h5>
                        <table class="table table-hover">
                            <thead>
                            <tr>
                                <th scope="col"></th>
                                <th scope="col">页面</th>
                                <th scope="col">数量</th>
                                <th scope="col">位置</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${advSites}" var="advSites">
                                <tr>
                                    <th scope="row">${advSites.advSiteid}</th>
                                    <td>${advSites.advSite}</td>
                                    <td>1</td>
                                    <td>${advSites.avdPagesite}</td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div><div>


        <div class="container-fluid pt-4 px-4">
            <div class="bg-light rounded-top p-4">
            </div>
        </div>
    </div>

</div>


<a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>
</div>

<%@include file="back_end.jsp"%>

</body>
</html>