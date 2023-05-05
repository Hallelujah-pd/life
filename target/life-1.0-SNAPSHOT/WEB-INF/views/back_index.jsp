<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <%@include file="back_head.jsp"%>
</head>
<script src="${pageContext.request.contextPath}/static/echarts.js"></script>
<script type="text/javascript">

    setTimeout(() => {
        init3();
    }, 1);

    function init3() {
        var chartDom = document.getElementById('main');
        var myChart = echarts.init(chartDom);
        var option;

        option = {
            title: {
                text: '广告点击量',
                left: 'center'
            },
            tooltip: {
                trigger: 'item'
            },
            legend: {
                top: '5%',
                left: 'center'
            },
            series: [
                {
                    name: '广告标题',
                    type: 'pie',
                    radius: ['40%', '70%'],
                    avoidLabelOverlap: false,
                    itemStyle: {
                        borderRadius: 10,
                        borderColor: '#fff',
                        borderWidth: 2
                    },
                    label: {
                        show: false,
                        position: 'center'
                    },
                    emphasis: {
                        label: {
                            show: true,
                            fontSize: '40',
                            fontWeight: 'bold'
                        }
                    },
                    labelLine: {
                        show: false
                    },
                    data: [
                        <c:forEach items="${advByOrderClick}" var="advByOrderClick" end="4">
                        { value: ${advByOrderClick.advClick}, name: '${advByOrderClick.advHead}' },
                        </c:forEach>
                    ]
                }
            ]
        };

        option && myChart.setOption(option);

    }

    setTimeout(() => {
        init4();
    }, 1);

    function init4() {
        var chartDom = document.getElementById('main2');
        var myChart = echarts.init(chartDom);
        var option;

        option = {
            title: {
                text: '博客点击量',
                left: 'center'
            },
            tooltip: {
                trigger: 'item'
            },
            legend: {
                orient: 'vertical',
                left: 'left'
            },
            series: [
                {
                    name: '博客标题',
                    type: 'pie',
                    radius: '50%',
                    data: [
                        <c:forEach items="${articleBySortClick}" var="articleBySortClick">
                            { value: ${articleBySortClick.articleClick}, name: '${articleBySortClick.articleTitle}' },
                        </c:forEach>

                    ],
                    emphasis: {
                        itemStyle: {
                            shadowBlur: 10,
                            shadowOffsetX: 0,
                            shadowColor: 'rgba(0, 0, 0, 0.5)'
                        }
                    }
                }
            ]
        };

        option && myChart.setOption(option);

    }


