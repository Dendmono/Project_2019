<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="au theme template">
    <meta name="author" content="Hau Nguyen">
    <meta name="keywords" content="au theme template">

    <!-- Title Page-->
    <title>blockbuster 로그인</title>

    <!-- Fontfaces CSS-->
    <link href="${pageContext.request.contextPath }/resources/css/font-face.css" rel="stylesheet" media="all">
    <link href="${pageContext.request.contextPath }/resources/vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <link href="${pageContext.request.contextPath }/resources/vendor/font-awesome-5/css/fontawesome-all.min.css" rel="stylesheet" media="all">
    <link href="${pageContext.request.contextPath }/resources/vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">

    <!-- Bootstrap CSS-->
    <link href="${pageContext.request.contextPath }/resources/vendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet" media="all">

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

<body class="animsition">
    <div class="page-wrapper">
        <div class="page-content--bge5">
            <div class="container">
                <div class="login-wrap">
                    <div class="login-content">
                        <div class="login-logo">
                            <a href="${pageContext.request.contextPath }/">
                                <img src="${pageContext.request.contextPath }/resources/img/logo.png" alt="blockbuster">
                            </a>
                        </div>
                        <div class="login-form">
                            <form action="" method="post">
								<c:choose>
									<c:when test="${isSuccess }">
										<h3> <strong>${id }</strong> 님 로그인 되었습니다.</h3>
										<h3> 1초후 메인 페이지로 이동합니다 </h3>
									</c:when>
									<c:otherwise>
										<h3>아이디 혹은 비밀번호가 틀려요</h3>
										<br /><br />
										<button class="au-btn au-btn--block au-btn--green m-b-20" 
                                		onclick="location.href='${pageContext.request.contextPath }/loginform.do?url=${encodedUrl }'">
                                		다시 로그인</button>										
                               
                                <div class="login-checkbox">
                                    <label>
                                        <a href="#">비밀번호 혹은 아이디가 기억안나세요?</a>
                                    </label>
                                </div>
                            </form>
                            <div class="register-link">
                                <p>
                                   	아직 계정이 없으신가요?
                                    <a href="signupform.do">블록버스터 가입하기</a>
                                </p>
                            </div>
									</c:otherwise>
								</c:choose>                             
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>

    <!-- Jquery JS-->
    <script src="${pageContext.request.contextPath }/resources/vendor/jquery-3.2.1.min.js"></script>
    <!-- Bootstrap JS-->
    <script src="${pageContext.request.contextPath }/resources/vendor/bootstrap-4.1/popper.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/vendor/bootstrap-4.1/bootstrap.min.js"></script>
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
<c:choose>
	<c:when test="${isSuccess }">    
	
    <script>        
    setTimeout("location.href='${pageContext.request.contextPath }/'",1500);      
    </script>
    
    </c:when>
	<c:otherwise>
	</c:otherwise>
</c:choose>  

</body>

</html>
<!-- end document-->