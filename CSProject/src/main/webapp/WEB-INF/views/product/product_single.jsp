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
    <link rel="stylesheet" href="/style/member.css">
    <link rel="stylesheet" href="/style/main.css">
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
    <div class="simple_join_header">
        <div class="logo">
            <a class="logo-text" style="font-size: 40px !important;" href="/">C.Shopping</a>
        </div>
        <div class="simple_join_logo" style="font-size: 30px !important; font-weight: 900 !important; ">상품 상세 보기</div>
    </div>

    <section class="bg-light mt-3">
        <div class="container pb-5">
            <div class="row">
                <div class="col-lg-5 mt-5">
                    <div class="card mb-3">
                        <img class="card-img img-fluid" src="/img/upload/${product.img1}" alt="Card image cap" id="product-detail">
                    </div>
                    <div class="row">
                        <!--Start Controls-->
                        <div class="col-1 align-self-center">
                            <a href="#multi-item-example" role="button" data-bs-slide="prev">
                                <i class="text-dark fas fa-chevron-left"></i>
                                <span class="sr-only">Previous</span>
                            </a>
                        </div>
                        <!--End Controls-->
                        <!--Start Carousel Wrapper-->
                        <div id="multi-item-example" class="col-10 carousel slide carousel-multi-item" style="width: 83.3333333333%;" data-bs-ride="carousel">
                            <!--Start Slides-->
                            <div class="carousel-inner product-links-wap" role="listbox">

                                <!--First slide-->
                                <div class="carousel-item active">
                                    <div class="row" style="justify-content: center;">
                                        <div class="col-4">
                                            <a href="#">
                                                <img class="card-img img-fluid" src="/img/upload/${product.img1}" alt="Product Image 1">
                                            </a>
                                        </div>
                                        <c:if test="${!empty product.img2}">
                                            <div class="col-4">
                                                <a href="#">
                                                    <img class="card-img img-fluid" src="/img/upload/${product.img2}" alt="Product Image 1">
                                                </a>
                                            </div>
                                        </c:if>
                                        <c:if test="${!empty product.img3}">
                                            <div class="col-4">
                                                <a href="#">
                                                    <img class="card-img img-fluid" src="/img/upload/${product.img3}" alt="Product Image 1">
                                                </a>
                                            </div>
                                        </c:if>
                                    </div>
                                </div>
                                <!--/.First slide-->

                                <c:if test="${!empty product.img4}">
                                <!--Second slide-->
                                    <div class="carousel-item">
                                        <div class="row" style="justify-content: center;">
                                                <div class="col-4">
                                                    <a href="#">
                                                        <img class="card-img img-fluid" src="/img/upload/${product.img4}" alt="Product Image 1">
                                                    </a>
                                                </div>
                                            <c:if test="${!empty product.img5}">
                                                <div class="col-4">
                                                    <a href="#">
                                                        <img class="card-img img-fluid" src="/img/upload/${product.img5}" alt="Product Image 1">
                                                    </a>
                                                </div>
                                            </c:if>
                                        </div>
                                    </div>
                                <!--/.Second slide-->
                                </c:if>
                            </div>
                            <!--End Slides-->
                        </div>
                        <!--End Carousel Wrapper-->
                        <!--Start Controls-->
                        <div class="col-1 align-self-center">
                            <a href="#multi-item-example" role="button" data-bs-slide="next">
                                <i class="text-dark fas fa-chevron-right"></i>
                                <span class="sr-only">Next</span>
                            </a>
                        </div>
                        <!--End Controls-->
                    </div>
                </div>
                <!-- col end -->
                <div class="col-lg-7 mt-5">
                    <div class="card">
                        <div class="card-body">
                            <h1 class="h2">${product.name}</h1>
                            <p class="h3 py-2"><fmt:formatNumber value="${product.price}" pattern="###,###" />원</p>
                            <ul class="list-inline">
                                <li class="list-inline-item">
                                    <h6>제조사 : </h6>
                                </li>
                                <li class="list-inline-item">
                                    <p><strong>${product_info.manufacturer}</strong></p>
                                </li>
                            </ul>

                            <c:if test="${product.category eq 'CPU'}"><%@ include file="../shop/shop-single_cpu.jsp"%></c:if>
                            <c:if test="${product.category eq 'MotherBoard'}"><%@ include file="../shop/shop-single_mb.jsp"%></c:if>
                            <c:if test="${product.category eq 'Cooler'}"><%@ include file="../shop/shop-single_cooler.jsp"%></c:if>
                            <c:if test="${product.category eq 'RAM'}"><%@ include file="../shop/shop-single_ram.jsp"%></c:if>
                            <c:if test="${product.category eq 'VGA'}"><%@ include file="../shop/shop-single_vga.jsp"%></c:if>

                            <div class="row pb-3">
                                <div class="col d-grid">
                                    <a class="btn btn-success btn-lg" href="/product/update/${product.itemKey}">수정하기</a>
                                </div>
                                <div class="col d-grid">
                                    <a class="btn btn-success btn-lg" href="/product/delete/${product.itemKey}" style="background: #ff000087 !important">삭제하기</a>
                                </div>
                                <div class="col d-grid">
                                    <a class="btn btn-success btn-lg" href="/product/product_home">취소</a>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <script src="/assets/js/jquery-1.11.0.min.js"></script>
    <script src="/assets/js/jquery-migrate-1.2.1.min.js"></script>
    <script src="/assets/js/bootstrap.bundle.min.js"></script>
    <script src="/assets/js/templatemo.js"></script>
    <script src="/assets/js/custom.js"></script>

    <script src="/assets/js/slick.min.js"></script>
    <script>
        $('#carousel-related-product').slick({
            infinite: true,
            arrows: false,
            slidesToShow: 4,
            slidesToScroll: 3,
            dots: true,
            responsive: [{
                breakpoint: 1024,
                settings: {
                    slidesToShow: 3,
                    slidesToScroll: 3
                }
            },
                {
                    breakpoint: 600,
                    settings: {
                        slidesToShow: 2,
                        slidesToScroll: 3
                    }
                },
                {
                    breakpoint: 480,
                    settings: {
                        slidesToShow: 2,
                        slidesToScroll: 3
                    }
                }
            ]
        });
    </script>

</body>

</html>