</script>
<body>
<div class="container-fluid position-relative bg-white d-flex p-0">

    <div id="spinner"
         class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
        <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
            <span class="sr-only">加载中...</span>
        </div>
    </div>


    <%@include file="back_sidebar.jsp"%>


    <div class="content">

        <%@include file="back_topbar.jsp"%>


        <div class="container-fluid pt-4 px-4">
            <div class="row g-4">
                <div class="col-sm-6 col-xl-3">
                    <div class="bg-light rounded d-flex align-items-center justify-content-between p-4">
                        <i class="fa fa-chart-line fa-3x text-primary"></i>
                        <div class="ms-3">
                            <p class="mb-2">广告总点击量</p>
                            <h6 class="mb-0">${advClick}</h6>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-xl-3">
                    <div class="bg-light rounded d-flex align-items-center justify-content-between p-4">
                        <i class="fa fa-chart-bar fa-3x text-primary"></i>
                        <div class="ms-3">
                            <p class="mb-2">博客总点击量</p>
                            <h6 class="mb-0">${articleClick}</h6>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-xl-3">
                    <div class="bg-light rounded d-flex align-items-center justify-content-between p-4">
                        <i class="fa fa-chart-area fa-3x text-primary"></i>
                        <div class="ms-3">
                            <p class="mb-2">用户总数</p>
                            <h6 class="mb-0">${userSum}</h6>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-xl-3">
                    <div class="bg-light rounded d-flex align-items-center justify-content-between p-4">
                        <i class="fa fa-chart-pie fa-3x text-primary"></i>
                        <div class="ms-3">
                            <p class="mb-2">评论总数</p>
                            <h6 class="mb-0">${commentsSum}</h6>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <br/>
        <br/>
        <div style="display: flex">
            <div id="main" style="width: 600px;height:500px;"></div>
            <div id="main2" style="width: 600px;height:600px;"></div>
        </div>


        <div class="container-fluid pt-4 px-4">
            <div class="bg-light text-center rounded p-4">
                <div class="d-flex align-items-center justify-content-between mb-4">
                    <h6 class="mb-0">用户管理</h6>
                </div>
                <div class="table-responsive">
                    <table class="table text-start align-middle table-bordered table-hover mb-0">
                        <thead>
                        <tr class="text-dark">
                            <th scope="col"></th>
                            <th scope="col">头像</th>
                            <th scope="col">用户名</th>
                            <th scope="col">真名</th>
                            <th scope="col">关系</th>
                            <th scope="col">电子邮箱</th>
                            <th scope="col">删除用户</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${users}" var="users">

                            <tr>
                                <td>${users.userId}</td>
                                <td><img src="${pageContext.request.contextPath}/${users.headImg}" width="100" height="50"></td>
                                <td>${users.username}</td>
                                <td>${users.realName}</td>
                                <td>${users.relation}</td>
                                <td>${users.email}</td>
                                <td><a class="btn btn-sm btn-primary" href="${pageContext.request.contextPath}/backIndex/deleteUser?userId=${users.userId}">删除</a></td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>


        <div class="container-fluid pt-4 px-4">
            <div class="row g-4">
                <div class="col-sm-12 col-md-6 col-xl-4">
                    <div class="h-100 bg-light rounded p-4">
                        <div class="d-flex align-items-center justify-content-between mb-2">
                            <h6 class="mb-0">文章</h6>
                            <a href="">查看全部</a>
                        </div>
                        <c:forEach var="articleBySortTime" items="${articleBySortTime}" end="3">

                            <div class="d-flex align-items-center border-bottom py-3">
                                <img class="rounded-circle flex-shrink-0" src="${pageContext.request.contextPath}${articleBySortTime.articleImg}"
                                     style="width: 40px; height: 40px;">
                                <div class="w-100 ms-3">
                                    <div class="d-flex w-100 justify-content-between">
                                        <h6 class="mb-0">${articleBySortTime.user.username}</h6>
                                        <small>${articleBySortTime.articleTime}</small>
                                    </div>
                                    <span>${articleBySortTime.articleTitle}</span>
                                </div>
                            </div>
                        </c:forEach>


                    </div>
                </div>
                <div class="col-sm-12 col-md-6 col-xl-4">
                    <div class="h-100 bg-light rounded p-4">
                        <div class="d-flex align-items-center justify-content-between mb-4">
                            <h6 class="mb-0">日历</h6>
                            <a href="">查看全部</a>
                        </div>
                        <div id="calender"></div>
                    </div>
                </div>
                <div class="col-sm-12 col-md-6 col-xl-4">
                    <div class="h-100 bg-light rounded p-4">
                        <div class="d-flex align-items-center justify-content-between mb-4">
                            <h6 class="mb-0">评论展示</h6>
                            <a href="">查看全部</a>
                        </div>

                        <c:forEach items="${commentsOrderByTime}" var="commentsOrderByTime" end="9">

                            <div class="d-flex align-items-center pt-2">
                                <h6 class="mb-0">${commentsOrderByTime.user.username}</h6>
                                <div class="w-100 ms-3">
                                    <div class="d-flex w-100 align-items-center justify-content-between">
                                        <span>${commentsOrderByTime.commentContent}</span>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>


        <div class="container-fluid pt-4 px-4">
            <div class="bg-light rounded-top p-4">
            </div>
        </div>

    </div>


    <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>
</div>

<%@include file="back_end.jsp"%>
</html>