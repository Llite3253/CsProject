<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="/style/member.css">
    <link rel="stylesheet" href="/style/main.css">
    <link rel="stylesheet" href="/style/basket.css">
    <link rel="stylesheet" href="/assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="/assets/css/templatemo.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" />
</head>
<body class="simple_join_body">
    <div class="simple_join_main" style="width: 700px">
        <div class="simple_join_header">
            <div class="logo">
                <a class="logo-text" href="/" style="font-size: 40px !important;">C.Shopping</a>
            </div>
            <div class="simple_join_logo" style="font-size: 30px !important; font-weight: 900;">장바구니</div>
        </div>

        <hr style="margin: 30px 50px 30px 50px">

        <div>
            <c:if test="${empty cart_list}">
                <div class="mt-3 text-align-center" style="text-align: center;height: 90px">
                    <p style="font-size: 15px !important;">장바구니가 비어있습니다.</p>
                </div>
            </c:if>
            <c:forEach var="list" items="${cart_list}" varStatus="status">
                <div class="mt-3">
                    <table style="margin-left: auto;margin-right: auto;border-collapse: collapse; border: 1px solid #c9c9c9; font-size: 20px; width: 600px; height: 225px">
                        <tr>
                            <td rowspan="5"><input type="checkbox" checked style="display: block; margin: 10px 10px"></td>
                            <td rowspan="5" style="width: 255px"><img src="/img/upload/${list.img1}" width="225" height="225"></td>
                        </tr>
                        <tr>
                            <td style="height: 12px;text-align: right;padding-right: 10px "><a href="/cart/minus/${cart[status.index].cartKey}" style="font-size: 15px !important;">삭제</a></td>
                        </tr>
                        <tr>
                            <td style="height: 130px">${list.name}</td>
                        </tr>
                        <tr>
                            <td class="product-price" data-price="${list.price}"><fmt:formatNumber value="${list.price * cart[status.index].cnt}" pattern="###,###" />원</td>
                        </tr>
                        <tr>
                            <td style="display: flex;justify-content: flex-end;margin-right: 10px">
                                <div class="col-auto">
                                    <ul class="list-inline">
                                        <li class="list-inline-item text-right">
                                            수량
                                            <input type="hidden" name="product-quanity" class="product-quanity" value="${cart[status.index].cnt}">
                                        </li>
                                        <li class="list-inline-item"><span class="btn btn-success btn-minus">-</span></li>
                                        <li class="list-inline-item"><span class="badge bg-secondary var-value">${cart[status.index].cnt}</span></li>
                                        <li class="list-inline-item"><span class="btn btn-success btn-plus">+</span></li>
                                    </ul>
                                </div>
                            </td>
                        </tr>
                    </table>
                </div>
            </c:forEach>
        </div>

        <hr style="margin: 30px 50px 0 50px">

        <div class="mt-3">
            <table style="margin-left: auto;margin-right: auto;width: 600px;">
                <tr>
                    <td style="text-align: center">주문 총 금액</td>
                    <td style="text-align: right;" id="total-price">123,456원</td>
                </tr>
            </table>

            <hr style="margin: 15px 50px 0 50px">

            <div class="col d-grid" style="margin: 30px 50px 0 50px">
                <button type="submit" class="btn btn-success btn-lg" name="submit" value="buy">구매하기</button>
            </div>
        </div>

        <div class="footer_div">
            <p style="font-size: 12px !important;">Copyright © 2024. 김지우 All Rights Reserved.</p>
        </div>
    </div>

    <script src="/js/basket.js"></script>
</body>
</html>