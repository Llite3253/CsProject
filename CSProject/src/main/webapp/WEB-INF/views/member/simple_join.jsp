<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="/style/member.css">
    <link rel="stylesheet" href="/style/main.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" />
</head>
<body class="simple_join_body">
    <div class="simple_join_main">
        <div class="simple_join_header">
            <div class="logo">
                <a class="logo-text" href="/main">C.Shopping</a>
            </div>
            <div class="simple_join_logo">회원가입</div>
        </div>
        <div class="simple_join_container">
            <div>
                <p class="simple_join_text1">간편 회원가입</p>
                <p class="simple_join_text2">자주 사용하는 정보로 간편하게 사입할 수 있습니다.</p>
            </div>
            <div class="simple_join_box">
                <div class="simple_join_box2">
                    <div class="simple_join_row simple_join_row_kakao">
                        <a href="" class="simple_join_select_box">
                            <div class="simple_join_img_box simple_join_img_kakao">
                                <img src="/img/login/kakao.png">
                            </div>
                            <div class="simple_join_text_box">
                                카카오로 가입하기
                            </div>
                        </a>
                    </div>
                    <div class="simple_join_row simple_join_row_naver">
                        <a href="" class="simple_join_select_box">
                            <div class="simple_join_img_box simple_join_img_naver">
                                <img src="/img/login/naver.png">
                            </div>
                            <div class="simple_join_text_box">
                                네이버로 가입하기
                            </div>
                        </a>
                    </div>
                    <div class="simple_join_row simple_join_row_email">
                        <a href="/member/email_join" class="simple_join_select_box">
                            <div class="simple_join_img_box simple_join_img_email">
                                <img src="/img/login/email.png">
                            </div>
                            <div class="simple_join_text_box">
                                이메일로 가입하기
                            </div>
                        </a>
                    </div>
                </div>
                <hr>
                <div class="simple_join_row simple_join_row_entrepreneur">
                    <a href="/member/entrepreneur_join" class="simple_join_select_box">
                        <div class="simple_join_img_box simple_join_img_entrepreneur">
                            <img src="/img/login/entrepreneur.png">
                        </div>
                        <div class="simple_join_text_box">
                            사업자 회원이신가요?
                        </div>
                    </a>
                </div>
            </div>
        </div>
        <div class="footer_div">
            <p>Copyright © 2024. 김지우 All Rights Reserved.</p>
        </div>
    </div>
    <script type="text/javascript" src="/js/login.js"></script>
</body>
</html>