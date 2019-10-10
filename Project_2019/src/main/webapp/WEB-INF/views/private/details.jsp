<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="ko">
  <style>
      html{
	      background: url(${pageContext.request.contextPath }/resources/img/block.png) no-repeat center center fixed;
	      background-size: cover;
      }
  </style>
<head>
  <meta charset="utf-8">
  <title>blockbuster details</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="keywords">
  <meta content="" name="description">


  <!-- Favicons -->
  <link href="${pageContext.request.contextPath }/resources/img/favicon.png" rel="icon">
  <link href="${pageContext.request.contextPath }/resources/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Montserrat:300,400,500,700" rel="stylesheet">

  <!-- Bootstrap CSS File -->
  <link href="${pageContext.request.contextPath }/resources/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Libraries CSS Files -->
  <link href="${pageContext.request.contextPath }/resources/lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath }/resources/lib/animate/animate.min.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath }/resources/lib/ionicons/css/ionicons.min.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath }/resources/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath }/resources/lib/lightbox/css/lightbox.min.css" rel="stylesheet">

  <!-- Main Stylesheet File -->
  <link href="${pageContext.request.contextPath }/resources/css/style.css" rel="stylesheet">
  
  <!--  -->
  
  <!-- Vendor CSS-->
  <link href="${pageContext.request.contextPath }/resources/vendor/animsition/animsition.min.css" rel="stylesheet" media="all">
  <link href="${pageContext.request.contextPath }/resources/vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet" media="all">
  <link href="${pageContext.request.contextPath }/resources/vendor/wow/animate.css" rel="stylesheet" media="all">
  <link href="${pageContext.request.contextPath }/resources/vendor/css-hamburgers/hamburgers.min.css" rel="stylesheet" media="all">
  <link href="${pageContext.request.contextPath }/resources/vendor/slick/slick.css" rel="stylesheet" media="all">
  <link href="${pageContext.request.contextPath }/resources/vendor/select2/select2.min.css" rel="stylesheet" media="all">
  <link href="${pageContext.request.contextPath }/resources/vendor/perfect-scrollbar/perfect-scrollbar.css" rel="stylesheet" media="all">

  <!-- Main CSS-->
  <link href="${pageContext.request.contextPath }/resources/css/theme.css" rel="stylesheet" media="all">

 

</head>

<body>

  <!-- Header -->
  <header id="header" class="fixed-top">
    <div class="container">

      <div class="logo float-left">
        <!-- Uncomment below if you prefer to use an image logo -->
        <!-- <h1 class="text-light"><a href="#header"><span>Blockbuster</span></a></h1> -->
        <a href="${pageContext.request.contextPath }/" class="scrollto"><img src="${pageContext.request.contextPath }/resources/img/logo.png" alt="" class="img-fluid"></a>
      </div>

      <nav class="main-nav float-right d-none d-lg-block">
        <ul>
        <!-- 
          <li class="active"><a href="#intro">홈</a></li>
          <li><a href="#about">About Us</a></li>
          <li><a href="#services">Services</a></li>
          <li><a href="#portfolio">Portfolio</a></li>
          <li><a href="#team">Team</a></li>
          <li class="drop-down"><a href="">Drop Down</a>
            <ul>
              <li><a href="#">Drop Down 1</a></li>
              <li class="drop-down"><a href="#">Drop Down 2</a>
                <ul>
                  <li><a href="#">Deep Drop Down 1</a></li>
                  <li><a href="#">Deep Drop Down 2</a></li>
                  <li><a href="#">Deep Drop Down 3</a></li>
                  <li><a href="#">Deep Drop Down 4</a></li>
                  <li><a href="#">Deep Drop Down 5</a></li>
                </ul>
              </li>
              <li><a href="#">Drop Down 3</a></li>
              <li><a href="#">Drop Down 4</a></li>
              <li><a href="#">Drop Down 5</a></li>
            </ul>
          </li>
       -->
<c:choose>
	<c:when test="${empty id }">          
          <li><a href="${pageContext.request.contextPath }/loginform.do">로그인</a></li>
	</c:when>
	<c:otherwise>      
	      <li><a href="${pageContext.request.contextPath }/private/main.do" class="btn-btn default">전 월세 매물</a></li>
		  <li><a href="${pageContext.request.contextPath }/private/info.do" class="btn-services scrollto">내 보증금</a></li>
		  <li><a href="${pageContext.request.contextPath }/private/info.do" class="btn-services scrollto">토큰 관리</a></li>
		  <li><a href="${pageContext.request.contextPath }/customer/board.do" class="btn-services scrollto">고객센터</a></li>
		  <li><a href="${pageContext.request.contextPath }/private/info.do" class="btn-services scrollto">${id }님 로그인 중</a></li>
	</c:otherwise>
