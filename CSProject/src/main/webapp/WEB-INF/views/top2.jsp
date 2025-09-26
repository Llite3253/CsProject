<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="/style/main.css">
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" />
</head>
<body>
<div class="main">
    <div class="logo-top sticky">
        <div class="logo-top2">
            <div class="logo-top3">
                <div class="logo">
                    <a class="logo-text" href="/">C.Shopping</a>
                </div>
                <div class="search">
                    <div class="search2">
                        <input class="searchString">
                        <button><img src="img/serach.png"></button>
                    </div>
                </div>
            </div>
            <c:if test="${empty memberId }">
                <div class="menu-login">
                    <a class="menu-login-text" href="/member/login">로그인</a>
                    <a class="menu-login-text" href="/member/simple_join">회원가입</a>
                </div>
            </c:if>
            <c:if test="${!empty memberId }">
                <div class="menu-login">
                    <a class="menu-login-text" href="/member/logout">로그아웃</a>
                    <a class="menu-login-text" href="/member/mypage">마이페이지</a>
                </div>
            </c:if>
        </div>
    </div>
    <header class="main-top">
        <div class="menu">
            <manu class="menu2">
                <ul class="menu-ul">
                    <li class="menu-li"><a class="menu-text" href="#">뮤지컬</a></li>
                    <li class="menu-li"><a class="menu-text" href="#">콘서트</a></li>
                    <li class="menu-li"><a class="menu-text" href="#">스포츠</a></li>
                    <li class="menu-li"><a class="menu-text" href="#">전시/행사</a></li>
                    <li class="menu-li"><a class="menu-text" href="#">클래식/무용</a></li>
                </ul>
            </manu>
        </div>
    </header>