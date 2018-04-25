<%--suppress JSAnnotator --%>
<%--suppress ALL --%>
<%--suppress ALL --%>
<%--
  Created by IntelliJ IDEA.
  User: sf
  Date: 2017/6/29
  Time: 15:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>课程</title>
    <link href="../css/master.css" rel="stylesheet">
    <link href="manager/css/button.css" rel="stylesheet">
    <!-- SWITCHER -->
    <link rel="stylesheet" id="switcher-css" type="text/css" href="../assets/switcher/css/switcher.css" media="all" />
    <link rel="alternate stylesheet" type="text/css" href="../assets/switcher/css/color1.css" title="color1" media="all" />
    <link rel="alternate stylesheet" type="text/css" href="../assets/switcher/css/color2.css" title="color2" media="all" />
    <link rel="alternate stylesheet" type="text/css" href="../assets/switcher/css/color3.css" title="color3" media="all" />
    <link rel="alternate stylesheet" type="text/css" href="../assets/switcher/css/color4.css" title="color4" media="all" />
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/comment.css">
    <style>
        html { overflow-x:hidden; }
        .maxvideosize{
            max-width: 100%;
        }
    </style>
</head>
<body>
<s:action name="GMAware">

</s:action>


<div id="page-preloader"><span class="spinner"></span></div>


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
                                        <span>Remain</span>
                                    </li>
                                    <li>
                                        <span>退出</span>
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
                            <a href="home-1.html">
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
                                    <a class="heading-line" href="home-1.html">主页</a>
                                </li>
                                <li id="all-menu-open">
                                    <a class="heading-line" href="category-1-grid.html">所有课程<i class="fa fa-angle-down"></i></a>
                                    <div id="b-all-menu" class="hidden-xs">
                                        <div class="row">
                                            <div class="clearfix">
                                                <div class="all-menu-holder col-sm-12">
                                                    <div class="row">
                                                        <div class="all-menu-content clearfix">
                                                            <div class="col-sm-4 col-md-6 col-lg-4">
                                                                <div class="all-menu-offer">
                                                                    <a href="#"><img src="../media/offers/all-menu1.jpg" class="img-responsive" alt="/"></a>
                                                                </div>
                                                            </div>
                                                            <div class="col-sm-8 col-md-6 col-lg-8">
                                                                <div class="all-menu-list">
                                                                    <div class="row">
                                                                        <div class="all-menu-item-holder col-sm-4">
                                                                            <div class="all-menu-item">
                                                                                <div class="all-menu-title">
                                                                                    办公效率
                                                                                </div>
                                                                                <ul class="list-unstyled">
                                                                                    <li>
                                                                                        <a href="#">办公软件</a>
                                                                                    </li>
                                                                                    <li>
                                                                                        <a href="#">工作效率</a>
                                                                                    </li>
                                                                                    <li>
                                                                                        <a href="#">电脑基础</a>
                                                                                    </li>

                                                                                </ul>
                                                                            </div>
                                                                            <div class="all-menu-item item-mod">
                                                                                <div class="all-menu-title">
                                                                                    市场营销
                                                                                </div>
                                                                                <ul class="list-unstyled">
                                                                                    <li>
                                                                                        <a href="#">网络营销</a>
                                                                                    </li>
                                                                                    <li>
                                                                                        <a href="#">市场销售</a>
                                                                                    </li>
                                                                                    <li>
                                                                                        <a href="#">品牌推广</a>
                                                                                    </li>
                                                                                </ul>
                                                                            </div>
                                                                        </div>
                                                                        <div class="all-menu-item-holder col-sm-4">
                                                                            <div class="all-menu-item">
                                                                                <div class="all-menu-title">
                                                                                    生活方式
                                                                                </div>
                                                                                <ul class="list-unstyled">
                                                                                    <li>
                                                                                        <a href="#">摄影基础</a>
                                                                                    </li>
                                                                                    <li>
                                                                                        <a href="#">音乐乐器</a>
                                                                                    </li>
                                                                                    <li>
                                                                                        <a href="#">运动健康</a>
                                                                                    </li>
                                                                                    <li>
                                                                                        <a href="#">个人修养</a>
                                                                                    </li>
                                                                                    <li>
                                                                                        <a href="#">居家生活</a>
                                                                                    </li>
                                                                                    <li>
                                                                                        <a href="#">心理学</a>
                                                                                    </li>
                                                                                    <li>
                                                                                        <a href="#">亲子启蒙</a>
                                                                                    </li>
                                                                                    <li>
                                                                                        <a href="#">投资理财</a>
                                                                                    </li>

                                                                                </ul>
                                                                            </div>
                                                                        </div>
                                                                        <div class="all-menu-item-holder col-sm-4">
                                                                            <div class="all-menu-item">
                                                                                <div class="all-menu-title">
                                                                                    职业发展
                                                                                </div>
                                                                                <ul class="list-unstyled">
                                                                                    <li>
                                                                                        <a href="#">个人提升</a>
                                                                                    </li>
                                                                                    <li>
                                                                                        <a href="#">职场关系</a>
                                                                                    </li>
                                                                                    <li>
                                                                                        <a href="#">管理能力</a>
                                                                                    </li>
                                                                                </ul>
                                                                            </div>
                                                                            <div class="all-menu-item">
                                                                                <div class="all-menu-offer">
                                                                                    <a href="#"><img src="../media/offers/all-menu2.jpg" class="img-responsive center-block" alt="/"></a>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <a class="heading-line" href="category-1-grid.html">问题答疑</a>
                                    <!--<div class="b-all-homes">
                                        <ul class="list-unstyled">
                                            <li>
                                                <a class="heading-line" href="category-1-grid.html">CATEGORY 1</a>
                                            </li>
                                            <li>
                                                <a class="heading-line" href="category-2-grid.html">CATEGORY 2</a>
                                            </li>
                                            <li>
                                                <a class="heading-line" href="category-3-list.html">CATEGORY 3</a>
                                            </li>
                                            <li>
                                                <a class="heading-line" href="category-4-list.html">CATEGORY 4</a>
                                            </li>
                                        </ul>
                                    </div>-->
                                </li>
                                <li>
                                    <a class="heading-line" href="#">数据报表</a>
                                    <div class="b-all-homes">
                                        <ul class="list-unstyled">
                                            <li>
                                                <a class="heading-line" href="product-details.html">课程数据</a>
                                            </li>
                                            <li>
                                                <a class="heading-line" href="product-details-2.html">学员数据</a>
                                            </li>
                                        </ul>
                                    </div>
                                </li>
                                <li>
                                    <a class="heading-line" href="#">消息推送</a>
                                </li>
                                <li>
                                    <a class="heading-line" href="blog-main.html">blog</a>
                                    <div class="b-all-homes">
                                        <ul class="list-unstyled">
                                            <li>
                                                <a class="heading-line" href="blog-main.html">BLOG MAIN</a>
                                            </li>
                                            <li>
                                                <a class="heading-line" href="blog-post.html">BLOG POST</a>
                                            </li>
                                        </ul>
                                    </div>
                                </li>
                                <li>
                                    <a class="heading-line" href="contact.html">Contact</a>
                                </li>
                                <li>
                                    <a class="heading-line" href="javascript:void(0);">Pages</a>
                                    <div class="b-all-homes">
                                        <ul class="list-unstyled">
                                            <li>
                                                <a class="heading-line" href="shopping-cart.html">cart</a>
                                            </li>
                                            <li>
                                                <a class="heading-line" href="my-wishlist.html">wishlist</a>
                                            </li>
                                            <li>
                                                <a class="heading-line" href="typography.html">typography</a>
                                            </li>
                                            <li>
                                                <a class="heading-line" href="404.html">404</a>
                                            </li>
                                        </ul>
                                    </div>
                                </li>
                                <li class="search">
                                    <a id="search-open" class="iconSearch" href="#"><i class="fa fa-search"></i></a>
                                    <div id="search">
                                        <form action="#" method="post">
                                            <div class="form-group">
                                                <input id="searchQuery" type="search" placeholder="查找你想要的课程:D">
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
    <section class="section-category">
        <div class="b-page-header">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12 clearfix">
                        <h3 class="page-title pull-left">Hello，Remain</h3>
                        <div class="b-breadcrumbs pull-right">
                            <ul class="list-unstyled">
                                <li>
                                    <a href="#">主页</a>
                                </li>
                                <li>
                                    <span>category</span>
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
                                <span class="heading-line title-accordion-menu-item">我的管理</span>
                                <span class="accordion-icon"></span>
                            </h3>
                            <div>
                                <ul>
                                    <li class="active">
                                        <a href="#">
                                            <i class="fa fa-caret-square-o-right"></i>
                                            学习情况报表
                                            <!--<span class="category-counter">[25]</span>-->
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-caret-square-o-right"></i>
                                            上传课程
                                            <!--<span class="category-counter">[08]</span>-->
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-caret-square-o-right"></i>
                                            讨论&提问&热点
                                            <!--<span class="category-counter">[08]</span>-->
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-9 col-lg-9">
                <div class="commentAll maxvideosize">
                    <!--评论区域 begin-->
                    <div class="reviewArea clearfix">
                        <%--提交的表单--%>
                            <div class="heading-line" style="font-size: 200%">管理员回复</div>
                            <iframe src="cooment.jsp" align="center"  width="100%" height="120px" scrolling="no"></iframe>
                    </div>
                    <!--评论区域 end-->
                    <br>
                    <!--回复区域 begin-->
                    <div class="comment-show">
                        <s:iterator value="#application.key" status="status" id="cla">
                            <s:if test="#status.first">
                                <div class="heading-line" style="font-size: 200%">近日热门</div>
                            </s:if>
                            <%--<%=application.getAttribute("size") %>--%>
                            <div class="comment-show-con clearfix">
                                <div class="comment-show-con-list pull-left clearfix">
                                    <div class="pl-text clearfix">
                                        <a href="#" class="comment-size-name">
                                            <s:property value="name"/>: </a>
                                        <span class="my-pl-con">&nbsp;<s:property value="comment"/></span>
                                    </div>
                                    <div class="date-dz">
                        <span class="date-dz-left pull-left comment-time">
                            <s:property value="date"/></span>
                                        <div class="date-dz-right pull-right comment-pl-block">
                                                <%--<a href="javascript:;" class="removeBlock">删除</a>--%>
                                            <a href="javascript:;" class="date-dz-pl pl-hf hf-con-block pull-left">回复</a>
                                            <span class="pull-left date-dz-line">|</span>
                                            <a href="javascript:;" class="date-dz-z pull-left">
                                                <i class="date-dz-z-click-red"></i>赞 (<i class="z-num">
                                                <s:property value="good"></s:property> </i>)</a>
                                        </div>
                                    </div>
                                    <div class="hf-list-con"></div>
                                </div>
                            </div>
                            <s:if test="#status.index==4">
                                <div class="heading-line" style="font-size: 200%">热门词：<%=application.getAttribute("size")%></div>
                            </s:if>
                        </s:iterator>
                    </div>

                    <!--回复区域 end-->
                </div>

                <script type="text/javascript" src="js/jquery-1.12.0.min.js"></script>
                <script type="text/javascript" src="js/jquery.flexText.js"></script>
                <!--textarea高度自适应-->
                <script type="text/javascript">
                    $(function () {
                        $('.content').flexText();
                    });
                </script>
                <!--textarea限制字数-->
                <script type="text/javascript">
                    function keyUP(t){
                        var len = $(t).val().length;
                        if(len > 139){
                            $(t).val($(t).val().substring(0,140));
                        }
                    }
                </script>
                <!--点击评论创建评论条-->
                <script type="text/javascript">
                    $('.commentAll').on('click','.plBtn',function(){
                        var myDate = new Date();
                        //获取当前年
                        var year=myDate.getFullYear();
                        //获取当前月
                        var month=myDate.getMonth()+1;
                        //获取当前日
                        var date=myDate.getDate();
                        var h=myDate.getHours();       //获取当前小时数(0-23)
                        var m=myDate.getMinutes();     //获取当前分钟数(0-59)
                        if(m<10) m = '0' + m;
                        var s=myDate.getSeconds();
                        if(s<10) s = '0' + s;
                        var now=year+'-'+month+"-"+date+" "+h+':'+m+":"+s;

                        //获取输入内容
                        var oSize = $(this).siblings('.flex-text-wrap').find('.comment-input').val();
                        document.getElementById('commenttime').value=now;
                        document.getElementById('commentname').value="陈冠佑";
                        document.getElementById('commentcontent').value=oSize;
                        console.log(oSize);
                        //动态创建评论模块
//        oHtml = '<div class="comment-show-con clearfix"><div class="comment-show-con-img pull-left"><img src="images/header-img-comment_03.png" alt=""></div> <div class="comment-show-con-list pull-left clearfix"><div class="pl-text clearfix"> <a href="#" class="comment-size-name">David Beckham : </a> <span class="my-pl-con">&nbsp;'+ oSize +'</span> </div> <div class="date-dz"> <span class="date-dz-left pull-left comment-time">'+now+'</span> <div class="date-dz-right pull-right comment-pl-block"><a href="javascript:;" class="removeBlock">删除</a> <a href="javascript:;" class="date-dz-pl pl-hf hf-con-block pull-left">回复</a> <span class="pull-left date-dz-line">|</span> <a href="javascript:;" class="date-dz-z pull-left"><i class="date-dz-z-click-red"></i>赞 (<i class="z-num">0</i>)</a> </div> </div><div class="hf-list-con"></div></div> </div>';
//        if(oSize.replace(/(^\s*)|(\s*$)/g, "") != ''){
//            $(this).parents('.reviewArea ').siblings('.comment-show').prepend(oHtml);
//            $(this).siblings('.flex-text-wrap').find('.comment-input').prop('value','').siblings('pre').find('span').text('');
//        }
                    });
                </script>


                <!--点击回复动态创建回复块-->
                <script type="text/javascript">
                    $('.comment-show').on('click','.pl-hf',function(){
                        //获取回复人的名字
                        var fhName = $(this).parents('.date-dz-right').parents('.date-dz').siblings('.pl-text').find('.comment-size-name').html();
                        //回复@
                        var fhN = '回复@'+fhName;
                        //var oInput = $(this).parents('.date-dz-right').parents('.date-dz').siblings('.hf-con');
                        var fhHtml = '<div class="hf-con pull-left"> <textarea class="content comment-input hf-input" placeholder="" onkeyup="keyUP(this)"></textarea> <a href="javascript:;" class="hf-pl">评论</a></div>';
                        //显示回复
                        if($(this).is('.hf-con-block')){
                            $(this).parents('.date-dz-right').parents('.date-dz').append(fhHtml);
                            $(this).removeClass('hf-con-block');
                            $('.content').flexText();
                            $(this).parents('.date-dz-right').siblings('.hf-con').find('.pre').css('padding','6px 15px');
                            //console.log($(this).parents('.date-dz-right').siblings('.hf-con').find('.pre'))
                            //input框自动聚焦
                            $(this).parents('.date-dz-right').siblings('.hf-con').find('.hf-input').val('').focus().val(fhN);
                        }else {
                            $(this).addClass('hf-con-block');
                            $(this).parents('.date-dz-right').siblings('.hf-con').remove();
                        }
                    });
                </script>
                <!--评论回复块创建-->
                <script type="text/javascript">
                    $('.comment-show').on('click','.hf-pl',function(){
                        var oThis = $(this);
                        var myDate = new Date();
                        //获取当前年
                        var year=myDate.getFullYear();
                        //获取当前月
                        var month=myDate.getMonth()+1;
                        //获取当前日
                        var date=myDate.getDate();
                        var h=myDate.getHours();       //获取当前小时数(0-23)
                        var m=myDate.getMinutes();     //获取当前分钟数(0-59)
                        if(m<10) m = '0' + m;
                        var s=myDate.getSeconds();
                        if(s<10) s = '0' + s;
                        var now=year+'-'+month+"-"+date+" "+h+':'+m+":"+s;
                        //获取输入内容
                        var oHfVal = $(this).siblings('.flex-text-wrap').find('.hf-input').val();
                        console.log(oHfVal)
                        var oHfName = $(this).parents('.hf-con').parents('.date-dz').siblings('.pl-text').find('.comment-size-name').html();
                        var oAllVal = '回复@'+oHfName;
                        if(oHfVal.replace(/^ +| +$/g,'') == '' || oHfVal == oAllVal){

                        }else {
                            $.getJSON("json/pl.json",function(data){
                                var oAt = '';
                                var oHf = '';
                                $.each(data,function(n,v){
                                    delete v.hfContent;
                                    delete v.atName;
                                    var arr;
                                    var ohfNameArr;
                                    if(oHfVal.indexOf("@") == -1){
                                        data['atName'] = '';
                                        data['hfContent'] = oHfVal;
                                    }else {
                                        arr = oHfVal.split(':');
                                        ohfNameArr = arr[0].split('@');
                                        data['hfContent'] = arr[1];
                                        data['atName'] = ohfNameArr[1];
                                    }

                                    if(data.atName == ''){
                                        oAt = data.hfContent;
                                    }else {
                                        oAt = '回复<a href="#" class="atName">@'+data.atName+'</a> : '+data.hfContent;
                                    }
                                    oHf = data.hfName;
                                });

                                var oHtml = '<div class="all-pl-con"><div class="pl-text hfpl-text clearfix"><a href="#" class="comment-size-name">我的名字 : </a><span class="my-pl-con">'+oAt+'</span></div><div class="date-dz"> <span class="date-dz-left pull-left comment-time">'+now+'</span> <div class="date-dz-right pull-right comment-pl-block"> <a href="javascript:;" class="removeBlock">删除</a> <a href="javascript:;" class="date-dz-pl pl-hf hf-con-block pull-left">回复</a> <span class="pull-left date-dz-line">|</span> <a href="javascript:;" class="date-dz-z pull-left"><i class="date-dz-z-click-red"></i>赞 (<i class="z-num">0</i>)</a> </div> </div></div>';
                                oThis.parents('.hf-con').parents('.comment-show-con-list').find('.hf-list-con').css('display','block').prepend(oHtml) && oThis.parents('.hf-con').siblings('.date-dz-right').find('.pl-hf').addClass('hf-con-block') && oThis.parents('.hf-con').remove();
                            });
                        }
                    });
                </script>
                <!--删除评论块-->
                <script type="text/javascript">
                    $('.commentAll').on('click','.removeBlock',function(){
                        var oT = $(this).parents('.date-dz-right').parents('.date-dz').parents('.all-pl-con');
                        if(oT.siblings('.all-pl-con').length >= 1){
                            oT.remove();
                        }else {
                            $(this).parents('.date-dz-right').parents('.date-dz').parents('.all-pl-con').parents('.hf-list-con').css('display','none')
                            oT.remove();
                        }
                        $(this).parents('.date-dz-right').parents('.date-dz').parents('.comment-show-con-list').parents('.comment-show-con').remove();

                    })
                </script>
                <!--点赞-->
                <script type="text/javascript">
                    $('.comment-show').on('click','.date-dz-z',function(){
                        var zNum = $(this).find('.z-num').html();
                        if($(this).is('.date-dz-z-click')){
                            zNum--;
                            $(this).removeClass('date-dz-z-click red');
                            $(this).find('.z-num').html(zNum);
                            $(this).find('.date-dz-z-click-red').removeClass('red');
                        }else {
                            zNum++;
                            $(this).addClass('date-dz-z-click');
                            $(this).find('.z-num').html(zNum);
                            $(this).find('.date-dz-z-click-red').addClass('red');
                        }
                    })
                </script>
            </div>
        </div>
        </div>
    </section>
