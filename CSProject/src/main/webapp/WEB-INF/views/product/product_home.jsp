<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<html>
<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="/style/member.css">
    <link rel="stylesheet" href="/style/main.css">
    <link rel="stylesheet" href="/style/product.css">

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" />
</head>
<body>
    <div class="login_header" style="justify-content: space-around;">
        <div class="flex-center">
            <div class="logo">
                <a class="logo-text" href="/">C.Shopping</a>
            </div>
            <div class="simple_join_logo">상품 홈</div>
        </div>
        <div class="fl-r" style="width: 100px;">
            <a class="login_button td-none" href="/product/registration">상품 등록</a>
        </div>
    </div>
    <div class="mt-3">
        <table class="table_border_collapse">
            <tr>
                <th style="width: 40px">#</th>
                <th>대표 이미지</th>
                <th style="width: 300px">상품명</th>
                <th>판매가</th>
                <th>등록일</th>
                <th>재고</th>
                <th></th>
            </tr>
            <c:forEach var="list" items="${list}">
                <tr>
                    <th style="width: 40px">${list.itemKey}</th>
                    <th><img src="/img/upload/${list.img1}"></th>
                    <th style="width: 300px"><a href="/product/info/${list.itemKey}" class="td-none">${list.name}</a></th>
                    <th><fmt:formatNumber value="${list.price}" pattern="###,###" />원</th>
                    <th>${list.rdate}</th>
                    <th>${list.cnt}개</th>
                    <th><a href="/product/info/${list.itemKey}" class="td-none">상품 상세</a></th>
                </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>
