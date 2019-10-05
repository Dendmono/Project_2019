<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%--
	[ SmartEditor 를 사용하기 위한 설정 ]
	
	1. WebContent 에 SmartEditor 폴더를 복사해서 붙여넣기
	2. WebContent 에 upload 폴더 만들어 두기 
	3. WebContent/WEB-INF/lib 에 
	   commons-io.jar , commons-fileupload.jar 파일 붙여넣기
	4. 아래의 html 과 javascript 작성 
 --%>
<!DOCTYPE html>
<html lang="ko">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.css" />
  <style>
      html{
	      background: url(${pageContext.request.contextPath }/resources/img/block.png) no-repeat center center fixed;
	      background-size: cover;
      }
	/* textarea 의 크기가 SmartEditor 의 크기가 된다. */
	#content{
		display: none;
		width: 100%;
		height: 400px;
	}      
  </style>
<head>
  <meta charset="utf-8">
  <title>blockbuster customer board</title>
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
		  <li><a href="${pageContext.request.contextPath }/private/info.do" class="btn-services scrollto">고객센터</a></li>
		  <li><a href="${pageContext.request.contextPath }/private/info.do" class="btn-services scrollto">${id }님 로그인 중</a></li>
	</c:otherwise>
</c:choose>                
        </ul>
      </nav><!-- .main-nav -->
      
    </div>
  </header><!-- #header -->
  
<br />
	


<!-- MAIN CONTENT-->
<div class="main-content">
    
<div class="container">
	<p><strong>${id }</strong> 님 로그인중...</p>
	<h3>카페 새글 작성 폼 입니다.</h3>
	<form action="insert.do" method="post">
		<label for="title">제목</label>
		<input type="text" name="title" id="title" />
		<br/>
		<label for="content">내용</label>
		<textarea name="content" id="content"></textarea>
		<div>
			<input type="button" onclick="pasteHTML();" value="본문에 내용 넣기" />
			<input type="button" onclick="showHTML();" value="본문 내용 가져오기" />
			<input type="button" onclick="submitContents(this);" value="서버로 내용 전송" />
			<input type="button" onclick="setDefaultFont();" value="기본 폰트 지정하기 (궁서_24)" />
		</div>	
	</form>
</div>
    
    
</div>
<!-- END MAIN CONTENT-->
  
  
  
  
  
  
  
  
  
  
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
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
  
  
<!-- SmartEditor 에서 필요한 javascript 로딩  -->
<script src="${pageContext.request.contextPath }/SmartEditor/js/HuskyEZCreator.js"></script>
<script>
	var oEditors = [];
	
	//추가 글꼴 목록
	//var aAdditionalFontSet = [["MS UI Gothic", "MS UI Gothic"], ["Comic Sans MS", "Comic Sans MS"],["TEST","TEST"]];
	
	nhn.husky.EZCreator.createInIFrame({
		oAppRef: oEditors,
		elPlaceHolder: "content",
		sSkinURI: "${pageContext.request.contextPath}/SmartEditor/SmartEditor2Skin.html",	
		htParams : {
			bUseToolbar : true,				// 툴바 사용 여부 (true:사용/ false:사용하지 않음)
			bUseVerticalResizer : true,		// 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
			bUseModeChanger : true,			// 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
			//aAdditionalFontList : aAdditionalFontSet,		// 추가 글꼴 목록
			fOnBeforeUnload : function(){
				//alert("완료!");
			}
		}, //boolean
		fOnAppLoad : function(){
			//예제 코드
			//oEditors.getById["ir1"].exec("PASTE_HTML", ["로딩이 완료된 후에 본문에 삽입되는 text입니다."]);
		},
		fCreator: "createSEditor2"
	});
	
	function pasteHTML() {
		var sHTML = "<span style='color:#FF0000;'>이미지도 같은 방식으로 삽입합니다.<\/span>";
		oEditors.getById["content"].exec("PASTE_HTML", [sHTML]);
	}
	
	function showHTML() {
		var sHTML = oEditors.getById["content"].getIR();
		alert(sHTML);
	}
		
	function submitContents(elClickedObj) {
		oEditors.getById["content"].exec("UPDATE_CONTENTS_FIELD", []);	// 에디터의 내용이 textarea에 적용됩니다.
		
		// 에디터의 내용에 대한 값 검증은 이곳에서 document.getElementById("ir1").value를 이용해서 처리하면 됩니다.
		
		try {
			elClickedObj.form.submit();
		} catch(e) {}
	}
	
	function setDefaultFont() {
		var sDefaultFont = '궁서';
		var nFontSize = 24;
		oEditors.getById["content"].setDefaultFont(sDefaultFont, nFontSize);
	}
</script>











</body>
</html>










