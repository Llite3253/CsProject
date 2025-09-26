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
            <div class="simple_join_logo">회원정보 수정</div>
        </div>
        <form action="/member/modifyMember" method="post">
            <div class="modifyMember_wrap">
                <div class="modifyMember_area">
                    <fieldset class="modifyMember_fieldest">
                        <div>
                            <dl class="modifyMember_row">
                                <dt class="modifyMember_title">아이디</dt>
                                <dd class="modifyMember_cont">${Member.id}</dd>
                                <input type="hidden" name="id" value="${Member.id}">
                            </dl>
                            <dl class="modifyMember_row modifyMember_row2">
                                <dt class="modifyMember_title">비밀번호</dt>
                                <dd class="modifyMember_cont">${Member.password}</dd>
                                <input type="hidden" name="password" value="${Member.password}">
                            </dl>
                            <dl class="modifyMember_row modifyMember_row2">
                                <dt class="modifyMember_title">
                                    <label class="modifyMember_exec">
                                        이메일 주소
                                    </label>
                                </dt>
                                <dd class="modifyMember_cont">
                                    <div class="modifyMember_input1">
                                        <div class="modifyMember_input2">
                                            <input type="text" name="email" class="login_input_String_passwd" value="${Member.email}"/>
                                        </div>
                                    </div>
                                    <p></p>
                                    <div class="modifyMember_p">
                                        <p>- 아이디나 비밀번호 찾기 시 필요하므로 정확하게 입력해주세요.</p>
                                    </div>
                                </dd>
                            </dl>
                            <c:if test="${empty option}">
                                <dl class="modifyMember_row modifyMember_row2">
                                    <dt class="modifyMember_title">
                                        <label class="modifyMember_exec">
                                            닉네임
                                        </label>
                                    </dt>
                                    <dd class="modifyMember_cont">
                                        <div class="modifyMember_input1">
                                            <div class="modifyMember_input2">
                                                <input type="text" name="nick_name" class="login_input_String_passwd" value="${Member.nick_name}"/>
                                            </div>
                                        </div>
                                    </dd>
                                </dl>
                            </c:if>
                            <c:if test="${!empty option}">
                                <dl class="modifyMember_row modifyMember_row2">
                                    <dt class="modifyMember_title">
                                        <label class="modifyMember_exec">
                                            회사명
                                        </label>
                                    </dt>
                                    <dd class="modifyMember_cont">
                                        <div class="modifyMember_input1">
                                            <div class="modifyMember_input2">
                                                <input type="text" name="entrepreneur_name" class="login_input_String_passwd" value="${Member.entrepreneur_name}"/>
                                            </div>
                                        </div>
                                    </dd>
                                </dl>
                                <dl class="modifyMember_row modifyMember_row2">
                                    <dt class="modifyMember_title">
                                        <label class="modifyMember_exec">
                                            대표자명
                                        </label>
                                    </dt>
                                    <dd class="modifyMember_cont">
                                        <div class="modifyMember_input1">
                                            <div class="modifyMember_input2">
                                                <input type="text" name="company_name" class="login_input_String_passwd" value="${Member.company_name}"/>
                                            </div>
                                        </div>
                                    </dd>
                                </dl>
                            </c:if>
                        </div>
                    </fieldset>
                </div>
                <div class="modifyMember_btn">
                    <a href="/member/delete" class="modifyMember_leave_btn">탈퇴하기</a>
                </div>
                <div class="modifyMember_btn_wrap">
                    <a class="checkMemberPwd_btn checkMemberPwd_btn_color" href="/">취소</a>
                    <button class="checkMemberPwd_btn" type="submit">확인</button>
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
