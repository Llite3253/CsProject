<%@ page language="java" contentType="text/html;charset=utf-8"%>
<%@ include file ="top.jsp"%>

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

    <!-- Open Content -->
    <section class="bg-light">
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
                        <div id="multi-item-example" class="col-10 carousel slide carousel-multi-item" data-bs-ride="carousel">
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

                            <c:if test="${product.category eq 'CPU'}"><%@ include file="shop/shop-single_cpu.jsp"%></c:if>
                            <c:if test="${product.category eq 'MotherBoard'}"><%@ include file="shop/shop-single_mb.jsp"%></c:if>
                            <c:if test="${product.category eq 'Cooler'}"><%@ include file="shop/shop-single_cooler.jsp"%></c:if>
                            <c:if test="${product.category eq 'RAM'}"><%@ include file="shop/shop-single_ram.jsp"%></c:if>
                            <c:if test="${product.category eq 'VGA'}"><%@ include file="shop/shop-single_vga.jsp"%></c:if>

                            <form action="" method="GET">
                                <input type="hidden" name="product-title" value="Activewear">
                                <div class="row" style="justify-content: space-between; align-items: center;">
                                    <div class="col-auto">
                                        <ul class="list-inline">
                                            <li class="list-inline-item">
                                                <h6>재고 : </h6>
                                            </li>
                                            <li class="list-inline-item">
                                                <p><strong>${product.cnt} 개</strong></p>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="col-auto">
                                        <ul class="list-inline pb-3">
                                            <li class="list-inline-item text-right">
                                                수량
                                                <input type="hidden" name="product-quanity" id="product-quanity" value="1">
                                            </li>
                                            <li class="list-inline-item"><span class="btn btn-success" id="btn-minus">-</span></li>
                                            <li class="list-inline-item"><span class="badge bg-secondary" id="var-value">1</span></li>
                                            <li class="list-inline-item"><span class="btn btn-success" id="btn-plus">+</span></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="row pb-3">
                                    <div class="col d-grid">
                                        <button type="submit" class="btn btn-success btn-lg" name="submit" value="buy">구매하기</button>
                                    </div>
                                    <div class="col d-grid">
                                        <button type="submit" class="btn btn-success btn-lg" name="submit" value="addtocard">장바구니</button>
                                    </div>
                                </div>
                            </form>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Close Content -->

    <div style="margin: auto;padding: 0">
        <div class="container pb-5">
            <div class="row text-left p-2">
                <h4>의견/리뷰</h4>
            </div>

            <div class="cmt_write_wrap" >
                <div class="cmt_wrap">
                    <div class="cmt_kind">
                        <span class="radio_box">
                            <input type="radio" name="ntype" value="의견" class="input comments_ntype">
                            <label class="label">의견</label>
                        </span>
                        <span class="radio_box">
                            <input type="radio" name="ntype" value="질문" class="input comments_ntype">
                            <label class="label">질문</label>
                        </span>
                        <span class="radio_box">
                            <input type="radio" name="ntype" value="후기" class="input comments_ntype">
                            <label class="label">후기</label>
                        </span>
                    </div>
                    <div>
                        <div class="cmt_textarea">
                            <div>
                                <textarea style="height: 27px;overflow: hidden" id="comments_content"></textarea>
                            </div>
                        </div>
                        <div class="cmt_func">
                            <div class="right">
                                <button type="reset" class="btn_cancel">취소</button>
                                <button type="submit" class="btn_submit" onclick="Comments(${product.itemKey})">등록</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="clr" style="margin: 0;padding: 0">
                <div class="area_left">
                    <div>
                        <a class="btn_kindsel" href="#">
                            <span class="txt">전체보기</span>
                            <span class="count">0</span>
                        </a>
                        <a class="btn_kindsel" href="#">
                            <span class="txt">의견</span>
                            <span class="count">0</span>
                        </a>
                        <a class="btn_kindsel" href="#">
                            <span class="txt">질문/답변</span>
                            <span class="count">0</span>
                        </a>
                        <a class="btn_kindsel" href="#">
                            <span class="txt">후기</span>
                            <span class="count">0</span>
                        </a>
                    </div>
                </div>
                <div class="area_right">
                    <div>
                        <ul class="cmt_list">
                            <li style="list-style: none;"></li>
                            <c:forEach var="c" items="${comments}">
                                <li class="cmt_item">
                                    <div class="cmt_wrap">
                                        <div class="cont_area">
                                            <div class="cmt_head" style="display: flex;justify-content: space-between;">
                                                <div>
                                                    <span class="user_info">
                                                        ${c.nick_name}
                                                    </span>
                                                    <span class="date">
                                                        ${c.rdate}
                                                    </span>
                                                </div>
                                                <div>
                                                    <div style="display: flex">
                                                        <button class="edit_opt_btn"></button>
                                                        <div class="layer_edit_opt tip_layer">
                                                            <a class="btn_editopt">신고</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="cmt_cont">
                                                <p>
                                                    <span class="lb_op">${c.ntype}</span>
                                                    ${c.content}
                                                </p>
                                            </div>
                                            <div class="cmt_feedback">
                                                <a class="btn_reply" href="#">답글</a>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                            </c:forEach>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>

<script>
    function Comments(itemKey) {
        var ntype = document.querySelector('input[name="ntype"]:checked').value;
        var content = document.querySelector("#comments_content").value;

        $.ajax({
            url: "/product/comments",
            type: "post",
            contentType: "application/json",
            data: JSON.stringify({
                itemKey: itemKey,
                ntype: ntype,
                content: content
            }),
            success: function(res) {
                if(res == "ok") {
                    alert('댓글이 추가되었습니다.');
                    window.location.reload();
                }
                else if(res == "no") {
                    alert('로그인을 해주세요.');
                    window.location.href = "/member/login";
                }
            },
            error: function(err) {
            }
        });
    }
</script>

<%@include file="footer.jsp"%>