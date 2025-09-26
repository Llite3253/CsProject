<%@ page language="java" contentType="text/html;charset=utf-8"%>
<ul class="list-inline">
    <li class="list-inline-item">
        <h6>CPU 종류 : </h6>
    </li>
    <li class="list-inline-item">
        <c:if test="${product_info.manufacturer eq '인텔'}">
            <p><strong>코어${product_info.type}세대</strong></p>
        </c:if>
        <c:if test="${product_info.manufacturer eq 'AMD'}">
            <p><strong>라이젠${product_info.type}세대</strong></p>
        </c:if>
    </li>
</ul>

<ul class="list-inline">
    <li class="list-inline-item">
        <h6>소켓 구분 : </h6>
    </li>
    <li class="list-inline-item">
        <p><strong>${product_info.socket}</strong></p>
    </li>
</ul>

<ul class="list-inline">
    <li class="list-inline-item">
        <h6>코어 수 : </h6>
    </li>
    <li class="list-inline-item">
        <p><strong>${product_info.core}코어</strong></p>
    </li>
</ul>

<ul class="list-inline">
    <li class="list-inline-item">
        <h6>스레드 수 : </h6>
    </li>
    <li class="list-inline-item">
        <p><strong>${product_info.thread}스레드</strong></p>
    </li>
</ul>

<h6>상품 설명 : </h6>
<p>${product.content}</p>
