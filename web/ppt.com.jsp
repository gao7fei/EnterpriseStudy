<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: Saber
  Date: 2017/8/16
  Time: 16:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>iLearning- <s:property value="course_name"></s:property></title>
    <link href="css/master.css" rel="stylesheet">

    <!-- SWITCHER -->
    <link rel="stylesheet" id="switcher-css" type="text/css" href="assets/switcher/css/switcher.css" media="all" />
    <link rel="alternate stylesheet" type="text/css" href="assets/switcher/css/color1.css" title="color1" media="all" />
    <link rel="alternate stylesheet" type="text/css" href="assets/switcher/css/color2.css" title="color2" media="all" />
    <link rel="alternate stylesheet" type="text/css" href="assets/switcher/css/color3.css" title="color3" media="all" />
    <link rel="alternate stylesheet" type="text/css" href="assets/switcher/css/color4.css" title="color4" media="all" />

    <style>
        .demo{margin:60px auto}
        .audio{margin-top:20px}
        .col-lg-3{
            position: relative;
            min-height: 1px;
            padding-right: 15px;
            padding-left: 15px;
        }
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

    <section class="section-blog-post">
        <div class="b-page-header">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12 clearfix">
                        <h3 class="page-title pull-left">PPT学习</h3>
                        <div class="b-breadcrumbs pull-right">
                            <ul class="list-unstyled">
                                <li>
                                    <a href="homepage.action">主页</a>
                                </li>
                                <li>
                                    <span>PPT</span>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="col-sm-12 text-center">
                <h3 class="heading-line text-center"> <s:property value="course_name"></s:property></h3>
            </div>
            <div class="b-blockquote-fa-quote-circle">
                <div class="circle-block clearfix col-sm-3">
                    <span class="quote-icon"><i class="fa fa-quote-left"></i></span>
                    <p class="circle-author">
                        <span class="circle-quote-author">WebManager Kai</span>
                        <br>
                        <span class="circle-author-role">管理员</span>
                    </p>
                </div>
                <div class="circle-text col-sm-9">
                    <p class="quote-text">
                        <s:property value="course_describe"></s:property>
                    </p>
                </div>
            </div>
        </div>

        <div class="container" style="border: 2px solid #eeeeee">
            <div class="row">
                <div class="col-sm-12 col-xs-12 col-md-10 col-lg-9">
                    <div class="fadeInUp">
                        <div class="post-img-holder">
                            <div class="demo maxvideosize" >
                                <div align="center" style="border: 1px solid #eeeeee">
                                    <iframe src="ppt.html" width="80%" height="550" style="padding-left: 25px;"></iframe>
                                </div>
                                <div class="post-author pull-left "style="padding-top: 45px;">
                                    <span><i class="fa fa-comment-o"></i>5 Comments</span>
                                </div>
                                <div class="b-socials full-socials clearfix pull-right">
                                    <ul class="list-unstyled">
                                        <li><a href=""><i class="fa fa-twitter fa-fw"></i>Tweet</a></li>
                                        <li><a href=""><i class="fa fa-facebook fa-fw"></i>Share</a></li>
                                        <li><a href=""><i class="fa fa-google-plus fa-fw"></i>Google+</a></li>
                                        <li><a href=""><i class="fa fa-pinterest fa-fw"></i>Pinterest</a></li>
                                    </ul>
                                </div>



                            </div>
                        </div>
                    </div>


                </div>
                <div class="col-sm-12 col-xs-12 col-md-7 col-lg-3 "style="border: 1px solid #eeeeee">

                    <div class="lb-content lb-content-accordion">
                        <div id="accordion" class="accordion-l-box fadeInRight enable-accordion" data-active="0" data-collapsible="true" data-height-style="content">
                            <h3 class="accordion-header-mod">
                                <span class="heading-line title-accordion-menu-item">讨论区</span>
                            </h3>
                            <div>
                                <iframe src="cooment.jsp" align="center"  width="100%" height="440px" ></iframe>
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
