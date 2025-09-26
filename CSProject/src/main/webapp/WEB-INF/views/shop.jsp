<%@ page language="java" contentType="text/html;charset=utf-8"%>
<%@ include file ="top.jsp"%>
    <!-- Close Header -->

    <!-- Modal -->
    <div class="modal fade bg-white" id="templatemo_search" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="w-100 pt-1 mb-5 text-right">
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form action="" method="get" class="modal-content modal-body border-0 p-0">
                <div class="input-group mb-2">
                    <input type="text" class="form-control" id="inputModalSearch" name="q" placeholder="Search ...">
                    <button type="submit" class="input-group-text bg-success text-light">
                        <i class="fa fa-fw fa-search text-white"></i>
                    </button>
                </div>
            </form>
        </div>
    </div>

    <!-- Start Content -->
    <div class="container py-5">
        <div class="row">

            <div class="col-lg-3">
                <h1 class="h2 pb-4">카탈로그</h1>
                <ul class="list-unstyled templatemo-accordion">
                    <li class="pb-3">
                        <a class="collapsed d-flex justify-content-between h3 text-decoration-none" href="/shop/0">CPU</a>
                    </li>
                    <li class="pb-3">
                        <a class="collapsed d-flex justify-content-between h3 text-decoration-none" href="/shop/2">
                            메인보드
                        </a>
                    </li>
                    <li class="pb-3">
                        <a class="collapsed d-flex justify-content-between h3 text-decoration-none" href="/shop/3">
                            쿨러
                        </a>
                    </li>
                    <li class="pb-3">
                        <a class="collapsed d-flex justify-content-between h3 text-decoration-none" href="/shop/1">
                            RAM
                        </a>
                    </li>
                    <li class="pb-3">
                        <a class="collapsed d-flex justify-content-between h3 text-decoration-none" href="/shop/4">
                            그래픽카드(VGA)
                        </a>
                    </li>
                </ul>
            </div>

            <div class="col-lg-9">
                <c:if test="${category == 0}">
                    <%@include file="shop/shop_search_cpu.jsp" %>
                </c:if>
                <c:if test="${category == 1}">
                    <%@include file="shop/shop_search_ram.jsp" %>
                </c:if>
                <c:if test="${category == 2}">
                    <%@include file="shop/shop_search_mb.jsp" %>
                </c:if>
                <c:if test="${category == 3}">
                    <%@include file="shop/shop_search_cooler.jsp" %>
                </c:if>
                <c:if test="${category == 4}">
                    <%@include file="shop/shop_search_vga.jsp" %>
                </c:if>

                <div class="row" id="product-list">
                    <c:forEach var="list" items="${list_product}">
                        <div class="col-md-4">
                            <div class="card mb-4 product-wap rounded-0">
                                <div class="card rounded-0 card-custom">
                                    <img class="card-img rounded-0 img-fluid" src="/img/upload/${list.img1}">
                                    <div class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center">
                                        <ul class="list-unstyled">
                                            <li><a class="btn btn-success text-white" href="shop-single.jsp"><i class="far fa-heart"></i></a></li>
                                            <li><a class="btn btn-success text-white mt-2" href="/shop-single/${list.itemKey}"><i class="far fa-eye"></i></a></li>
                                            <li><a class="btn btn-success text-white mt-2" href="javascript:Pluscar(${list.itemKey});"><i class="fas fa-cart-plus"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <a href="/shop-single/${list.itemKey}" class="h3 text-decoration-none product-title">${list.name}</a>
                                    <ul class="w-100 list-unstyled d-flex justify-content-between mt-1">
                                        <li class="fs--1">등록월 ${list.rdate}</li>
                                    </ul>
                                    <p class="text-center mb-0"><fmt:formatNumber value="${list.price}" pattern="###,###" />원</p>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
                <div div="row">
                    <ul class="pagination pagination-lg justify-content-center">
			            <c:forEach var="i" begin="${startPage}" end="${endPage}" >
                            <li class="page-item">
                                <c:if test="${empty category}">
                                    <a class="page-link active rounded-0 mr-3 shadow-sm border-top-0 border-left-0" href="/shop?pageNum=${i}" tabindex="-1">${i}</a>
                                </c:if>
                                <c:if test="${!empty category}">
                                    <a class="page-link active rounded-0 mr-3 shadow-sm border-top-0 border-left-0" href="/shop/${category}?pageNum=${i}" tabindex="-1">${i}</a>
                                </c:if>
                            </li>
                        </c:forEach>
                    </ul>
                </div>
            </div>

        </div>
    </div>
    <!-- End Content -->

<script>
    document.addEventListener('DOMContentLoaded', function() {
        document.querySelectorAll('input[type="checkbox"]').forEach(function(checkbox) {
            checkbox.addEventListener('change', function() {
                // 체크된 체크박스 값을 수집합니다.
                const checkedValues = Array.from(document.querySelectorAll('input[type="checkbox"]:checked'))
                    .map(cb => cb.getAttribute('value'));

                const checkedName = Array.from(document.querySelectorAll('input[type="checkbox"]:checked'))
                    .map(cb => cb.getAttribute('name'));

                $.ajax({
                    url: "/product/search/" + ${category},
                    type: "post",
                    contentType: "application/json",
                    data: JSON.stringify({
                        checkedValues: checkedValues,
                        checkedName: checkedName
                    }),
                    success: function (res) {
                        // 성공적으로 데이터를 받아온 경우, HTML에 삽입합니다.
                        var productList = $('#product-list');
                        productList.empty(); // 기존 내용을 지웁니다.

                        res.forEach(product => {
                            let productHtml = `
                                <div class="col-md-4">
                                    <div class="card mb-4 product-wap rounded-0">
                                        <div class="card rounded-0 card-custom">
                                            <img class="card-img rounded-0 img-fluid" src="/img/upload/`+ product.img1 +`">
                                            <div class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center">
                                                <ul class="list-unstyled">
                                                    <li><a class="btn btn-success text-white" href="shop-single.jsp"><i class="far fa-heart"></i></a></li>
                                                    <li><a class="btn btn-success text-white mt-2" href="/shop-single/`+ product.itmeKey +`"><i class="far fa-eye"></i></a></li>
                                                    <li><a class="btn btn-success text-white mt-2" href="shop-single.jsp"><i class="fas fa-cart-plus"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="card-body">
                                            <a href="/shop-single/`+ product.itemKey +`" class="h3 text-decoration-none product-title">`+ product.name +`</a>
                                            <ul class="w-100 list-unstyled d-flex justify-content-between mt-1">
                                                <li class="fs--1">등록월 `+ product.rdate +`</li>
                                            </ul>
                                            <p class="text-center mb-0">`+ product.price.toLocaleString() +`원</p>
                                        </div>
                                    </div>
                                </div>`;

                            productList.append(productHtml);
                        });
                    },
                    error: function (err) {
                        console.log(err);
                    }
                });
            });
        });
    });
</script>
<script>
    function Pluscar(itemKey) {
    $.ajax({
        url: "/cart/plus",
        type: "post",
        contentType: "application/json",
        data: JSON.stringify({
            itemKey: itemKey,
            cnt: 1
        }),
        success: function(res) {
            if(res == "ok") {
                alert('장바구니에 추가되었습니다.');
            }
            else if( res == "no") {
                alert('로그인을 해주세요.');
                window.location.href = "/member/login";
            }
        },
        error: function(err) {
            console.log("Error adding item to cart: ", err);
        }
    });
}
</script>


<%@ include file ="footer.jsp"%>