<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: Saber
  Date: 2017/8/2
  Time: 15:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html lang="en-US">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>iLearning-深度学习与计算机视觉</title>
    <link href="css/master.css" rel="stylesheet">
    <link href = "mode/medium_page/css/about.css" rel = "stylesheet">

    <!-- SWITCHER -->
    <link rel="stylesheet" id="switcher-css" type="text/css" href="assets/switcher/css/switcher.css" media="all" />
    <link rel="alternate stylesheet" type="text/css" href="assets/switcher/css/color1.css" title="color1" media="all" />
    <link rel="alternate stylesheet" type="text/css" href="assets/switcher/css/color2.css" title="color2" media="all" />
    <link rel="alternate stylesheet" type="text/css" href="assets/switcher/css/color3.css" title="color3" media="all" />
    <link rel="alternate stylesheet" type="text/css" href="assets/switcher/css/color4.css" title="color4" media="all" />
    <style>
        .maxvideosize{
            max-width: 100%;
        }
    </style>
</head>
<body>
<!-- Loader -->
<div id="page-preloader"><span class="spinner"></span></div>
<!-- Loader end -->

<div class="b-page">
    <!-- Start Switcher -->
    <div class="switcher-wrapper">
        <div class="demo_changer">
            <div class="demo-icon customBgColor">
                <i class="fa fa-cog fa-spin fa-2x"></i>
            </div>
            <div class="form_holder">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="predefined_styles">
                            <div class="skin-theme-switcher">
                                <h4>Color</h4>
                                <a href="#" data-switchcolor="color1" class="styleswitch" style="background-color:#e24545;"> </a>
                                <a href="#" data-switchcolor="color2" class="styleswitch" style="background-color:#0072bc;"> </a>
                                <a href="#" data-switchcolor="color3" class="styleswitch" style="background-color:#ff9600;"> </a>
                                <a href="#" data-switchcolor="color4" class="styleswitch" style="background-color:#01a664;"> </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Switcher -->

    <header>
        <div class="b-top-line">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12 clearfix">
                        <div class="b-top-info pull-right">
                            <div class="nav">
                                <ul class="list-inline">
                                    <li>
                                        <span>您好，员工陈冠佑</span>
                                    </li>
                                    <li>
                                        <button class="dropdown-toggle" data-toggle="dropdown" title="My Account">
                                            <span>消息</span>
                                            <i class="fa fa-angle-down"></i>
                                        </button>
                                        <ul class="dropdown-menu dropdown-menu-right">
                                            <li><a href="#">您在系列视频《深度学习》下的评论获赞</a></li>
                                            <li><a href="#">您的提问已经被管理员小凯解答，点击查看</a></li>
                                            <li><a href="#">管理员小凯发布了视频《深度学习与神经网络》，点击查看</a></li>
                                            <li><a href="#">管理员小凯发布了通知，点击查看</a></li>
                                            <li><a href="#">管理员小凯发布了通知，点击查看</a></li>
                                        </ul>
                                    </li>
                                    <li class="dropdown">
                                        <button class="dropdown-toggle" data-toggle="dropdown" title="My Account">
                                            <span>最近浏览</span>
                                            <i class="fa fa-angle-down"></i>
                                        </button>
                                        <ul class="dropdown-menu dropdown-menu-right">
                                            <li><a href="#">斯坦福CS231n—深度学习与计算机视觉&nbsp;&nbsp;&nbsp;&nbsp;53%<i class="fa fa-unlock"></i></a></li>
                                            <li><a href="#">Python数据分析与机器学习实战&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;100%<i class="fa fa-unlock"></i></a></li>
                                            <li><a href="#">用Python做深度学习(二):Caffe&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1%<i class="fa fa-unlock"></i></a></li>
                                            <li><a href="#">My Shopping Cart深度学习&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1%<i class="fa fa-unlock"></i></a></li>
                                            <li><a href="#">深度学习-Tensorflow实战视频课程&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1%<i class="fa fa-unlock"></i></a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="b-header-main">
            <div class="container">
                <div class="row">
                    <div class="col-xs-6 col-sm-2 col-md-2 col-lg-2">
                        <div class="b-logo">
                            <a href="homepage.action">
                                <span>iLearning</span>
                                <br>
                                <span>WEB</span>
                            </a>
                        </div>
                    </div>
                    <div id="toggle-nav" class="col-xs-12 col-sm-10 col-md-8 col-lg-8 menu-wrapper clearfix">
                        <div class="toggle-nav-btn">
                            <button class="btn btn-menu"><i class="fa fa-bars fa-lg"></i></button>
                        </div>
                        <div class="b-header-menu pull-right">
                            <ul class="list-inline">
                                <li>
                                    <a class="heading-line" href="homepage.action">主页</a>
                                </li>
                                <li id="all-menu-open">
                                    <a class="heading-line" href="pageList.action?pageNow=1">所有课程<i class="fa fa-angle-down"></i></a>
                                </li>
                                <li>
                                    <a class="heading-line" href="#tuijian">课程推荐</a>
                                </li>
                                <li>
                                    <a class="heading-line" href="comment.jsp">课程讨论</a>
                                    <div class="b-all-homes">
                                        <ul class="list-unstyled">
                                            <li>
                                                <a class="heading-line" href="comment.jsp">讨论区</a>
                                            </li>
                                            <li>
                                                <a class="heading-line" href="comment.jsp">答疑区</a>
                                            </li>
                                        </ul>
                                    </div>
                                </li>
                                <li>
                                    <a class="heading-line" href="CreditMarket.jsp">积分商城</a>
                                </li>
                                <li>
                                    <a class="heading-line" href="#">博客</a>
                                    <div class="b-all-homes">
                                        <ul class="list-unstyled">
                                            <li>
                                                <a class="heading-line" href="#">博客页面</a>
                                            </li>
                                            <li>
                                                <a class="heading-line" href="#">博客帖子</a>
                                            </li>
                                        </ul>
                                    </div>
                                </li>
                                <li>
                                    <a class="heading-line" href="#">联系我们</a>
                                </li>
                                <li class="search">
                                    <a id="search-open" class="iconSearch" href="#"><i class="fa fa-search"></i></a>
                                    <div id="search">
                                        <form action="pageSearch.action" method="post">
                                            <div class="form-group">
                                                <input id="searchQuery" type="search" placeholder="查找你想要的课程:D"
                                                       name="searchItem">
                                                <%--设置name属性直接传给action--%>
                                            </div>
                                        </form>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <section class="section-product-detail">
        <div class="b-page-header">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12 clearfix">
                        <h3 class="page-title pull-left">课程简介</h3>
                        <div class="b-breadcrumbs pull-right">
                            <ul class="list-unstyled">
                                <li>
                                    <a href="homepage.action">主页</a>
                                </li>
                                <li>
                                    <a href="homepage.action">课程简介</a>
                                </li>
                                <li>
                                    <a href="homepage.action">视频课程</a>
                                </li>
                                <li>
                                    <span>深度学习</span>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-3 col-lg-3">
                    <div class="lb-content lb-content-accordion">
                        <div id="accordion" class="accordion-l-box wow fadeInUp enable-accordion" data-active="0" data-collapsible="true" data-height-style="content">
                            <h3 class="accordion-header-mod">
                                <span class="heading-line title-accordion-menu-item">课程分类</span>
                                <span class="accordion-icon"></span>
                            </h3>
                            <div>
                                <ul>
                                    <li class="active">
                                        <a href="#">
                                            <i class="fa fa-caret-square-o-right"></i>
                                            办公效率
                                            <span class="category-counter">[25]</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-caret-square-o-right"></i>
                                            市场营销
                                            <span class="category-counter">[08]</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-caret-square-o-right"></i>
                                            生活方式
                                            <span class="category-counter">[39]</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-caret-square-o-right"></i>
                                            职业发展
                                            <span class="category-counter">[50]</span>
                                        </a>
                                    </li>
                                    <!--<li>
                                        <a href="#">
                                            <i class="fa fa-caret-square-o-right"></i>
                                            Huawei
                                            <span class="category-counter">[17]</span>
                                        </a>
                                    </li>
                                    <li class="more">
                                        <span class="load-more">load more</span>
                                        <ul class="more-list">
                                            <li>
                                                <a href="#">
                                                    <i class="fa fa-caret-square-o-right"></i>
                                                    Samsung
                                                    <span class="category-counter">[08]</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <i class="fa fa-caret-square-o-right"></i>
                                                    HTC
                                                    <span class="category-counter">[39]</span>
                                                </a>
                                            </li>
                                        </ul>
                                    </li>-->
                                </ul>
                            </div>
                        </div>
                        <div id="accordion2" class="accordion-l-box wow fadeInUp enable-accordion" data-active="0" data-collapsible="true" data-height-style="content">
                            <h3>
                                <span class="heading-line title-accordion-menu-item">最新课程</span>
                                <!--<span class="accordion-icon"></span>-->
                            </h3>
                            <div>
                                <ul>
                                    <!--<li>
                                        <a href="#">
                                            <i class="fa fa-caret-square-o-right"></i>
                                            最新课程
                                        </a>
                                    </li>
                                    <li class="active">
                                        <a href="#">
                                            <i class="fa fa-caret-square-o-right"></i>
                                            最热课程
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-caret-square-o-right"></i>
                                            为您推荐
                                        </a>
                                    </li>-->
                                    <!--<li>
                                        <a href="#">
                                            <i class="fa fa-caret-square-o-right"></i>
                                            Special Promotions
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-caret-square-o-right"></i>
                                            On Sale Phones
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-caret-square-o-right"></i>
                                            Top Sellers
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-caret-square-o-right"></i>
                                            In Stock Only
                                        </a>
                                    </li>-->
                                </ul>
                            </div>
                        </div>
                        <!--<div id="accordion3" class="accordion-l-box wow fadeInUp enable-accordion" data-active="0" data-collapsible="true" data-height-style="content">
                            <h3>
                                <span class="heading-line title-accordion-menu-item">Price</span>
                                <span class="accordion-icon"></span>
                            </h3>
                            <div>
                                <div class="price-block">
                                    <div id="slider-range"></div>
                                    <input type="text" name="price" id="price-min">
                                    <span class="price-diveder">-</span>
                                    <input type="text" name="price2" id="price-max">
                                    <button class="btn btn-default-color1 btn-sm">filter</button>
                                </div>
                            </div>
                        </div>-->
                        <div id="accordion4" class="accordion-l-box wow fadeInUp enable-accordion" data-active="0" data-collapsible="true" data-height-style="content">
                            <h3>
                                <span class="heading-line title-accordion-menu-item">最热课程</span>
                                <!--<span class="accordion-icon"></span>-->
                            </h3>
                            <!--<div>
                                <ul>
                                    <li class="active">
                                        <a href="#">
                                            <i class="fa fa-caret-square-o-right"></i>
                                            Apple iPhone
                                            <span class="category-counter">[25]</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-caret-square-o-right"></i>
                                            Samsung
                                            <span class="category-counter">[08]</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-caret-square-o-right"></i>
                                            HTC
                                            <span class="category-counter">[39]</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-caret-square-o-right"></i>
                                            Blackberry
                                            <span class="category-counter">[50]</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-caret-square-o-right"></i>
                                            Huawei
                                            <span class="category-counter">[17]</span>
                                        </a>
                                    </li>
                                    <li class="more">
                                        <span class="load-more">load more</span>
                                        <ul class="more-list">
                                            <li>
                                                <a href="#">
                                                    <i class="fa fa-caret-square-o-right"></i>
                                                    Samsung
                                                    <span class="category-counter">[08]</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <i class="fa fa-caret-square-o-right"></i>
                                                    HTC
                                                    <span class="category-counter">[39]</span>
                                                </a>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>-->
                        </div>
                        <div id="accordion5" class="accordion-l-box wow fadeInUp enable-accordion" data-active="false" data-collapsible="true" data-height-style="content">
                            <h3>
                                <span class="heading-line title-accordion-menu-item">为您推荐</span>
                                <!--<span class="accordion-icon"></span>-->
                            </h3>
                            <div>
                                <!--<ul>
                                    <li class="active">
                                        <a href="#">
                                            <i class="fa fa-caret-square-o-right"></i>
                                            Apple iPhone
                                            <span class="category-counter">[25]</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-caret-square-o-right"></i>
                                            Samsung
                                            <span class="category-counter">[08]</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-caret-square-o-right"></i>
                                            HTC
                                            <span class="category-counter">[39]</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-caret-square-o-right"></i>
                                            Blackberry
                                            <span class="category-counter">[50]</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-caret-square-o-right"></i>
                                            Huawei
                                            <span class="category-counter">[17]</span>
                                        </a>
                                    </li>
                                    <li class="more">
                                        <span class="load-more">load more</span>
                                        <ul class="more-list">
                                            <li>
                                                <a href="#">
                                                    <i class="fa fa-caret-square-o-right"></i>
                                                    Samsung
                                                    <span class="category-counter">[08]</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <i class="fa fa-caret-square-o-right"></i>
                                                    HTC
                                                    <span class="category-counter">[39]</span>
                                                </a>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>-->
                            </div>
                        </div>
                        <!--<div id="accordion6" class="accordion-l-box wow fadeInUp enable-accordion" data-active="false" data-collapsible="true" data-height-style="content">
                            <h3>
                                <span class="heading-line title-accordion-menu-item">Screen size</span>
                                <span class="accordion-icon"></span>
                            </h3>
                            <div>
                                <ul>
                                    <li class="active">
                                        <a href="#">
                                            <i class="fa fa-caret-square-o-right"></i>
                                            Apple iPhone
                                            <span class="category-counter">[25]</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-caret-square-o-right"></i>
                                            Samsung
                                            <span class="category-counter">[08]</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-caret-square-o-right"></i>
                                            HTC
                                            <span class="category-counter">[39]</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-caret-square-o-right"></i>
                                            Blackberry
                                            <span class="category-counter">[50]</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-caret-square-o-right"></i>
                                            Huawei
                                            <span class="category-counter">[17]</span>
                                        </a>
                                    </li>
                                    <li class="more">
                                        <span class="load-more">load more</span>
                                        <ul class="more-list">
                                            <li>
                                                <a href="#">
                                                    <i class="fa fa-caret-square-o-right"></i>
                                                    Samsung
                                                    <span class="category-counter">[08]</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <i class="fa fa-caret-square-o-right"></i>
                                                    HTC
                                                    <span class="category-counter">[39]</span>
                                                </a>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </div>-->
                        <!--<div id="accordion7" class="accordion-l-box wow fadeInUp enable-accordion" data-active="false" data-collapsible="true" data-height-style="content">
                            <h3>
                                <span class="heading-line title-accordion-menu-item">internal memory</span>
                                <span class="accordion-icon"></span>
                            </h3>
                            <div>
                                <ul>
                                    <li class="active">
                                        <a href="#">
                                            <i class="fa fa-caret-square-o-right"></i>
                                            Apple iPhone
                                            <span class="category-counter">[25]</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-caret-square-o-right"></i>
                                            Samsung
                                            <span class="category-counter">[08]</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-caret-square-o-right"></i>
                                            HTC
                                            <span class="category-counter">[39]</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-caret-square-o-right"></i>
                                            Blackberry
                                            <span class="category-counter">[50]</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-caret-square-o-right"></i>
                                            Huawei
                                            <span class="category-counter">[17]</span>
                                        </a>
                                    </li>
                                    <li class="more">
                                        <span class="load-more">load more</span>
                                        <ul class="more-list">
                                            <li>
                                                <a href="#">
                                                    <i class="fa fa-caret-square-o-right"></i>
                                                    Samsung
                                                    <span class="category-counter">[08]</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <i class="fa fa-caret-square-o-right"></i>
                                                    HTC
                                                    <span class="category-counter">[39]</span>
                                                </a>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </div>-->
                        <!--<div id="accordion8" class="accordion-l-box wow fadeInUp enable-accordion" data-active="false" data-collapsible="true" data-height-style="content">
                            <h3>
                                <span class="heading-line title-accordion-menu-item">phone ram</span>
                                <span class="accordion-icon"></span>
                            </h3>
                            <div>
                                <ul>
                                    <li class="active">
                                        <a href="#">
                                            <i class="fa fa-caret-square-o-right"></i>
                                            Apple iPhone
                                            <span class="category-counter">[25]</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-caret-square-o-right"></i>
                                            Samsung
                                            <span class="category-counter">[08]</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-caret-square-o-right"></i>
                                            HTC
                                            <span class="category-counter">[39]</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-caret-square-o-right"></i>
                                            Blackberry
                                            <span class="category-counter">[50]</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-caret-square-o-right"></i>
                                            Huawei
                                            <span class="category-counter">[17]</span>
                                        </a>
                                    </li>
                                    <li class="more">
                                        <span class="load-more">load more</span>
                                        <ul class="more-list">
                                            <li>
                                                <a href="#">
                                                    <i class="fa fa-caret-square-o-right"></i>
                                                    Samsung
                                                    <span class="category-counter">[08]</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <i class="fa fa-caret-square-o-right"></i>
                                                    HTC
                                                    <span class="category-counter">[39]</span>
                                                </a>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </div>-->
                    </div>
                    <div class="side-offer wow fadeInUp">
                        <div class="b-offers">
                            <a href="#">
                                <img src="Pictures/timg.jpg" style="width: 240px; height: 617px; "class="img-responsive" alt="/">
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-9 col-lg-9">
                    <div class="detail-title">
                        <h3 class=heading-line><s:property value="course_name"/> </h3>
                        <p>WebManager Kai</p>
                    </div>
                    <div class="detail-main">
                        <div class="row">
                            <div class="col-sm-5 product-image wow fadeInLeft">
                                <ul class="bxslider-product enable-bx-slider" data-pager-custom="#bx-pager" data-controls="false" data-min-slides="1" data-max-slides="1" data-slide-width="0" data-slide-margin="0" data-pager="true" data-mode="horizontal" data-infinite-loop="true">
                                    <li><img src="<s:property value="source"/> " style="width: 150%" alt="/" /></li>
                                </ul>
                                <div class="product-image-thumbs">
                                    <ul id="bx-pager" class="pager-custom list-unstyled enable-bx-slider" data-pager-custom="null" data-controls="true" data-min-slides="4" data-max-slides="5" data-slide-width="60" data-slide-margin="5" data-pager="false" data-mode="horizontal" data-infinite-loop="false">
                                        <li>
                                            <a data-slide-index="0" href="#"><img src="<s:property value="source"/>" alt="/""/></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-sm-7 wow fadeInRight">
                                <div class="detail-info pd1">
                                    <div class="card-info">
                                        <div class="caption">
                                            <div class="name-item">
                                                <div class="card-price-block clearfix">
                                                    <span class="price-title">课程评分</span>
                                                </div>
                                                <div class="rating">
                                                    <span class="star"><i class="fa fa-star"></i></span>
                                                    <span class="star"><i class="fa fa-star"></i></span>
                                                    <span class="star"><i class="fa fa-star"></i></span>
                                                    <span class="star"><i class="fa fa-star"></i></span>
                                                    <span class="star star-empty"><i class="fa fa-star-o"></i></span>
                                                    <div class="add-review">
                                                        <span><span class="review-counter">4</span>Review(s)</span>
                                                        <a href="homepage.action">Add Your Review</a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="product-description">
                                                <h6 class="heading-line">课程简介</h6>
                                                <p>
                                                    <s:property value="course_describe"/>
                                                     </p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="detail-buttons clearfix">
                                        <div class="add-buttons">
                                            <button type="button" class="btn btn-add btn-add-compare"><i class="fa fa-refresh"></i></button>
                                            <button type="button" class="btn btn-add btn-add-wish"><i class="fa fa-heart-o"></i></button>
                                        </div>
                                        <div class="cart-add-buttons">
                                            <button type="button" class="btn btn-cart-color2" ><a href="#descriptions">进入我的学习</a></button>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="b-hr">
                                    <hr>
                                </div>
                                <div class="detail-tabs wow fadeInUp">
                                    <ul class="nav nav-tabs" role="tablist">
                                        <li role="presentation" class="active">
                                            <a class="heading-line" href="homepage.action#description" aria-controls="description" role="tab" data-toggle="tab" id="descriptions">Description</a>
                                        </li>
                                        <li role="presentation">
                                            <a class="heading-line" href="homepage.action#reviews" aria-controls="reviews" role="tab" data-toggle="tab">user Reviews</a>
                                        </li>
                                    </ul>
                                    <div class="tab-content">
                                        <div role="tabpanel" class="tab-pane active" id="description">

                                            <ul id = "contentss" class="event_list maxvideosize">
                                                <s:iterator value="details" status="status">
                                                    <li>
                                                        <span>
                                                            <s:property value='details_class'></s:property>
                                                            <img style='position: absolute;right: 20px;width: auto;height: 22px' src='mode/medium_page/img/bofang.jpg'>
                                                        </span>
                                                        <a href='learningTest.action?source=<s:property value='source'></s:property>&course_type=<s:property value='details_type'></s:property>'>
                                                            <span style='background: #FFF;position: absolute;right:50px'>
                                                            <s:property value='details_name'/></span>
                                                            <p>
                                                                <span>
                                                                <s:property value='details_type'/>
                                                                </span>
                                                            </p>
                                                        </a>
                                                    </li>
                                                </s:iterator>
                                            </ul>

                                        </div>
                                        <div role="tabpanel" class="tab-pane" id="reviews">
                                            <p>本课程属于机器学习的深化课程，主要是介绍深度学习(尤其是卷积神经网络和与其相关的框架)在计算机视觉领域的应用，内容涵盖多种神经网络具体结构与训练应用细节，以及针对大规模图像识别，物体定位，物体检测，图像风格迁移，图像理解描述与视频内容识别等问题的前沿解决思路。</p>
                                            <p>
                                                该课程总共包括15个章节
                                            </p>
                                            <p>
                                                计算机视觉历史回顾与介绍，数据驱动的解法，KNN与线性分类器，线性分类器与最优化，神经网络详解 part1，神经网络详解 part2，神经网络详解 part3，卷积神经网络，物体定位与物体检测，可视化，Deep Dream和Neural Style等计算机视觉案例，循环神经网络与图像生成文本描述，卷积神经网络实践技巧与经验，深度学习开源库介绍，图像分割，注意力模型，视频与无监督学习
                                            </p>
                                            <p>
                                                Jeff Dean受邀讲座，每个章节分为上下两部，分别于每周二更新。 讲师介绍：李飞飞教授现为斯坦福大学(Stanford)计算机系助理教授。她的研究兴趣主要集中在视觉研究领域，包括计算机视觉和视觉心理学，例如物体识别、场景分类和事件分类等。她曾获微软青年教授奖（Microsoft Research New Faculty Fellowship）、谷歌研究奖(Google Research Award)等荣誉。
                                            </p>
                                        </div>
                                    </div>
                                    <script src="mode/medium_page/js/jquery.min_v1.0.js" type="text/javascript"></script>
                                    <script>

                                        $(function(){

                                            $('label').click(function(){

                                                $('.event_year>li').removeClass('current');

                                                $(this).parent('li').addClass('current');

                                                var year = $(this).attr('for');

                                                $('#'+year).parent().prevAll('div').slideUp(800);

                                                $('#'+year).parent().slideDown(800).nextAll('div').slideDown(800);

                                            });

                                        });

                                    </script>
                                    <%--<script type = "text/javascript">--%>
                                        <%--function loadContent() {--%>
                                            <%--/*contentList 为目录列表*/--%>
<%--//                                            var contentList = new Array(["章节1","课时1","1","10:10"],--%>
<%--//                                                    ["章节1","课时2","2","20:10"],["章节1","课时3","3","49:11"],--%>
<%--//                                                    ["章节2","课时1","1","32:34"],["章节2","课时2","2","12:11"],--%>
<%--//                                                    ["章节3","课时1","1","32:11"],["章节3","课时2","2","29:08"],--%>
<%--//                                                    ["章节3","课时3","3","27:09"],["章节4","课时1","1","15:15"],--%>
<%--//                                                    ["章节4","课时2","2","14:14"],["","","",""]);--%>
                                            <%--&lt;%&ndash;var contentList = new Array();&ndash;%&gt;--%>
                                            <%--&lt;%&ndash;var temp = 0;&ndash;%&gt;--%>
                                            <%--&lt;%&ndash;<s:iterator value="details" status="st">&ndash;%&gt;--%>
                                                <%--&lt;%&ndash;contentList[temp] = ["<s:property value="details_chapter"/>","<s:property value="details_class"/>","<s:property value="details_name"/>","<s:property value="details_type"/>"];&ndash;%&gt;--%>
                                                <%--&lt;%&ndash;temp++;&ndash;%&gt;--%>
                                            <%--&lt;%&ndash;</s:iterator>&ndash;%&gt;--%>
                                            <%--var uln = document.getElementById("contentss");--%>
                                            <%--/*列表循环导入*/--%>
                                            <%--var str1;--%>
                                            <%--<s:iterator value="details" status="status">--%>
                                            <%--var divn = document.createElement("div");--%>
                                            <%--var str = "";--%>
                                            <%--str += "<h3>" +  <s:property value="details_chapter"/> + "</h3>";          //章节--%>
                                            <%--<s:if test="#status.first">--%>
                                                <%--str1=<s:property value="details_chapter"/>;--%>
                                            <%--</s:if>--%>
                                            <%--/*每章目录下课程导入*/--%>
                                            <%--while(1){--%>
                                                <%--str += "<li>" + "<span>" + "<s:property value='details_class'></s:property>" +--%>
                                                        <%--"<img style='position: absolute;right: 20px;width: auto;height: 22px' src='mode/medium_page/img/bofang.jpg'>"--%>
                                                    <%--+"</span>" + "<span style='background: #FFF;position: absolute;right:50px'>" + "<s:property value='details_name'/>"+"</span>"+--%>
                                                    <%--"<a href='learningTest.action?source=<s:property value='source'></s:property>'><p><span>"--%>
                                                    <%--+ "<s:property value='details_type'/>" +  "</span></p></a>"  + "</li>";--%>
                                                <%--if(str1!=<s:property value="details_chapter"/>)--%>
                                                    <%--break;--%>
                                                <%--str1=<s:property value="details_chapter"/>;--%>
                                            <%--}--%>
                                            <%--divn.innerHTML = str;--%>
                                            <%--uln.appendChild(divn);--%>
                                            <%--</s:iterator>--%>
                                        <%--}--%>
                                        <%--loadContent();--%>
                                    <%--</script>--%>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-3">
                    <div class="b-logo">
                        <a href="#">
                            <span>iLearning</span>
                            <br>
                            <span>WEB</span>
                        </a>
                    </div>
                    <div class="b-footer-contacts wow pulse nimated">
                        <div class="footer-contacts-info">
                            <p>
                                Lorem ipsum dolor sit amet consecteta adipis
                                cing elit sed do leusmod tempor incididunt ut
                                ard sed ipsum labore dolore.
                            </p>
                        </div>
                        <div class="footer-contacts-list">
                            <ul class="list-unstyled">
                                <li>
                                    <i class="fa fa-map-pin fa-fw"></i>
                                    <span>121 King Street, Melbourne,
												Victoria, 3000 AU</span>
                                </li>
                                <li>
                                    <i class="fa fa-phone fa-fw"></i>
                                    <span>+ 123 456 7890</span>
                                </li>
                                <li>
                                    <i class="fa fa-envelope-o fa-fw"></i>
                                    <span>jkusjkus89757@163.com</span>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-9">
                    <div class="row">
                        <div class="b-footer-menu clearfix">
                            <div class="col-xs-6 col-sm-3 col-md-3-0-0 col-lg-3">
                                <div class="footer-menu-item wow pulse nimated">
                                    <div class="heading-line">Store links</div>
                                    <ul class="list-unstyled">
                                        <li><a href="#">All Brands</a></li>
                                        <li><a href="#">Latest Smartphones</a></li>
                                        <li><a href="#">Best Sellers</a></li>
                                        <li><a href="#">Advertise With us</a></li>
                                        <li><a href="#">Delivery Information</a></li>
                                        <li><a href="#">Terms & Conditions</a></li>
                                        <li><a href="#">Contact us</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-xs-6 col-sm-3 col-md-3-0 col-lg-3">
                                <div class="footer-menu-item wow pulse nimated">
                                    <div class="heading-line">our Brands</div>
                                    <ul class="list-unstyled">
                                        <li><a href="#">Samsung</a></li>
                                        <li><a href="#">Nokia</a></li>
                                        <li><a href="#">LG</a></li>
                                        <li><a href="#">Apple</a></li>
                                        <li><a href="#">Sony</a></li>
                                        <li><a href="#">Microsoft</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="clearfix visible-xs-block"></div>
                            <div class="col-xs-6 col-sm-3 col-md-3-0 col-lg-3">
                                <div class="footer-menu-item wow pulse nimated">
                                    <div class="heading-line">information</div>
                                    <ul class="list-unstyled">
                                        <li><a href="#">My Account</a></li>
                                        <li><a href="#">My Shopping Cart</a></li>
                                        <li><a href="#">My Wishlist</a></li>
                                        <li><a href="#">Help Center</a></li>
                                        <li><a href="#">Returns & Warrenty</a></li>
                                        <li><a href="#">Order History</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-xs-6 col-sm-3 col-md-3-0 col-lg-3">
                                <div class="b-latest-tweets wow pulse nimated">
                                    <div class="heading-line">latest tweets</div>
                                    <div class="tweet-item">
                                        <p>
                                            Android in December: Marshmallow is
                                            on 0.5% of devices, Lollipop reaches
                                            29.5% <a href="#">http://bit.ly/1PWrFhy</a>
                                        </p>
                                    </div>
                                    <div class="tweet-item">
                                        <p>
                                            Apple planning March event for new
                                            Apple Watch and 4 inch iPhone: Apple
                                            is planning to hold an ev… <a href="#">http://bit.ly/1TZL7bB</a>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="b-footer-subsc">
                        <div class="row">
                            <div class="col-sm-3">
                                <div class="subsc-title wow pulse nimated">
                                    <p>
                                        subscribe to latest smartphones
                                        news & great deals we offer
                                    </p>
                                </div>
                            </div>
                            <div class="col-sm-9 col-lg-5">
                                <div class="subsc-mail wow pulse nimated">
                                    <form id="comment-reply-form-blog" class="b-form" method="get" action="#">
                                        <div class="form-group">
                                            <div class="row">
                                                <div class="col-sm-12">
                                                    <input type="text" class="form-control" id="form-mail" placeholder="Enter Your Email Address ...">
                                                    <button type="button" class="btn btn-subsc"><i class="fa fa-envelope-o fa-fw"></i></button>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="col-sm-12 col-lg-4 clearfix">
                                <div class="footer-socials wow pulse nimated">
                                    <div class="b-socials clearfix">
                                        <ul class="list-unstyled">
                                            <li><a href=""><i class="fa fa-twitter fa-fw"></i></a></li>
                                            <li><a href=""><i class="fa fa-facebook fa-fw"></i></a></li>
                                            <li><a href=""><i class="fa fa-linkedin fa-fw"></i></a></li>
                                            <li><a href=""><i class="fa fa-google-plus fa-fw"></i></a></li>
                                            <li><a href=""><i class="fa fa-pinterest-p fa-fw"></i></a></li>
                                            <li><a href=""><i class="fa fa-youtube-play fa-fw"></i></a></li>
                                            <li><a href="#"><i class="fa fa-rss fa-fw"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="b-footer-add">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="clearfix">
                            <div class="b-copy pull-left wow fadeInLeft">
                                <p>
                                    Copyright &copy; 2016.Company name All rights reserved.
                                </p>
                            </div>
                            <div class="b-payments pull-right">
                                <ul class="list-unstyled wow fadeInRight">
                                    <li>
                                        <img src="media/paycards/1.jpg" class="img-responsive" alt="/">
                                    </li>
                                    <li><img src="media/paycards/2.jpg" class="img-responsive" alt="/"></li>
                                    <li><img src="media/paycards/3.jpg" class="img-responsive" alt="/"></li>
                                    <li><img src="media/paycards/4.jpg" class="img-responsive" alt="/"></li>
                                    <li><img src="media/paycards/5.jpg" class="img-responsive" alt="/"></li>
                                    <li><img src="media/paycards/6.jpg" class="img-responsive" alt="/"></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
