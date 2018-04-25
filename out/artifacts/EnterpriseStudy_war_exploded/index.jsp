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

</head>
<body>
<!--
<form action="upload" method="post" enctype="multipart/form-data">
  <input type="file" name="myFile" />
  <input type="submit" value="Upload"/>
</form>
-->
<br>

<a href="manager/fileMemger/uploaddes.html">upload</a>
<a href="manager/fileMemger/uploaddes.html">basic-plus</a>
<!-- Loader
<div id="page-preloader"><span class="spinner"></span></div>
Loader end -->

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
            <!--<div class="b-top-options pull-left">
                <div class="nav">
                    <ul class="list-inline">
                        <li class="dropdown">
                            <div class="btn-group">
                                <button class="dropdown-toggle" data-toggle="dropdown" type="button" aria-expanded="false">
                                    <span class="flag-icon flag-icon-gb"></span>
                                    ENG
                                    <i class="fa fa-angle-down"></i>
                                </button>
                                <ul class="dropdown-menu dropdown-menu-left" role="menu">
                                    <li>
                                        <a href="javascript:void(0);"><span class="flag-icon flag-icon-gb"></span> ENG</a>
                                    </li>
                                    <li class="li-last">
                                        <a href="javascript:void(0);"><span class="flag-icon flag-icon-fr"></span> FR</a>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li class="dropdown">
                            <div class="btn-group">
                                <button class="dropdown-toggle" data-toggle="dropdown" type="button" aria-expanded="false">
                                    USD
                                    <i class="fa fa-angle-down"></i>
                                </button>
                                <ul class="dropdown-menu dropdown-menu-left" role="menu">
                                    <li>
                                        <a href="javascript:void(0);">USD</a>
                                    </li>
                                    <li class="li-last">
                                        <a href="javascript:void(0);">EURO</a>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li class="dropdown">
                            <div class="btn-group">
                                <button class="dropdown-toggle" data-toggle="dropdown" title="My Account">
                                    <span>My Account</span>
                                    <i class="fa fa-angle-down"></i>
                                </button>
                                <ul class="dropdown-menu dropdown-menu-right">
                                    <li><a href="#"><i class="fa fa-unlock"></i>Login</a></li>
                                    <li><a href="#"><i class="fa fa-user"></i>Create Account</a></li>
                                    <li><a href="#"><i class="fa fa-heart"></i>My Wishlist</a></li>
                                    <li><a href="#"><i class="fa fa-shopping-cart"></i>My Shopping Cart</a></li>
                                    <li><a href="#"><i class="fa fa-arrow-left"></i>Checkout</a></li>
                                </ul>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>-->
            <div class="b-top-info pull-right">
              <div class="nav">
                <ul class="list-inline">
                  <li>
                    <% String Username="小企课";
                      if(session.getAttribute("Username")!=null)
                        Username=session.getAttribute("Username").toString();
                    %>
                    <span>您好，管理员<%=Username%></span>
                  </li>
                  <li>
                    <span><a href="login.jsp">重新登陆/退出</a></span>
                  </li>
                  <li>
                    <span><a href="SignUp.jsp">退出</a></span>
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
                <span>iSmile</span>
                <br>
                <span>store</span>
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
                  <!--<div class="b-all-homes">
                      <ul class="list-unstyled">
                          <li>
                              <a class="heading-line" href="home-2.html">HOME 2</a>
                          </li>
                          <li>
                              <a class="heading-line" href="home-3.html">HOME 3</a>
                          </li>
                      </ul>
                  </div>-->
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
                                            <a href="GM.jsp">市场销售</a>
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
                  <a class="heading-line" href="Form/Form.html">数据报表</a>
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
          <!--<div id="cart-wrapper" class="col-xs-6 col-sm-12 col-md-2 col-lg-2">
              <div class="b-cart pull-right">
                  <button id="cart" class="btn btn-default-color1 btn-sm">
                      <span class="price"><i class="fa fa-shopping-bag"></i> $ 460.00</span>
                      <span class="counter-wrapper"><span class="counter">2</span></span>
                  </button>
                  <div class="cart-products">
                      <div class="c-holder">
                          <h3 class="title">
                              my shopping cart
                          </h3>
                          <ul class="products-list list-unstyled">
                              <li>
                                  <div class="b-cart-table ">
                                      <a href="#" class="image">
                                          <img src="media/cart-products/product1.jpg" alt="/">
                                      </a>
                                      <div class="caption">
                                          <a class="product-name" href="product-details.html">Huawei Mate S</a>
                                          <span class="product-price">1 x $280.00</span>
                                          <div class="rating">
                                              <span class="star"><i class="fa fa-star"></i></span>
                                              <span class="star"><i class="fa fa-star"></i></span>
                                              <span class="star"><i class="fa fa-star"></i></span>
                                              <span class="star"><i class="fa fa-star"></i></span>
                                              <span class="star star-empty"><i class="fa fa-star-o"></i></span>
                                          </div>
                                      </div>
                                      <button class="btn btn-remove"><i class="fa fa-trash fa-lg"></i></button>
                                  </div>
                              </li>
                              <li>
                                  <div class="b-cart-table ">
                                      <a href="#" class="image">
                                          <img src="media/cart-products/product2.jpg" alt="/">
                                      </a>
                                      <div class="caption">
                                          <a class="product-name" href="product-details.html">Sony xperia z5</a>
                                          <span class="product-price">1 x $620.00</span>
                                          <div class="rating">
                                              <span class="star"><i class="fa fa-star"></i></span>
                                              <span class="star"><i class="fa fa-star"></i></span>
                                              <span class="star"><i class="fa fa-star"></i></span>
                                              <span class="star"><i class="fa fa-star"></i></span>
                                              <span class="star star-empty"><i class="fa fa-star-o"></i></span>
                                          </div>
                                      </div>
                                      <button class="btn btn-remove"><i class="fa fa-trash fa-lg"></i></button>
                                  </div>
                              </li>
                              <li>
                                  <div class="products-subtotal text-right">
                                      Cart Subtotal <span class="subtotal-price">$900.00</span>
                                  </div>
                              </li>
                          </ul>
                          <div class="products-buttons text-center">
                              <button type="button" class="btn btn-default-color1 btn-sm">view cart</button>
                              <button type="button" class="btn btn-primary-color2 btn-sm">Checkout</button>
                          </div>
                      </div>
                  </div>
              </div>
          </div>-->
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
            <div id="accordion"  data-active="0" data-collapsible="true" data-height-style="content">
              <div id="menu">
                <select id="sc" class="button-3  btn-size2" onchange="Change()">
                  <option value="">请选择课程名</option>
                </select>
                <hr>
                <input type="button" class="button-1 btn-round btn-size2" value="添加课程"  onclick="AddCourse()">
                <input type="button" class="button-1 btn-round btn-size2" value="删除课程"  onclick="DeleteCourse()">
                <input type="button" class="button-1 btn-round btn-size2" value="重命名"  onclick="RenameCourse()">
                <input type="hidden" class="button-2  btn-size2" id="new" value="">
                <input type="hidden" class="button-1 btn-round btn-size1" value="确定"  id="ok" onclick="createMenu()">
                <input type="hidden" class="button-1 btn-round btn-size1" value="取消"  id = "cancel" onclick="rollback()">
                <!--
                <ul>

                    <li class="active">
                        <a href="#">
                     Course2.html
                            <span class="category-counter">[08]</span>
                        </a>
                    </li>

                    <li>
                        <a href="Course1.html">
                            课程2
                            <script>
                                a[1][0]="课程2.1"
                            </script>
                            <span class="category-counter">[08]</span>
                        </a>
                    </li>
                    <li>
                        <a href="Course3.html">
                            课程3
                            <span class="category-counter">[39]</span>
                        </a>
                    </li>
                    <li>
                        <a href="Course4.html">
                            课程4
                            <span class="category-counter">[50]</span>
                        </a>
                    </li>
                    <li>
                        <a href="Course5.html">
                            课程5
                            <span class="category-counter">[17]</span>
                        </a>
                    </li>
                    <li>
                        <a href="Course6.html">
                            课程6
                            <span class="category-counter">[17]</span>
                        </a>
                    </li>
                    <li>
                        <a href="Course7.html">
                            课程7
                            <span class="category-counter">[17]</span>
                        </a>
                    </li>
                    <li>
                        <a href="Course8.html">
                            课程8
                            <span class="category-counter">[17]</span>
                        </a>
                    </li>
                </ul>
                -->
              </div>
            </div>
          </div>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-9 col-lg-9">
          <div class="b-offers wow fadeInUp">
            <!--将js建的表格添加到这个块里-->
            <input type="button" class="button-1 btn-round btn-size2" value="上传文件" onclick="sendTo()">
            <div id="tb"></div>
          </div>
        </div>
      </div>
    </div>
    <div class="b-hr">
      <hr>
      <hr>
    </div>
  </section>
