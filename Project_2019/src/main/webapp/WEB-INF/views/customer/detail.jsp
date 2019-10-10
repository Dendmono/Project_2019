<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="ko">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.css" />
  <style>
      html{
	      background: url(${pageContext.request.contextPath }/resources/img/block.png) no-repeat center center fixed;
	      background-size: cover;
      }
	/* 글 내용의 경계선 표시 */
	.content{
		border: 1px dotted #cecece;
	}
	/* 글 내용안에 있는 이미지의 크기 제한 */
	.content img{
		max-width: 100%;
	}
	/* 댓글에 관련된 css */
	.comments ul{
		padding: 0;
		margin: 0;
		list-style-type: none;
	}
	.comments ul li{
		border-top: 1px solid #888; /* li 의 윗쪽 경계선 */
	}
	.comments dt{
		margin-top: 5px;
	}
	.comments dd{
		margin-left: 26px;
	}
	.comments form textarea, .comments form button{
		float: left;
	}
	.comments li{
		clear: left;
	}
	.comments form textarea{
		width: 85%;
		height: 100px;
	}
	.comments form button{
		width: 15%;
		height: 100px;
	}
	/* 댓글에 댓글을 다는 폼과 수정폼을 일단 숨긴다. */
	.comment form{
		display: none;
	}
	.comment{
		position: relative;
	}
	.comment .reply_icon{
		width: 8px;
		height: 8px;
		position: absolute;
		top: 10px;
		left: 30px;
	}
	.comments .user-img{
		width: 20px;
		border-radius: 50%;
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
		  <li><a href="${pageContext.request.contextPath }/customer/board.do" class="btn-services scrollto">고객센터</a></li>
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
	<a href="board.do">글 목록보기</a>
	
	<c:if test="${not empty keyword }">
		<p> <strong>${keyword }</strong> 검색어로 검색된
		결과 자세히 보기 입니다.</p>
	</c:if>
	
	<h3> 문의 내용  </h3>
	
	<c:if test="${dto.prevNum ne 0 }">
		<a href="detail.do?num=${dto.prevNum }&condition=${condition}&keyword=${encodedKeyword}">이전글</a>
	</c:if>
	
	<c:if test="${dto.nextNum ne 0 }">
		<a href="detail.do?num=${dto.nextNum }&condition=${condition}&keyword=${encodedKeyword}">다음글</a>
	</c:if>
	
	<table class="table table-bordered table-condensed">
		<tr>
			<th>글번호</th>
			<td>${dto.num }</td>
		</tr>
		<tr>
			<th>제목</th>
			<td>${dto.title }</td>
		</tr>
		<tr>
			<th>작성자</th>
			<td>${dto.writer }</td>
		</tr>
		<tr>
			<th>조회수</th>
			<td>${dto.viewCount }</td>
		</tr>
		<tr>
			<th>등록일</th>
			<td>${dto.regdate }</td>
		</tr>
	</table>
	<div class="content">${dto.content }</div>
	<%-- 로그인된 아이디와 글 작성자가 같은 경우 수정,삭제 --%>
	<c:if test="${id eq dto.writer }">
		<a href="updateform.do?num=${dto.num }">수정</a>
		<a href="javascript:deleteConfirm()">삭제</a>
	</c:if>
	
	<!-- 댓글 목록 -->
	<div class="comments">
		<ul>
		<c:forEach items="${commentList }" var="tmp">
			<c:choose>
				<c:when test="${tmp.deleted ne 'yes' }">
					<li class="comment" id="comment${tmp.num }" <c:if test="${tmp.num ne tmp.comment_group }">style="padding-left:50px;"</c:if> >
						<c:if test="${tmp.num ne tmp.comment_group }">
							<img class="reply_icon" src="${pageContext.request.contextPath}/resources/images/re.gif"/>
						</c:if>
						<dl>
							<dt>
								<c:choose>
									<c:when test="${empty tmp.profile }">
										<img class="user-img" src="${pageContext.request.contextPath}/resources/images/default_user.jpg"/>
									</c:when>
									<c:otherwise>
										<img class="user-img" src="${pageContext.request.contextPath}${tmp.profile}"/>
									</c:otherwise>
								</c:choose>
								
								<span>${tmp.writer }</span>
								<c:if test="${tmp.num ne tmp.comment_group }">
									to <strong>${tmp.target_id }</strong>
								</c:if>
								<span>${tmp.regdate }</span>
								<a href="javascript:" class="reply_link">답글</a> |
								<c:choose>
									<%-- 로그인된 아이디와 댓글의 작성자가 같으면 --%>
									<c:when test="${id eq tmp.writer }">
										<a href="javascript:" class="comment-update-link">수정</a>&nbsp;&nbsp;
										<a href="javascript:deleteComment(${tmp.num })">삭제</a>
									</c:when>
									<c:otherwise>
										<a href="javascript:">신고</a>
									</c:otherwise>
								</c:choose>
							</dt>
							<dd>
								<pre>${tmp.content }</pre>
							</dd>
						</dl>
						<form class="comment-insert-form" action="comment_insert.do" method="post">
							<!-- 덧글 그룹 -->
							<input type="hidden" name="ref_group" value="${dto.num }" />
							<!-- 덧글 대상 -->
							<input type="hidden" name="target_id" value="${tmp.writer }" />
							<input type="hidden" name="comment_group" value="${tmp.comment_group }" />
							<textarea name="content"><c:if test="${empty id }">로그인이 필요합니다.</c:if></textarea>
							<button type="submit">등록</button>
						</form>	
						<!-- 로그인한 아이디와 댓글의 작성자와 같으면 수정폼 출력 -->				
						<c:if test="${id eq tmp.writer }">
							<form class="comment-update-form" action="comment_update.do">
								<input type="hidden" name="num" value="${tmp.num }" />
								<textarea name="content">${tmp.content }</textarea>
								<button type="submit">수정</button>
							</form>
						</c:if>
					</li>				
				</c:when>
				<c:otherwise>
					<li <c:if test="${tmp.num ne tmp.comment_group }">style="padding-left:50px;"</c:if> >삭제된 댓글 입니다.</li>
				</c:otherwise>
			</c:choose>
		</c:forEach>
		</ul>
		<div class="clearfix"></div>
		<!-- 원글에 댓글을 작성할수 있는 폼 -->
		<div class="comment_form">
			<form action="comment_insert.do" method="post">
				<!-- 댓글의 그룹번호는 원글의 글번호 -->
				<input type="hidden" name="ref_group" value="${dto.num }"/>
				<!-- 댓글의 대상자는 원글의 작성자 -->
				<input type="hidden" name="target_id" value="${dto.writer }"/>
				<textarea name="content"><c:if test="${empty id }">로그인이 필요합니다.</c:if></textarea>
				<button type="submit">등록</button>
			</form>
		</div>
	</div>
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
  
  
  
<script>
	//댓글 수정 링크를 눌렀을때 호출되는 함수 등록
	$(".comment-update-link").click(function(){
		$(this)
		.parent().parent().parent()
		.find(".comment-update-form")
		.slideToggle(200);
	});
	
	//댓글 수정 폼에 submit 이벤트가 일어났을때 호출되는 함수 등록
	$(".comment-update-form").on("submit", function(){
		// "private/comment_update.do"
		var url=$(this).attr("action");
		//폼에 작성된 내용을 query 문자열로 읽어온다.
		// num=댓글번호&content=댓글내용
		var data=$(this).serialize();
		//이벤트가 일어난 폼을 선택해서 변수에 담아 놓는다.
		var $this=$(this);
		$.ajax({
			url:url,
			method:"post",
			data:data,
			success:function(responseData){
				// responseData : {isSuccess:true}
				if(responseData.isSuccess){
					//폼을 안보이게 한다 
					$this.slideUp(200);
					//폼에 입력한 내용 읽어오기
					var content=$this.find("textarea").val();
					//pre 요소에 수정 반영하기 
					$this.parent().find("pre").text(content);
				}
			}
		});
		//폼 제출 막기 
		return false;
	});
	
	//댓글 삭제를 눌렀을때 호출되는 함수
	function deleteComment(num){
		var isDelete=confirm("확인을 누르면 댓글이 삭제 됩니다.");
		if(isDelete){
			$.ajax({
				url:"comment_delete.do",
				method:"post",
				data:{"num":num},
				success:function(responseData){
					if(responseData.isSuccess){
						var sel="#comment"+num;
						$(sel).text("삭제된 댓글 입니다.");
					}
				}
			});
		}
	}
	
	//폼에 submit 이벤트가 일어 났을때 실행할 함수 등록 
	$(".comments form").on("submit", function(){
		//로그인 여부
		var isLogin=${not empty id};
		if(isLogin==false){
			alert("로그인 페이지로 이동 합니다.");
			location.href="${pageContext.request.contextPath}/loginform.do?url=${pageContext.request.contextPath}/customer/detail.do?num=${dto.num}";
			return false;//폼 전송 막기 
		}
	});

	//답글 달기 링크를 클릭했을때 실행할 함수 등록
	$(".comment .reply_link").click(function(){
		$(this)
		.parent().parent().parent()
		.find(".comment-insert-form")
		.slideToggle(200);
		
		// 답글 <=> 취소가 서로 토글 되도록 한다. 
		if($(this).text()=="답글"){
			$(this).text("취소");
		}else{
			$(this).text("답글");
		}
	});

	function deleteConfirm(){
		var isDelete=confirm("글을 삭제 하시겠습니까?");
		if(isDelete){
			location.href="${pageContext.request.contextPath }/customer/delete.do?num=${dto.num}";
		}
	}
</script>

</body>
</html>

