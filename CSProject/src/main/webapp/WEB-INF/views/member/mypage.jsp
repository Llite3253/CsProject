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
<div class="modifyMember_main">
    <div class="login_header">
        <div class="logo">
            <a class="logo-text" href="/">C.Shopping</a>
        </div>
        <div class="simple_join_logo">마이페이지</div>
    </div>
    <form action="/member/modifyMember" method="post">
        <div class="modifyMember_wrap">
            <div class="modifyMember_area">
                <fieldset class="modifyMember_fieldest">
                    <div>
                        <dl class="modifyMember_row">
                            <dt class="modifyMember_title">아이디</dt>
                            <dd class="modifyMember_cont">${Member.id}</dd>
                        </dl>
                        <dl class="modifyMember_row modifyMember_row2">
                            <dt class="modifyMember_title">이메일</dt>
                            <dd class="modifyMember_cont">${Member.email}</dd>
                        </dl>
                        <c:if test="${empty option }">
                            <dl class="modifyMember_row modifyMember_row2">
                                <dt class="modifyMember_title">닉네임</dt>
                                <dd class="modifyMember_cont">${Member.nick_name}</dd>
                            </dl>
                        </c:if>
                    </div>
                </fieldset>
            </div>
        </div>
    </form>
    <div class="footer_div">
        <p>Copyright © 2024. 김지우 All Rights Reserved.</p>
    </div>
</div>
<script type="text/javascript" src="/js/login.js"></script>
</body>
</html>
