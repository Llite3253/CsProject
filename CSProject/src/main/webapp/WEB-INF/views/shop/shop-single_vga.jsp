<%@ page language="java" contentType="text/html;charset=utf-8"%>
<ul class="list-inline">
    <li class="list-inline-item">
        <h6>칩셋 : </h6>
    </li>
    <li class="list-inline-item">
        <p><strong>${product_info.chipset}</strong></p>
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
        <h6>메모리 용량 : </h6>
    </li>
    <li class="list-inline-item">
        <p><strong>${product_info.memory_capacity}GB</strong></p>
    </li>
</ul>

<ul class="list-inline">
    <li class="list-inline-item">
        <h6>팬 개수 : </h6>
    </li>
    <li class="list-inline-item">
        <p><strong>${product_info.fan_number}팬</strong></p>
    </li>
</ul>

<h6>상품 설명 : </h6>
<p>${product.content}</p>
