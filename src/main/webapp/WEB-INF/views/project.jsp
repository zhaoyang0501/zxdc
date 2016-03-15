<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html>
<!--[if lt IE 7]><html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]> <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]> <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Envor HTML5/CSS3 Template">
    <meta name="author" content="Suono Libero ( @rivathemes.com )">
    <link rel="shortcut icon" href="favicon.ico">

    <title>Envor HTML5/CSS3 Template</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <!-- Custom CSS -->
    <link href="css/animate.css" rel="stylesheet" type="text/css">
    <link href="css/jquery.mCustomScrollbar.css" rel="stylesheet" type="text/css">
    <link href="css/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="css/colorbox-skins/4/colorbox.css" type="text/css">
        <link href="css/main.css" rel="stylesheet" type="text/css">
    

    <link href="css/header/h1.css" rel="stylesheet" type="text/css">
    <link href="css/responsive.css" rel="stylesheet" type="text/css">
    <link href="css/color1.css" rel="stylesheet" type="text/css" id="envor-site-color">
    <link href="css/rivathemes.css" rel="stylesheet" type="text/css">

    <!-- LayerSlider styles -->
    <link rel="stylesheet" href="css/layerslider/css/layerslider.css" type="text/css">

    <!-- Just for debugging purposes. Don't actually copy this line! -->
    <!--[if lt IE 9]><script src="js/vendor/ie8-responsive-file-warning.js"></script><![endif]-->

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

    <script src="js/vendor/modernizr-2.6.2-respond-1.1.0.min.js"></script>
    
    <style type="text/css">
    .active a{
    color: white;
    }
    </style>
  </head>

    <body>
  

    <!--[if lt IE 7]>
    <p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.</p>
    <![endif]-->
   
   	<%@include file="./header.jsp" %>
   
   <div class="envor-content" style="padding-top: 0px;">
      <section class="envor-desktop-breadscrubs">
        <div class="container">
          <div class="row">
            <div class="col-lg-12">
              <div class="envor-desktop-breadscrubs-inner">
                <a href="index.html">首页</a><i class="fa fa-angle-double-right"></i>全部分类
              </div>
            </div>
          </div>
        </div>
      </section>
      
 
 <section class="envor-section">
        <div class="container">
          <div class="row" style="margin-top: 0px;">
            <div class="col-lg-9">
              <p class="block-description">运动吧北京-会员服务</p>
              <p>加入运动吧北京，您还享受专属的家1对1服务，更有优先安排、更换场地、福利赠送等各种特权。</p>
              <div class="envor-sorting" id="portfolio-sorting">
                <!--

                Filters

                //-->

                <div class="envor-sorting-filters"><span  id='span_all' data-value="*" 
                ${category==null?"class='active'":"" }
                ><a  href="project">全部</a> </span>
                 <c:forEach items="${cagegorys }" var="bean">
                   <span data-value="html" id='span_${bean.id }'><a  href="project?cid=${bean.id }">${bean.name }</a> </span>
                 </c:forEach>
                </div>
                <!--

                Items To Sort start

                //-->
                <div class="row" style="margin-top: 60px;">
                  <div class="col-lg-12">
                   <div class="envor-projects-listing envor-projects-listing-3-cols">
					<c:forEach items="${projects }" var="bean">
						<article class="envor-project envor-padding-bottom-30 envor-padding-left-30 javascript html envor-sorting-item envor-listing-item" >
		                      <div class="envor-project-inner">
		                        <figure><a href=""><img src="http://www.jiawubang.me/Uploads/Picture/2015/05/29/JWB.XQytgb47c6ba5b22Zc6J.jpg_280_200.jpg" alt=""></a><figcaption style="display: none;"><a href="http://www.jiawubang.me/Uploads/Picture/2015/05/29/JWB.XQytgb47c6ba5b22Zc6J.jpg_280_200.jpg" title="Morbi sagittis lacinia" class="colorbox cboxElement"><i class="fa fa-plus" style="top: 0px;"></i></a></figcaption></figure>
		                        <div class="envor-project-details">
		                         <p class="link"><a href="viewproject?id=${bean.id }">${bean.name }</a></p>
		                          <p class="filter" ><h3 style="color: red">${bean.price }元/小时</h3></p>
		                        </div>
		                      </div>
                   		 </article>
					</c:forEach>
                  </div>
              </div>
              
              
              
              
              </div>
            <!--

            Items To Sort end

            //-->
            </div>
            <!--

            pagination start

            //-->
            <div class="envor-pagination">
              <span class="page-numbers current">1</span>
              <a class="page-numbers" href="">2</a>
              <a class="page-numbers" href="">3</a>
              <a class="next page-numbers" href="">Next »</a>
            <!--

            pagination end

            //-->
            </div>
          </div>
          
          
          
          <div class="col-lg-3">
              <!--

              Search Widget

              //-->
              <aside class="envor-widget envor-search-widget">
                <h3 style="margin-top: 0px;"><strong>查找</strong> </h3>
                <div class="envor-widget-inner">
                  <form action="project" method="post">
                    <input type="text" name="key" placeholder="输入关键字查找...">
                  </form>
                </div>
              </aside>
            <!--

            Categories Widget

            //-->
           
            <!--

            Tabs Widget

            //-->
            <aside class="envor-widget envor-search-widget">
              <h3> <strong>猜你喜欢</strong></h3>
              <div class="envor-widget-inner">
                <div class="envor-tabs">
                  <header>
                    <span class="active"><i class="fa fa-calendar"></i><div class="arrow"></div></span>
                  </header>
                  <article style="display: block;">
                  <c:forEach items="${likes }" var="bean">
                    <div class="envor-sidebar-post">
                      <figure><a href=""><img src="img/img1.png" alt=""></a></figure>
                      <p class="title"><a href="viewproject?id=${bean.id }">${bean.name }</a></p>
                    </div>
                  </c:forEach>
                  </article>
                </div>
              </div>
            </aside>
            </div>
          
        </div>
        </div>
      <!--

      Main Content start

      //-->
      </section>
 
 
    </div>
    
	<%@include file="./footer.jsp" %>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
        <script src="js/vendor/jquery-1.11.0.min.js"></script>

    <script src="js/vendor/core-1.0.5.js"></script>

    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.mCustomScrollbar.min.js"></script>
    <script src="js/jquery.mousewheel.min.js"></script>
    <script src="js/jquery.colorbox-min.js"></script>
    <script src="js/preloadCssImages.jQuery_v5.js"></script>
    <script src="js/jquery.stellar.min.js"></script>
    <!--
    * jQuery with jQuery Easing, and jQuery Transit JS
    //-->
    <script src="js/layerslider/jquery-easing-1.3.js" type="text/javascript"></script>
    <script src="js/layerslider/jquery-transit-modified.js" type="text/javascript"></script>
    <!--
    * LayerSlider from Kreatura Media with Transitions
    -->
    <script src="js/layerslider/layerslider.transitions.js" type="text/javascript"></script>
    <script src="js/layerslider/layerslider.kreaturamedia.jquery.js" type="text/javascript"></script>
    <script src="js/jquery.rivathemes.js"></script>
    <script type="text/javascript">
      $('document').ready(function() {
    	  $("#span_${category.id}").addClass("active");
          /*

          Home Page Layer Slider

          */
          $('#layerslider').layerSlider({
            skinsPath               : 'css/layerslider/skins/',
            skin : 'fullwidth',
            thumbnailNavigation : 'hover',
            hoverPrevNext : false,
            responsive : false,
            responsiveUnder : 1170,
            sublayerContainer : 1170
          });
          /*

          Latest Projects Slider
          
          */
          $('#latest-projects').rivaSlider({
            visible : 4,
            selector : 'envor-project'
          });
          /*

          Our Partners Slider

          */
          $('#our-partners').rivaCarousel({
            visible : 5,
            selector : 'envor-partner-logo',
            mobile_visible : 1
          });
          /*

          Footer News Slider

          */
          $('#footer-news').rivaSlider({
            visible : 1,
            selector : 'envor-post-preview'
          });
          /*

          Testimonials #1 Carousel

          */
          $('#clients-testimonials').rivaCarousel({
            visible : 1,
            selector : 'envor-testimonials-1',
            mobile_visible : 1
          });
      });
    </script>
    <script src="js/envor.js"></script>
    <script type="text/javascript">
      $('document').ready(function() {
          /*

          Preload Images

          */
          var imgs = new Array(), $imgs = $('img');
          for (var i = 0; i < $imgs.length; i++) {
            imgs[i] = new Image();
            imgs[i].src = $imgs.eq(i).attr('src');
          }
          Core.preloader.queue(imgs).preload(function() {
            var images = $('a').map(function() {
                    return $(this).attr('href');
            }).get();
            Core.preloader.queue(images).preload(function() {
                  $.preloadCssImages();
            })
          })
                  $('#envor-preload').hide();
      });
      /*

      Windows Phone 8 и Internet Explorer 10

      */
      if (navigator.userAgent.match(/IEMobile\/10\.0/)) {
        var msViewportStyle = document.createElement("style")
        msViewportStyle.appendChild(
          document.createTextNode(
            "@-ms-viewport{width:auto!important}"
          )
        )
        document.getElementsByTagName("head")[0].appendChild(msViewportStyle)
      }
    </script>
  </body>
</html>