</div>

<!--建表js    原理：每次刷新页面时都从后台拿数据重新建表-->
<script type="text/javascript">

  /*Array a 模拟从后台传来的数据*/
  var a=new Array();
  var i=-1;
  var mark=0;

  /*添加课程按钮的点击事件——弹出输入课程名的文本框*/
  function AddCourse(){
      var input1=document.getElementById("new");
      input1.type="text";
      var input2=document.getElementById("ok");
      input2.type="button";
      var input3=document.getElementById("cancel");
      input3.type="button";
      mark=1;
  }
  function RenameCourse(){
      var input1=document.getElementById("new");
      input1.type="text";
      var input2=document.getElementById("ok");
      input2.type="button";
      var input3=document.getElementById("cancel");
      input3.type="button";
      mark=2
  }

  /*取消按钮的点击事件——收起文本框*/
  function rollback(){
      var input1=document.getElementById("new");
      input1.type="hidden";
      var input2=document.getElementById("ok");
      input2.type="hidden";
      var input3=document.getElementById("cancel");
      input3.type="hidden";
  }

  /*删除课程的点击事件——删除当前下拉框选中项*/
  function DeleteCourse(){
      var obj=document.getElementById("sc");
      var index = obj.selectedIndex;
      obj.options.remove(index);
      document.getElementById("tb").innerHTML = "";
      //缺失—更新数据库
  }

  /*文本框确认按钮的点击事件——往下拉列表增加选项*/
  function createMenu() {
    /*mark==1——确认键处理添加课程事件*/
      if(mark==1) {
          var select = document.getElementById("sc");
          var input = document.getElementById("new");;
          var op = new Option(input.value, input.value);
          op.id="00"+3;
          op.onclick = function () {
              if (i > -1) {
                  document.getElementById("tb").innerHTML = "";
                  i = -1;
              }
              createTable();
//              alert(i);
          };
          select.add(op);
          op.selected=true;
//          alert(op.id);
          Change();
      }
    /*mark==2——确认键处理重命名事件*/
      if(mark==2){
          var obj=document.getElementById("sc");
          var input1=document.getElementById("new");
          var index = obj.selectedIndex;
          obj.options[index]=new Option(input1.value,input1.value);
          obj.options[index].selected="true";
      }
      //缺失—更新数据库
  }

  /*加载已有的课程列表*/
  /**
   *@sf
   * 有更改
   * */
  function loadMenu(){
      var opValue=new Array();
      <s:action name="courseInfo"></s:action>
      <s:iterator value="#application.key">
      opValue.splice(opValue.length,0,['<s:property value="course"/>',opValue.length,'<s:property value="courseId"/>']);
      <%--var user='<s:property value="user"/>'--%>
      <%--var courseName='<s:property value="course"/>'--%>
      <%--var classid='<s:property value="courseId"/>'--%>
      <%--var descrbie='<s:property value="describe"/>'--%>
      <%--var tag='<s:property value="tag"/>'--%>
      <%--var data='<s:property value="data"/>'--%>
      </s:iterator>
      var select=document.getElementById("sc");
      select.setAttribute("id","sc");
      for(var z=0;opValue[z];z++) {
          var op = new Option(opValue[z][0],opValue[z][0]);
          op.id=opValue[z][2];
          op.onclick = function () {
              var b=new Array();
            /*Array b 表示从数据库获得的数据*/
//              var courseId=opValue[z][2]
//              alert(this.id)
              <s:action name="fileInfo" >
                  </s:action>
                  <s:iterator value="#application.info">
                  var fileSize=<s:property value="fileSize"/>;
                  if(fileSize>1024*1024){

                      fileSize=(fileSize/(1024*1024)).toFixed(2)+"MB";
                  }
                  else if(fileSize>1024){
                      fileSize=(fileSize/1024).toFixed(2)+"KB";
                  }
                  else{
                      fileSize=fileSize.toFixed(2)+"B";
                  }
              b.splice(b.length,0,['<s:property value="fileName"/>','<s:property value="fileType"/>',fileSize,<s:property value="courseId"/>])
                  <%--var id='<s:property value="fileId"/>'--%>
                  <%--var name='<s:property value="fileName"/>'--%>
                  <%--var size='<s:property value="fileSize"/>'--%>
                  <%--var type='<s:property value="fileType"/>'--%>
                  <%--var path='<s:property value="filePath"/>'--%>
                  </s:iterator>
                  if (i > -1) {
                  document.getElementById("tb").innerHTML = "";
                  i = -1;
              }
              a = [].concat(b);
              createTable();
//              alert(i);
          };
          select.add(op);
      }
  }



  function createTable() {
      var tr,td;
      var table1 = document.createElement("table");
      table1.className = "table";
      table1.id = "table";
    /*建表，根据Array a的元素建表*/
      for (i; i==-1||a[i]; i++) {
          //循环插入元素
          tr = table1.insertRow(table1.rows.length);
          for (var j = 0; j < 4; j++) {
              td = tr.insertCell(tr.cells.length);
            /*表头*/
              if (i == -1) {
                  switch (j) {
                      case 0:
                          td.innerHTML = "标题";
                          break;
                      case 1:
                          td.innerHTML = "类型";
                          break;
                      case 2:
                          td.innerHTML = "大小";
                          break;
                      case 3:
                          td.innerHTML = "删除";
                          break;
                  }
              }
              else {
                /*删除按钮*/

                  if (j == 3) {
                      var button = document.createElement("input");
                      button.className="button-1 btn-round btn-size1";
                      button.type = 'button';
                      button.value = '删除';
                      td.appendChild(button);
                      td.onclick=function () {
                          deleteRow(this);
                      }
                  }
                  /*点击资源名链接到对应网站*/

                  else if(j==0){
                      td.innerHTML = a[i][j];
                      td.onclick=function () {
                          window.location.href="#";       //href从后台传过来
                      }
                  }
                  else
                      td.innerHTML = a[i][j];
              }
              td.align = "center";
          }
          document.querySelector("#tb").appendChild(table1);
      }
  }
  Array.prototype.remove = function (index) {
      if (isNaN(index) || index>= this.length) { return false; }
      this.splice(index, 1);
  };

  /*删除操作*/
  function deleteRow(obj){
      var index=obj.parentNode.rowIndex;
      var table = document.getElementById("table");
      table.deleteRow(index);
//      alert(index.getAll())
    /*删除行的同时也从数据库把数据删除，下面只是从数组里面删除，具体和数据库交互缺失*/
//    alert(a[index][3])
      a.remove(index);
      alert("success");
  }
  loadMenu();
  function Change(){
      var obj=document.getElementById("sc");
      var index = obj.selectedIndex;
      obj.options[index].onclick();
  }
</script>

<script type="text/javascript">
    function sendTo(){
        var obj=document.getElementById("sc");
        var index = obj.selectedIndex;
        var op = obj.options[index];
        window.location.href="fileMemger/uploaddes.html?a="+op.id;
    }

</script>















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