</div>

<script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
<script src="http://www.jq22.com/jquery/bootstrap-3.3.4.js"></script>

<script src="assets/switcher/js/dmss.js"></script>

<script src="http://www.jq22.com/jquery/jquery-ui-1.11.0.js"></script>
<script src="js/modernizr.custom.js"></script>
<script src="js/wow.min.js"></script>

<!--bootstrap-select -->
<script src="assets/bootstrap-select/bootstrap-select.min.js"></script>

<!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->

<!-- Countdown Timer -->
<script src="assets/countdown/dscountdown.min.js"></script>

<!--Owl Carousel-->
<script src="assets/owl-carousel/owl.carousel.min.js"></script>

<!--bx slider-->
<script src="assets/bxslider/jquery.bxslider.min.js"></script>

<!-- slider-pro-master -->
<script src="assets/slider-pro-master/js/jquery.sliderPro.min.js"></script>

<script src="assets/prettyPhoto/js/jquery.prettyPhoto.js"></script>
<script src="js/waypoints.min.js"></script>
<script src="js/jquery.easypiechart.min.js"></script>
<script src="js/jquery.spinner.min.js"></script>
<script src="js/isotope.pkgd.min.js"></script>
<script src="js/jquery.placeholder.min.js"></script>
<script src="js/theme.js"></script>

</body>
</html>
