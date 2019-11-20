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
                            	<h3>블록버스터 로그인</h3>
                            </a>
                        </div>
                        <div class="login-form">
                            <form action="login.do" method="post">
                                <div class="form-group">
                                	<input type="hidden" name="url" value="${url }" />
                                    <label for="id">아이디</label>
                                    <input class="au-input au-input--full" type="text" id="id" name="id" placeholder="아이디를 입력하세요">
                                </div>
                                <div class="form-group">
                                    <label for="pwd">비밀번호</label>
                                    <input class="au-input au-input--full" type="password" id="pwd" name="pwd" placeholder="비밀번호를 입력하세요">
                                </div>
                                <div class="login-checkbox">
                                    <label>
                                        <input type="checkbox" name="remember">로그인 정보 저장하기
                                    </label>
                                    <label>
                                        <a href="#" style="color:green">비밀번호 혹은 아이디가 기억안나세요?</a>
                                    </label>
                                </div>
                                <button class="au-btn au-btn--block au-btn--green m-b-20" type="submit">로그인</button>
                            </form>
                            <div class="register-link">
                                <p>
                                   	아직 계정이 없으신가요?
                                    <a href="signupform.do" style="color:green">블록버스터 가입하기</a>
                                </p>
                            </div>
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

</body>

</html>
<!-- end document-->