<%@ page language="java" contentType="text/html;charset=utf-8"%>
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
            <div class="simple_join_logo">상품 등록</div>
        </div>
        <form class="container" name="f" action="/product/registration" method="post" enctype="multipart/form-data">
            <div class="simple_join_container">
                <div class="email_join_div">
                    <div class="email_join_text">상품명</div>
                    <div class="email_join_input1">
                        <div class="email_join_input2">
                            <input type="text" name="name" placeholder="상품명" class="email_join_input_String product_register_name">
                        </div>
                    </div>
                </div>
                <div class="email_join_div">
                    <div class="email_join_text">대표 이미지 선택 (필수)</div>
                    <div class="email_join_input1">
                        <div class="filebox">
                            <input class="upload-name upload-name1" value="첨부파일" placeholder="첨부파일">
                            <label for="file1">파일찾기</label>
                            <input type="file" class="product_register_img1" id="file1" name="img1">
                        </div>
                    </div>
                </div>
                <div class="email_join_div">
                    <div class="email_join_text">이미지 선택 1</div>
                    <div class="email_join_input1">
                        <div class="filebox">
                            <input class="upload-name upload-name2" value="첨부파일" placeholder="첨부파일">
                            <label for="file2">파일찾기</label>
                            <input type="file" id="file2" name="img2">
                        </div>
                    </div>
                </div>
                <div class="email_join_div">
                    <div class="email_join_text">이미지 선택 2</div>
                    <div class="email_join_input1">
                        <div class="filebox">
                            <input class="upload-name upload-name3" value="첨부파일" placeholder="첨부파일">
                            <label for="file3">파일찾기</label>
                            <input type="file" id="file3" name="img3">
                        </div>
                    </div>
                </div>
                <div class="email_join_div">
                    <div class="email_join_text">이미지 선택 3</div>
                    <div class="email_join_input1">
                        <div class="filebox">
                            <input class="upload-name upload-name4" value="첨부파일" placeholder="첨부파일">
                            <label for="file4">파일찾기</label>
                            <input type="file" id="file4" name="img4">
                        </div>
                    </div>
                </div>
                <div class="email_join_div">
                    <div class="email_join_text">이미지 선택 4</div>
                    <div class="email_join_input1">
                        <div class="filebox">
                            <input class="upload-name upload-name5" value="첨부파일" placeholder="첨부파일">
                            <label for="file5">파일찾기</label>
                            <input type="file" id="file5" name="img5">
                        </div>
                    </div>
                </div>
                <div class="email_join_div">
                    <div class="email_join_text">상품 설명</div>
                    <div class="email_join_input1">
                        <div class="email_join_input2">
                            <input type="text" name="content" placeholder="상품 설명" class="email_join_input_String product_register_content">
                        </div>
                    </div>
                </div>
                <div class="email_join_div">
                    <div class="email_join_text">판매가</div>
                    <div class="email_join_input1">
                        <div class="email_join_input2">
                            <input type="number" name="price" placeholder="판매가" class="email_join_input_String product_register_price">
                        </div>
                    </div>
                </div>
                <div class="email_join_div">
                    <div class="email_join_text">재고</div>
                    <div class="email_join_input1">
                        <div class="email_join_input2 ">
                            <input type="number" name="cnt" placeholder="재고" class="email_join_input_String product_register_cnt">
                        </div>
                    </div>
                </div>


                <hr class="mb-3 mt-3">

                <div class="email_join_div">
                    <div class="email_join_text">상세선택</div>
                    <div class="email_join_input1">
                        <select name="select" id="select" class="email_join_input2 text-align-center">
                            <option selected disabled hidden value="none">=== 선택해주세요. ===</option>
                            <option value="cpu">CPU</option>
                            <option value="mb">메인보드</option>
                            <option value="cooler">쿨러</option>
                            <option value="ram">RAM</option>
                            <option value="vga">그래픽카드(VGA)</option>
                        </select>
                    </div>
                </div>

                <!-- ======== CPU start ======== -->
                <%@include file="product_register_cpu.jsp"%>
                <!-- ======== CPU end ======== -->

                <!-- ======== MotherBoard start ======== -->
                <%@include file="product_register_mb.jsp"%>
                <!-- ======== MotherBoard end ======== -->

                <!-- ======== Cooler start ======== -->
                <%@include file="product_register_cooler.jsp"%>
                <!-- ======== Cooler end ======== -->

                <!-- ======== Ram start ======== -->
                <%@include file="product_register_ram.jsp"%>
                <!-- ======== Ram end ======== -->

                <!-- ======== GraphicCard start ======== -->
                <%@include file="product_register_vga.jsp"%>
                <!-- ======== GraphicCard end ======== -->

                <hr>

                <div class="email_join_button">
                    <a type="button" onclick="registerCheck()" class="login_button email_join_button2">상품 등록</a>
                </div>
            </div>
        </form>
        <div class="footer_div">
            <p>Copyright © 2024. 김지우 All Rights Reserved.</p>
        </div>
    </div>
    <script type="text/javascript" src="/js/product.js"></script>
</body>
</html>