<%@ page language="java" contentType="text/html;charset=utf-8"%>
<ul class="list-inline">
    <li class="list-inline-item">
        <h6>사용 장치 : </h6>
    </li>
    <li class="list-inline-item">
        <p><strong>${product_info.device}</strong></p>
    </li>
</ul>

<ul class="list-inline">
    <li class="list-inline-item">
        <h6>제품 분류 : </h6>
    </li>
    <li class="list-inline-item">
        <p><strong>${product_info.classification}</strong></p>
    </li>
</ul>

<ul class="list-inline">
    <li class="list-inline-item">
        <h6>메모리 용량 : </h6>
    </li>
    <li class="list-inline-item">
        <p><strong>${product_info.capacity}GB</strong></p>
    </li>
</ul>

<ul class="list-inline">
    <li class="list-inline-item">
        <h6>동작 클럭(대역폭) : </h6>
    </li>
    <li class="list-inline-item">
        <p><strong>${product_info.motion_clock}</strong></p>
    </li>
</ul>

<h6>상품 설명 : </h6>
<p>${product.content}</p>
