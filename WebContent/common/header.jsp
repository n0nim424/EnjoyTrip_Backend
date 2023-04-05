<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set value="${pageContext.request.contextPath}" var="root"></c:set>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8" />
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />

    <title>Mamba Bootstrap Template - Index</title>
    <meta content="" name="description" />
    <meta content="" name="keywords" />

    <!-- Google Fonts -->
    <link
      href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,600,600i,700,700i,900"
      rel="stylesheet"
    />

    <!-- Vendor CSS Files -->
    <link href="${root}/assets/vendor/animate.css/animate.min.css" rel="stylesheet" />
    <link href="${root}/assets/vendor/aos/aos.css" rel="stylesheet" />
    <link href="${root}/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="${root}/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet" />
    <link href="${root}/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet" />
    <link href="${root}/assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet" />
    <link href="${root}/assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet" />

    <!-- Template Main CSS File -->
    <link href="${root}/assets/css/style.css" rel="stylesheet" />

    <!-- =======================================================
  * Template Name: Mamba
  * Updated: Mar 10 2023 with Bootstrap v5.2.3
  * Template URL: https://bootstrapmade.com/mamba-one-page-bootstrap-template-free/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->

</head>

  <body>
<!-- ======= Header ======= -->
    <header id="header" class="d-flex align-items-center">
      <div class="container d-flex align-items-center">
        <div class="logo me-auto">
          <h1><a href="${root}/index.jsp">Enjoy Trip</a></h1>
        </div>
        <nav id="navbar" class="navbar">
          <ul>
            <li>
              <a class="nav-link scrollto active" href="${root}/region/region-search.jsp">지역별여행지</a>
            </li>
            <li><a class="nav-link scrollto" href="${root}/region/tour-plan.jsp">나의여행계획</a></li>
            <li><a class="nav-link scrollto" href="${root}/hot-place.jsp">핫플자랑하기</a></li>
            <li><a class="nav-link scrollto" href="${root}/board?action=board">여행정보공유</a></li>
            <c:if test="${empty login}">
            <li>
              <a
                class="nav-link scrollto"
                data-bs-toggle="modal"
                data-bs-target="#registerModal"
                >회원가입</a
              >
            </li>
            <li>
              <a
                class="nav-link scrollto"
                data-bs-toggle="modal"
                data-bs-target="#loginModal"
                >로그인</a
              >
            </li>
            </c:if>
            <c:if test="${not empty login}">
            <li>
              <a class="nav-link scrollto" ><b>[${login.user_name}]님</b></a>
            </li>
            <li>
              <a class="nav-link scrollto" href='${root}/member?action=logout'>로그아웃</a>
            </li>
            </c:if>
            <c:if test="${not empty login && login.user_id=='admin'}">
            <li>
              <a class="nav-link scrollto" href="${root}/member?action=member">회원관리</a>
            </li>
            </c:if>
          </ul>
          <i class="bi bi-list mobile-nav-toggle"></i>
        </nav>
        <!-- .navbar -->
      </div>
    </header>
    <!-- End Header -->
