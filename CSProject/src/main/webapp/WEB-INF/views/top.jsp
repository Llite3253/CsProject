<%@ page language="java" contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<!DOCTYPE html>
<html>

<head>
    <title>C.Shop</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" href="/assets/img/logo.png">
    <link rel="shortcut icon" type="image/x-icon" href="/assets/img/logo.png">

    <link rel="stylesheet" href="/assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="/assets/css/templatemo.css">
    <link rel="stylesheet" href="/assets/css/custom.css">
    <link rel="stylesheet" href="/style/product.css">

    <!-- Load fonts style after rendering the layout styles -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="/assets/css/fontawesome.min.css">

    <!-- Slick -->
    <link rel="stylesheet" type="text/css" href="/assets/css/slick.min.css">
    <link rel="stylesheet" type="text/css" href="/assets/css/slick-theme.css">

    <!--

    TemplateMo 559 Zay Shop

    https://templatemo.com/tm-559-zay-shop

    -->
</head>

<body>
    <!-- Start Top Nav -->
    <nav class="navbar navbar-expand-lg bg-dark navbar-light d-none d-lg-block" id="templatemo_nav_top">
        <div class="container text-light">
            <div class="w-100 d-flex justify-content-between">
                <div>
                    <i class="fa fa-envelope mx-2"></i>
                    <a class="navbar-sm-brand text-light text-decoration-none" href="mailto:gfsy54@naver.com">gfsy54@naver.com</a>
                    <i class="fa fa-phone mx-2"></i>
                    <a class="navbar-sm-brand text-light text-decoration-none" href="tel:010-3253-5105">010-3253-5105</a>
                </div>
            </div>
        </div>
    </nav>

    <!-- Close Top Nav -->


    <!-- Header -->
    <nav class="navbar navbar-expand-lg navbar-light shadow">
        <div class="container d-flex justify-content-between align-items-center">
            <div class="logo-color">
                <a class="navbar-brand logo h1 align-self-center" href="/">
                    C.Shop
                </a>
            </div>

            <button class="navbar-toggler border-0" type="button" data-bs-toggle="collapse" data-bs-target="#templatemo_main_nav" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="align-self-center collapse navbar-collapse flex-fill  d-lg-flex justify-content-lg-between" id="templatemo_main_nav">
                <div class="flex-fill">
                    <ul class="nav navbar-nav d-flex justify-content-between mx-lg-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="/shop">Home</a>
                        </li>
                    </ul>
                </div>
                <div class="navbar align-self-center d-flex">
                    <div class="d-lg-none flex-sm-fill mt-3 mb-4 col-7 col-sm-auto pr-3">
                        <div class="input-group">
                            <input type="text" class="form-control" id="inputMobileSearch" placeholder="Search ...">
                            <div class="input-group-text">
                                <i class="fa fa-fw fa-search"></i>
                            </div>
                        </div>
                    </div>
                    <a class="nav-icon d-none d-lg-inline" href="#" data-bs-toggle="modal" data-bs-target="#templatemo_search">
                        <i class="fa fa-fw fa-search text-dark mr-2"></i>
                    </a>
                    <a class="nav-icon position-relative text-decoration-none" href="/cart/list">
                        <i class="fa fa-fw fa-cart-arrow-down text-dark mr-1"></i>
                        <!--<span class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark">7</span>-->
                    </a>
                    <c:if test="${empty memberId }">
                        <div class="dropdown">
                            <a class="nav-icon position-relative text-decoration-none">
                                    <i class="fa fa-fw fa-user text-dark mr-3"></i>
                                </a>
                            <div class="dropdown-options">
                                <a href="/member/login">로그인</a>
                                <a href="/member/simple_join">회원가입</a>
                            </div>

                        </div>
                    </c:if>
                    <c:if test="${!empty memberId }">
                        <div class="dropdown">
                            <a class="nav-icon position-relative text-decoration-none">
                                    <i class="fa fa-fw fa-user text-dark mr-3"></i>
                                </a>
                            <div class="dropdown-options">
                                <a href="/member/mypage">마이페이지</a>
                                <a href="/member/information">회원정보수정</a>
                                <c:if test="${!empty option }">
                                    <a href="/product/product_home">상품 홈</a>
                                </c:if>
                                <a href="/member/logout">로그아웃</a>
                            </div>

                        </div>
                    </c:if>
                </div>
            </div>

        </div>
    </nav>