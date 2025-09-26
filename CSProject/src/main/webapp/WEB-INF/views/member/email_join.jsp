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
                <a class="logo-text" href="/">C.Shopping</a>
            </div>
            <div class="simple_join_logo">회원가입</div>
        </div>
        <form class="container" action="/member/email_join" method="post">
            <div class="simple_join_container">
                <div class="email_join_div">
                    <div class="email_join_text">아이디</div>
                    <div class="email_join_input1">
                        <div class="email_join_input2 email_join_input2_id">
                            <input type="text" name="id" placeholder="영문 4자 이상, 최대 20자" class="email_join_input_String email_join_input_String-id">
                            <a onclick="x_Delete('.email_join_input_String-id', '.email_join_input2_x-id')" class="email_join_input2_x email_join_input2_x-id"><img src="/img/login/x.png" class="email_join_input_img"></a>
                        </div>
                    </div>
                    <div class="email_join_err_String email_join_err_String-id"></div>
                </div>
                <div class="email_join_div">
                    <div class="email_join_text">비밀번호</div>
                    <div class="email_join_input1">
                        <div class="email_join_input2 email_join_input2_passwd">
                            <input type="password" name="password" placeholder="숫자, 영문, 특수문자 포함 최소 8자 이상" class="email_join_input_String email_join_input_String-passwd"/>
                            <a onclick="x_Delete('.email_join_input_String-passwd', '.email_join_input2_x-passwd')" class="email_join_input2_x email_join_input2_x-passwd"><img src="/img/login/x.png" class="email_join_input_img"></a>
                        </div>
                    </div>
                    <div class="email_join_err_String email_join_err_String-passwd"></div>
                </div>
                <div class="email_join_div">
                    <div class="email_join_text">비밀번호 확인</div>
                    <div class="email_join_input1">
                        <div class="email_join_input2 email_join_input2_passwd-one">
                            <input type="password" name="passwordCheck" placeholder="비밀번호 한 번 더 입력" class="email_join_input_String email_join_input_String-passwd-one"/>
                            <a onclick="x_Delete('.email_join_input_String-passwd-one', '.email_join_input2_x-passwd-one')" class="email_join_input2_x email_join_input2_x-passwd-one"><img src="/img/login/x.png" class="email_join_input_img"></a>
                        </div>
                    </div>
                    <div class="email_join_err_String email_join_err_String-passwd-one"></div>
                </div>
                <div class="email_join_div">
                    <div class="email_join_text">닉네임</div>
                    <div class="email_join_input1">
                        <div class="email_join_input2 email_join_input2_nick">
                            <input type="text" name="nick_name" placeholder="2자 이상" class="email_join_input_String email_join_input_String-nick"/>
                            <a onclick="x_Delete('.email_join_input_String-nick', '.email_join_input2_x-nick')" class="email_join_input2_x email_join_input2_x-nick"><img src="/img/login/x.png" class="email_join_input_img"></a>
                        </div>
                    </div>
                    <div class="email_join_err_String email_join_err_String-nick"></div>
                </div>
                <div class="email_join_div">
                    <div class="email_join_text">이메일 주소</div>
                    <div class="email_join_email_input_box">
                        <div class="email_join_email_input1">
                            <div class="email_join_email_input2 email_join_input2_email1">
                                <input type="text" name="email1" placeholder="이메일 주소 입력" class="email_join_input_String email_join_input_String-email1"/>
                                <a onclick="x_Delete('.email_join_input_String-email1', '.email_join_input2_x-email1')" class="email_join_input2_x email_join_input2_x-email1"><img src="/img/login/x.png" class="email_join_input_img"></a>
                            </div>
                        </div>
                        <div class="email_join_email_input_text">@</div>
                        <div class="email_join_email_input1_2">
                            <div class="email_join_email_input2 email_join_input2_email2">
                                <input type="text" name="email2" placeholder="이메일 주소 입력" class="email_join_input_String email_join_input_String-email2"/>
                                <a onclick="x_Delete('.email_join_input_String-email2', '.email_join_input2_x-email2')" class="email_join_input2_x email_join_input2_x-email2"><img src="/img/login/x.png" class="email_join_input_img"></a>
                            </div>
                        </div>
                    </div>
                    <div>아이디/비밀번호 찾기 시 사용되니 정확한 이메일을 입력해주세요.</div>
                    <div class="email_join_err_String email_join_err_String-email"></div>
                </div>
                <hr>
                <div class="email_join_button">
                    <button type="submit" disabled='disabled' class="login_button email_join_button2">회원가입</button>
                </div>
            </div>
        </form>
        <div class="footer_div">
            <p>Copyright © 2024. 김지우 All Rights Reserved.</p>
        </div>
    </div>
    <script type="text/javascript" src="/js/login.js"></script>
    <script type="text/javascript" src="/js/joinCheck.js"></script>
</body>
</html>