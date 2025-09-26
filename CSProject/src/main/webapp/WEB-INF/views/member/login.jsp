<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="/style/member.css">
    <link rel="stylesheet" href="/style/main.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" />
</head>
<body class="login_body">
    <div class="login_main">
        <div class="login_header">
            <div class="logo">
                <a class="logo-text" href="/">C.Shopping</a>
            </div>
        </div>
        <div>
            <form class="container" action="/member/login" method="post">
                <div class="login_container">
                    <div class="login_select_area">
                        <div class="login_check_area">
                            <input type="checkbox" id="login_check" />
                            <label for="login_check">로그인 상태 유지</label>
                        </div>
                        <div class="login_rdo_area">
                            <ul>
                                <li class="login_rdo_li1">
                                    <input type="radio" checked="checked" name="option" value="0"/>
                                    <label>일반회원</label>
                                </li>
                                <li class="login_rdo_li2">
                                    <input type="radio" name="option" value="1"/>
                                    <label>판매자회원</label>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="login_input1">
                        <div class="login_input2">
                            <input type="text" name="id" placeholder="아이디" class="login_input_String"/>
                            <a onclick="x_Delete('.login_input_String', '.login_input2_x')" class="login_input2_x"><img src="/img/login/x.png" class="login_input_img"></a>
                            <a onclick="idSave()" class="login_input2_button"><img src="/img/login/lock.png" class="login_save_img">저장</a>
                            <input type="hidden" value="false" id="idSave"/>
                        </div>
                    </div>
                    <div class="login_input1">
                        <div class="login_input2">
                            <input type="password" name="password" placeholder="비밀번호" class="login_input_String_passwd"/>
                            <a onclick="x_Delete('.login_input_String_passwd', '.login_input2_x_passwd')" class="login_input2_x_passwd"><img src="/img/login/x.png" class="login_input_img"></a>
                        </div>
                    </div>
                    <c:if test="${!empty err }">
                        <div class="login_err_String">${err}</div>
                    </c:if>
                    <button class="login_button" type="submit">로그인</button>
                    <div class="menu_area">
                        <ul>
                            <li>
                                <a href="">아이디 찾기</a>
                            </li>
                            <li>
                                <a href="">비밀번호 찾기</a>
                            </li>
                            <li>
                                <a href="/member/simple_join">회원가입</a>
                            </li>
                        </ul>
                    </div>
                    <div class="platform_area">
                        <div class="platform_area_select">
                            <a href="">
                                <div><img src="/img/login/naver.png"></div>
                                <span>네이버 로그인</span>
                            </a>
                        </div>
                        <div class="platform_area_select">
                            <a onclick="kakaoLogin()">
                                <div><img src="/img/login/kakao.png"></div>
                                <span>카카오 로그인</span>
                            </a>
                        </div>
                    </div>
                </div>
            </form>
        </div>
        <div class="footer_div">
            <p>Copyright © 2024. 김지우 All Rights Reserved.</p>
        </div>
    </div>
    <script type="text/javascript" src="/js/login.js"></script>
    <script type='text/javascript'>
        function kakaoLogin() {
            Kakao.init('94ccecb6281b9963d1ba0dcd750db039');
            Kakao.Auth.login({
                success: function () {
                    Kakao.API.request({
                        url: '/v2/user/me',
                        success: function (response) {
                            console.log(response)
                        },
                        fail: function (error) { console.log(error) },
                    })
                },
                fail: function (error) {
                    console.log(error)
                },
            })
        }
    </script>
</body>
</html>