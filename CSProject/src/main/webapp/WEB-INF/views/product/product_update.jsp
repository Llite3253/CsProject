<%@ page language="java" contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="/style/member.css">
    <link rel="stylesheet" href="/style/main.css">
    <link rel="stylesheet" href="/style/product.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" />
</head>
<body class="simple_join_body">
    <div class="simple_join_main">
        <div class="simple_join_header">
            <div class="logo">
                <a class="logo-text" href="/">C.Shopping</a>
            </div>
            <div class="simple_join_logo">상품 수정</div>
        </div>
        <form class="container" name="f" action="/product/update" method="post" enctype="multipart/form-data">
            <input type="hidden" name="itemKey" value="${product.itemKey}">
            <div class="simple_join_container">
                <div class="email_join_div">
                    <div class="email_join_text">상품명</div>
                    <div class="email_join_input1">
                        <div class="email_join_input2">
                            <input type="text" name="name" placeholder="상품명" class="email_join_input_String product_register_name" value="${product.name}">
                        </div>
                    </div>
                </div>
                <div class="email_join_div">
                    <div class="email_join_text">대표 이미지 선택 (필수)</div>
                    <div class="email_join_input1">
                        <div class="filebox">
                            <input class="upload-name upload-name1" id="id_img1" value="첨부파일" placeholder="첨부파일">
                            <label for="file1">파일찾기</label>
                            <input type="file" class="product_register_img1" id="file1" name="img1">
                            <input type="hidden" name="img1_o" value="${product.img1}">
                        </div>
                    </div>
                </div>
                <div class="email_join_div">
                    <div class="email_join_text">이미지 선택 1</div>
                    <div class="email_join_input1">
                        <div class="filebox">
                            <input class="upload-name upload-name2" id="id_img2" value="첨부파일" placeholder="첨부파일">
                            <label for="file2">파일찾기</label>
                            <input type="file" id="file2" name="img2">
                            <input type="hidden" name="img2_o" value="${product.img2}">
                        </div>
                    </div>
                </div>
                <div class="email_join_div">
                    <div class="email_join_text">이미지 선택 2</div>
                    <div class="email_join_input1">
                        <div class="filebox">
                            <input class="upload-name upload-name3" id="id_img3" value="첨부파일" placeholder="첨부파일">
                            <label for="file3">파일찾기</label>
                            <input type="file" id="file3" name="img3">
                            <input type="hidden" name="img3_o" value="${product.img3}">
                        </div>
                    </div>
                </div>
                <div class="email_join_div">
                    <div class="email_join_text">이미지 선택 3</div>
                    <div class="email_join_input1">
                        <div class="filebox">
                            <input class="upload-name upload-name4" id="id_img4" value="첨부파일" placeholder="첨부파일">
                            <label for="file4">파일찾기</label>
                            <input type="file" id="file4" name="img4">
                            <input type="hidden" name="img4_o" value="${product.img4}">
                        </div>
                    </div>
                </div>
                <div class="email_join_div">
                    <div class="email_join_text">이미지 선택 4</div>
                    <div class="email_join_input1">
                        <div class="filebox">
                            <input class="upload-name upload-name5" id="id_img5" value="첨부파일" placeholder="첨부파일">
                            <label for="file5">파일찾기</label>
                            <input type="file" id="file5" name="img5">
                            <input type="hidden" name="img5_o" value="${product.img5}">
                        </div>
                    </div>
                </div>
                <div class="email_join_div">
                    <div class="email_join_text">상품 설명</div>
                    <div class="email_join_input1">
                        <div class="email_join_input2">
                            <input type="text" name="content" placeholder="상품 설명" class="email_join_input_String product_register_content" value="${product.content}">
                        </div>
                    </div>
                </div>
                <div class="email_join_div">
                    <div class="email_join_text">판매가</div>
                    <div class="email_join_input1">
                        <div class="email_join_input2">
                            <input type="number" name="price" placeholder="판매가" class="email_join_input_String product_register_price" value="${product.price}">
                        </div>
                    </div>
                </div>
                <div class="email_join_div">
                    <div class="email_join_text">재고</div>
                    <div class="email_join_input1">
                        <div class="email_join_input2 ">
                            <input type="number" name="cnt" placeholder="재고" class="email_join_input_String product_register_cnt" value="${product.cnt}">
                        </div>
                    </div>
                </div>

                <hr class="mb-3 mt-3">

                <div class="email_join_div">
                    <div class="email_join_text">상세선택</div>
                    <div class="email_join_input1">
                        <select name="select" id="select" class="email_join_input2 text-align-center">
                            <option selected disabled hidden value="none">=== 선택해주세요. ===</option>
                            <option value="cpu" <c:if test="${product.category == 'CPU'}"> selected </c:if> >CPU</option>
                            <option value="mb" <c:if test="${product.category == 'MotherBoard'}"> selected </c:if> >메인보드</option>
                            <option value="cooler" <c:if test="${product.category == 'Cooler'}"> selected </c:if> >쿨러</option>
                            <option value="ram" <c:if test="${product.category == 'RAM'}"> selected </c:if> >RAM</option>
                            <option value="vga" <c:if test="${product.category == 'VGA'}"> selected </c:if> >그래픽카드(VGA)</option>
                        </select>
                    </div>
                </div>

                <c:if test="${product.category == 'CPU'}">
                <!-- ======== CPU start ======== -->
                <%@include file="product_register_cpu.jsp"%>
                <!-- ======== CPU end ======== -->
                </c:if>

                <c:if test="${product.category == 'MotherBoard'}">
                <!-- ======== MotherBoard start ======== -->
                <%@include file="product_register_mb.jsp"%>
                <!-- ======== MotherBoard end ======== -->
                </c:if>

                <c:if test="${product.category == 'Cooler'}">
                <!-- ======== Cooler start ======== -->
                <%@include file="product_register_cooler.jsp"%>
                <!-- ======== Cooler end ======== -->
                </c:if>

                <c:if test="${product.category == 'RAM'}">
                <!-- ======== Ram start ======== -->
                <%@include file="product_register_ram.jsp"%>
                <!-- ======== Ram end ======== -->
                </c:if>

                <c:if test="${product.category == 'VGA'}">
                <!-- ======== VGA start ======== -->
                <%@include file="product_register_vga.jsp"%>
                <!-- ======== VGA end ======== -->
                </c:if>

                <hr>

                <div class="email_join_button">
                    <a type="button" onclick="registerCheck()" class="login_button email_join_button2">상품 수정</a>
                </div>
            </div>
        </form>
        <div class="footer_div">
            <p>Copyright © 2024. 김지우 All Rights Reserved.</p>
        </div>
    </div>
    <script type="text/javascript" src="/js/product.js"></script>
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            var select = "${product.category}";

            if (select === 'CPU') var selectedValue = "cpu";
            else if(select === 'MotherBoard') var selectedValue = "mb";
            else if(select === 'Cooler') var selectedValue = "cooler";
            else if(select === 'RAM') var selectedValue = "ram";
            else if(select === 'VGA') var selectedValue = "vga";

            var inputContainers = document.querySelectorAll('.input-container');

            inputContainers.forEach(function(container) { container.style.display = 'none'; });

            if (selectedValue) {document.getElementById(selectedValue).style.display = 'block'; }

            var img1 = "${product.img1}";
            var img2 = "${product.img2}";
            var img3 = "${product.img3}";
            var img4 = "${product.img4}";
            var img5 = "${product.img5}";

            var safeimg1 = img1.replace(/"/g, '\\"');
            var safeimg2 = img2.replace(/"/g, '\\"');
            var safeimg3 = img3.replace(/"/g, '\\"');
            var safeimg4 = img4.replace(/"/g, '\\"');
            var safeimg5 = img5.replace(/"/g, '\\"');
            if (safeimg1) {
                document.getElementById('id_img1').value = safeimg1;
            }
            if (safeimg2) {
                document.getElementById('id_img2').value = safeimg2;
            }
            if (safeimg3) {
                document.getElementById('id_img3').value = safeimg3;
            }
            if (safeimg4) {
                document.getElementById('id_img4').value = safeimg4;
            }
            if (safeimg5) {
                document.getElementById('id_img5').value = safeimg5;
            }
        });
    </script>
</body>
</html>