</c:choose>                
        </ul>
      </nav><!-- .main-nav -->
      
    </div>
  </header><!-- #header -->



<div class="main-content">
	<div class="container">
		<div class="section__content section__content--p30">
	    	<div class="container-fluid">
	        	<div class="row">    
	        	
					
	            	
	            	<div class="container">
						<h1> 마포구 합정동 2호선 역세권 넓은 투룸 1000/40 !! </h1>
					</div>
					
					<br><br><br>
					
					<div class="col-md-6">
	                	<div class="card">
	                    	<img class="card-img-top" src="${pageContext.request.contextPath }/resources/images/room.jpg" alt="Card image cap">
	                        <div class="card-body">
	                        	<h4 class="card-title mb-3"> 2호선 역세권 도보 5분 거리에 위치 </h4>
	                        	<h4> 합정역에서 2호선 초역세권이고 굉장히 넓은 투룸입니다 관리비는 월 8만원에 모든 옵션 빌트인이고 신축이라서 매우 쾌적한 환경입니다. 층간소음이나 옆집과의 소음도 굉장히 적은 편입니다.  </h4>
				                    <br /><br />     
	                        </div>
	                    </div>
	                </div>
	                
					<div class="col-md-6">
	                	<div class="card">
	                    	<div class="card-body">
	                        	<h2 class="card-title mb-3">이 매물은 지금 연락가능합니다</h2><br />
	                        	<h2>세입자에게도  BLB 토큰 5%  배당</h2>
				                    <br /><br />       
				                <button type="button" class="btn btn-success btn-lg btn-block" onclick="location.href='${pageContext.request.contextPath }/private/details.do'">지금 연락하기</button>                                    
	                            <button type="button" class="btn btn-primary btn-lg btn-block" onclick="location.href='${pageContext.request.contextPath }/private/details.do'">찜 해두기</button>
	                        	<br /><br />
	                        	<img class="card-img-top" src="${pageContext.request.contextPath }/resources/images/maps.png" alt="mpas">
	                        </div>
	                    </div>
	                </div>
	                    
					
	        	</div>
	    	</div>
		</div>            
	</div>	
</div>


  
    

<br><br><br><br><br> 
  <!--==========================
    Footer
  ============================-->
  <footer id="footer">
      <div class="credits">
        <br /> 블록버스터는 통신판매중개자로서 통신판매의 당사자가 아니며, 개별 판매자가 등록한 거래정보 및 거래에 대하여 책임을 지지 않습니다.
        <br /> 본 사이트의 콘텐츠는 저작권법의 보호를 받는바, 무단 전재, 복사, 배포 등을 금합니다. <br />
        &copy; Copyright <strong>blockbuster</strong>. All Rights Reserved
      </div>
  </footer><!-- #footer -->

  <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>
  <!-- Uncomment below i you want to use a preloader -->
  <!-- <div id="preloader"></div> -->

  <!-- JavaScript Libraries -->
  <script src="${pageContext.request.contextPath }/resources/lib/jquery/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/lib/jquery/jquery-migrate.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/lib/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/lib/easing/easing.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/lib/mobile-nav/mobile-nav.js"></script>
  <script src="${pageContext.request.contextPath }/resources/lib/wow/wow.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/lib/waypoints/waypoints.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/lib/counterup/counterup.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/lib/owlcarousel/owl.carousel.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/lib/isotope/isotope.pkgd.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/lib/lightbox/js/lightbox.min.js"></script>
  <!-- Contact Form JavaScript File -->
  <script src="${pageContext.request.contextPath }/resources/contactform/contactform.js"></script>

  <!-- Template Main Javascript File -->
  <script src="${pageContext.request.contextPath }/resources/js/main.js"></script>
  
  <!--  -->
  
  <!-- Vendor JS       -->
  <script src="${pageContext.request.contextPath }/resources/vendor/slick/slick.min.js">
  </script>
  <script src="${pageContext.request.contextPath }/resources/vendor/wow/wow.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/vendor/animsition/animsition.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/vendor/bootstrap-progressbar/bootstrap-progressbar.min.js">
  </script>
  <script src="${pageContext.request.contextPath }/resources/vendor/counter-up/jquery.waypoints.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/vendor/counter-up/jquery.counterup.min.js">
  </script>
  <script src="${pageContext.request.contextPath }/resources/vendor/circle-progress/circle-progress.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/vendor/perfect-scrollbar/perfect-scrollbar.js"></script>
  <script src="${pageContext.request.contextPath }/resources/vendor/chartjs/Chart.bundle.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/vendor/select2/select2.min.js">
  </script>

  <!-- Main JS-->
  <script src="${pageContext.request.contextPath }/resources/js/main.js"></script>
  


</body>
</html>

