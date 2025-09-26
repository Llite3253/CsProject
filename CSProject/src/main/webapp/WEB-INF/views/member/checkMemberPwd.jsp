<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="/style/member.css">
    <link rel="stylesheet" href="/style/main.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" />
</head>
<body class="login_body">
    <div class="login_main">
        <div class="login_header">
            <div class="logo">
                <a class="logo-text" href="/">C.Shopping</a>
            </div>
            <div class="simple_join_logo">회원정보 수정</div>
        </div>
        <div>
            <form class="container" action="/member/information" method="post">
                <div class="login_container">
                    <div class="checkMemberPwd_title">
                        <h2>비밀번호 확인</h2><br>
                        <p>회원님의 정보를 보호하기 위해 비밀번호를 한 번 더 입력해주세요.</p>
                    </div>
                    <div class="checkMemberPwd_container">
                        <div class="checkMemberPwd_div">
                            <div class="checkMemberPwd_chk_txt">아이디</div>
                            <div class="checkMemberPwd_chk_info">${memberId }</div>
                            <input type="hidden" name="id" value="${memberId}"/>
                        </div>
                        <div class="checkMemberPwd_div checkMemberPwd_div2">
                            <div class="checkMemberPwd_chk_txt">비밀번호</div>
                            <div class="checkMemberPwd_chk_info">
                                <input type="password" name="password" class="checkMemberPwd_String_passwd checkMemberPwd_input"/>
                            </div>
                        </div>
                        <div class="checkMemberPwd_div2" >
                        <c:if test="${!empty err }">
                            <div class="login_err_String">${err}</div>
                        </c:if>
                        </div>
                    </div>
                    <div class="checkMemberPwd_div_btn">
                        <a class="checkMemberPwd_btn checkMemberPwd_btn_color" href="/">취소</a>
                        <button class="checkMemberPwd_btn" type="submit">확인</button>
                    </div>
                </div>
            </form>
        </div>
        <div class="footer_div">
            <p>Copyright © 2024. 김지우 All Rights Reserved.</p>
        </div>
    </div>
    <script type="text/javascript" src="/js/login.js"></script>
</body>
</html>