</div>

<script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
<script src="http://www.jq22.com/jquery/bootstrap-3.3.4.js"></script>

<script src="../assets/switcher/js/dmss.js"></script>

<script src="http://www.jq22.com/jquery/jquery-ui-1.11.0.js"></script>
<script src="../js/modernizr.custom.js"></script>
<script src="../js/wow.min.js"></script>

<!--bootstrap-select -->
<script src="../assets/bootstrap-select/bootstrap-select.min.js"></script>

<!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->

<!-- Countdown Timer -->
<script src="../assets/countdown/dscountdown.min.js"></script>

<!--Owl Carousel-->
<script src="../assets/owl-carousel/owl.carousel.min.js"></script>

<!--bx slider-->
<script src="../assets/bxslider/jquery.bxslider.min.js"></script>

<!-- slider-pro-master -->
<script src="../assets/slider-pro-master/js/jquery.sliderPro.min.js"></script>

<script src="../assets/prettyPhoto/js/jquery.prettyPhoto.js"></script>
<script src="../js/waypoints.min.js"></script>
<script src="../js/jquery.easypiechart.min.js"></script>
<script src="../js/jquery.spinner.min.js"></script>
<script src="../js/isotope.pkgd.min.js"></script>
<script src="../js/jquery.placeholder.min.js"></script>
<script src="../js/theme.js"></script>

</body>
</html>