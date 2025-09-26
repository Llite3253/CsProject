<%@ page language="java" contentType="text/html;charset=utf-8"%>
<ul class="list-inline">
    <li class="list-inline-item">
        <h6>냉각 방식 : </h6>
    </li>
    <li class="list-inline-item">
        <p><strong>${product_info.cooling_system}</strong></p>
    </li>
</ul>

<ul class="list-inline">
    <li class="list-inline-item">
        <h6>높이 : </h6>
    </li>
    <li class="list-inline-item">
        <p><strong>${product_info.height}mm</strong></p>
    </li>
</ul>

<c:if test="${product_info.cooling_system eq '수랭'}">
    <ul class="list-inline">
        <li class="list-inline-item">
            <h6>라디에이터 : </h6>
        </li>
        <li class="list-inline-item">
            <p><strong>${product_info.radiator}열</strong></p>
        </li>
    </ul>
</c:if>

<ul class="list-inline">
    <li class="list-inline-item">
        <h6>팬 크기 : </h6>
    </li>
    <li class="list-inline-item">
        <c:if test="${product_info.fan_size eq '150'}">
            <p><strong>${product_info.fan_size}mm 이상</strong></p>
        </c:if>
        <c:if test="${!(product_info.fan_size eq '150')}">
            <p><strong>${product_info.fan_size}mm</strong></p>
        </c:if>
    </li>
</ul>

<h6>상품 설명 : </h6>
<p>${product.content}</p>
