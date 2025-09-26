<%@ page language="java" contentType="text/html;charset=utf-8"%>
<ul class="list-inline">
    <li class="list-inline-item">
        <h6>CPU 소켓 : </h6>
    </li>
    <li class="list-inline-item">
        <p><strong>${product_info.socket}</strong></p>
    </li>
</ul>

<ul class="list-inline">
    <li class="list-inline-item">
        <h6>세부 칩셋 : </h6>
    </li>
    <li class="list-inline-item">
        <p><strong>${product_info.detailed_chipset}</strong></p>
    </li>
</ul>

<ul class="list-inline">
    <li class="list-inline-item">
        <h6>폼팩터 : </h6>
    </li>
    <li class="list-inline-item">
        <c:if test="${product_info.form_factor eq 'ATX'}">
            <p><strong>${product_info.form_factor} (30.5x24.4cm)</strong></p>
        </c:if>
        <c:if test="${product_info.form_factor eq 'M-ATX'}">
            <p><strong>${product_info.form_factor} (24.4x24.4cm)</strong></p>
        </c:if>
        <c:if test="${product_info.form_factor eq 'M-iTX'}">
            <p><strong>${product_info.form_factor} (17.0x17.0cm)</strong></p>
        </c:if>
        <c:if test="${product_info.form_factor eq 'E-ATX'}">
            <p><strong>${product_info.form_factor} (30.5x33.0cm)</strong></p>
        </c:if>
    </li>
</ul>

<ul class="list-inline">
    <li class="list-inline-item">
        <h6>메모리 종류 : </h6>
    </li>
    <li class="list-inline-item">
        <p><strong>${product_info.memory_type}</strong></p>
    </li>
</ul>

<ul class="list-inline">
    <li class="list-inline-item">
        <h6>메모리 슬롯 : </h6>
    </li>
    <li class="list-inline-item">
        <p><strong>${product_info.memory_slots}개</strong></p>
    </li>
</ul>

<ul class="list-inline">
    <li class="list-inline-item">
        <h6>M.2 : </h6>
    </li>
    <li class="list-inline-item">
        <p><strong>${product_info.m2}개</strong></p>
    </li>
</ul>

<h6>상품 설명 : </h6>
<p>${product.content}</p>
