var check_id = 0;
var check_passwd = 0;
var check_passwd_one = 0;
var check_nick = 0;
var check_email1 = 0;
var check_email2 = 0;
var check_e_name = 0;
var check_c_name = 0;

function validateForm() {
    if ($('.Entreperneur').val() !== "1") {
        if (check_id == 1 && check_passwd == 1 && check_passwd_one == 1 && check_nick == 1 && check_email1 == 1 && check_email2 == 1) {
            $('.email_join_button2').css('background-color', '#a4c6de');
            $('.email_join_button2').prop('disabled', false);
        } else {
            $('.email_join_button2').css('background-color', 'grey');
            $('.email_join_button2').prop('disabled', true);
        }
    } else {
        if (check_id == 1 && check_passwd == 1 && check_passwd_one == 1 && check_email1 == 1 && check_email2 == 1 && check_e_name == 1 && check_c_name == 1) {
            $('.email_join_button2').css('background-color', '#a4c6de');
            $('.email_join_button2').prop('disabled', false);
        } else {
            $('.email_join_button2').css('background-color', 'grey');
            $('.email_join_button2').prop('disabled', true);
        }
    }
}

function validateInput($input, type) {
    var RegExp = /[\{\}\[\]\/?.,;:|\)*~`!^\-_+┼<>@\#$%&\'\"\\\(\=]/;
    var RegExp_w = /[\!\@\#\$\%\^\&\*]/;
    var RegExp_e = /[\{\}\[\]\/?.,;:|\)~`\-_+┼<>\'\"\\\(\=]/;

    var $contnet = $input.val();
    var err = "";

    $input.closest('.email_join_input2_' + type).css('border', '1px solid red');

    if (type === "id") {
        check_id = 0;
        if (($contnet.length < 4 || $contnet.length > 20) && $contnet.length > 0) {
            err = '최소 4자, 최대 20자입니다.';
        } else if (RegExp.test($contnet)) {
            err = '허용되지 않는 문자열이 포함되어 있습니다.';
        } else if (/[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/.test($contnet)) {
            err = '한글이 포함되어 있습니다.';
        } else if ($contnet.length == 0) {
            err = '아이디를 입력해 주세요.';
        } else {
            $.ajax({
                url: "/member/idCheck",
                type: "post",
                data: {"id": $contnet},
                success: function (res) {
                    if (res === "OK") {
                        check_id = 1;
                        $input.closest('.email_join_input2_id').css('border', '');
                        $('.email_join_err_String-id').text('');
                    } else {
                        $input.closest('.email_join_input2_id').css('border', '1px solid red');
                        $('.email_join_err_String-id').text('이미 사용중인 아이디입니다.');
                        check_id = 0;
                    }
                    validateForm();
                },
                error: function (err) {
                    console.log(err);
                }
            });
            return '';
        }
    } else if (type === "passwd") {
        check_passwd = 0;
        if ($contnet.length < 8 && $contnet.length > 0) {
            err = '너무 짧습니다. 최소 8자 이상 입력하세요.';
        } else if (!(/[a-z]/.test($contnet) && /[0-9]/.test($contnet) && RegExp_w.test($contnet))) {
            err = '영문과 숫자와 특수문자를 조합해서 입력해 주세요.';
        } else if (RegExp_e.test($contnet)) {
            err = '특수문자는 !, @, #, $, %, ^, &, * 만 가능합니다.';
        } else {
            if ($('.email_join_input_String-passwd-one').val() !== $contnet) {
                $('.email_join_input2_passwd-one').css('border', '1px solid red');
                $('.email_join_err_String-passwd-one').text('비밀번호가 일치하지 않습니다.');

                check_passwd_one = 0;
            }

            check_passwd = 1;
        }
    } else if (type === "passwd-one") {
        check_passwd_one = 0;
        if ($('.email_join_input_String-passwd').val() !== $contnet) {
            err = '비밀번호가 일치하지 않습니다.';
        } else {
            check_passwd_one = 1;
        }
    } else if (type === "nick" && $('.Entreperneur').val() !== "1") {
        check_nick = 0;
        if ($contnet.length < 2) {
            err = '최소 2자 이상입니다.';
        } else {
            check_nick = 1;
        }
    } else if (type === "email1") {
        check_email1 = 0;
        if ($contnet.length == 0) {
            err = '이메일을 입력해주세요.';
        } else {
            check_email1 = 1;
        }
    } else if (type === "email2") {
        check_email2 = 0;
        if ($contnet.length == 0) {
            err = '이메일을 입력해주세요.';
        } else {
            check_email2 = 1;
        }
    } else if ($('.Entreperneur').val() === "1") {
        if (type === "E_name") {
            check_e_name = 0;
            if ($contnet.length == 0) {
                err = '회사명을 입력해주세요.';
            } else {
                check_e_name = 1;
            }
        } else if (type === "C_name") {
            check_c_name = 0;
            if ($contnet.length == 0) {
                err = '대표자명을 입력해주세요.';
            } else {
                check_c_name = 1;
            }
        }
    }

    if (err !== "") {
        $input.closest('.email_join_input2_' + type).css('border', '1px solid red');
    } else {
        $input.closest('.email_join_input2_' + type).css('border', '');
    }

    validateForm();
    return err;
}

function x_Delete(inputSelector, uiElementSelector) {
    var input = document.querySelector(inputSelector)
    input.value = "";
    $(uiElementSelector).css("display", "none");
    $(input).trigger('input');

    var $type = $(inputSelector).attr('class').split(' ').find(cls => cls.startsWith('email_join_input_String-')).replace('email_join_input_String-', '');
    var $input = $(input);
    var error = validateInput($input, $type);
    $('.email_join_err_String-' + $type).text(error);
}

$(function() {
    function toggleVisibility(inputSelector, targetSelector) {
        $(inputSelector).on('input', function() {
            if($(inputSelector).val() === '') {
                $(targetSelector).css('display', 'none');
            } else {
                $(targetSelector).css('display', 'flex');
            }
        });
    }

    toggleVisibility('.email_join_input_String-id', '.email_join_input2_x-id');
    toggleVisibility('.email_join_input_String-passwd', '.email_join_input2_x-passwd');
    toggleVisibility('.email_join_input_String-passwd-one', '.email_join_input2_x-passwd-one');
    toggleVisibility('.email_join_input_String-nick', '.email_join_input2_x-nick');
    toggleVisibility('.email_join_input_String-email1', '.email_join_input2_x-email1');
    toggleVisibility('.email_join_input_String-email2', '.email_join_input2_x-email2');
    toggleVisibility('.email_join_input_String-E_name', '.email_join_input2_x-E_name');
    toggleVisibility('.email_join_input_String-C_name', '.email_join_input2_x-C_name');
});

$(document).ready(function() {
    $('input').on('focus', function() {
        $(this).closest('.email_join_input2').css('border', '1px solid blue');
    });

    $('input').on('blur', function() {
        var $type = $(this).attr('class').split(' ').find(cls => cls.startsWith('email_join_input_String-')).replace('email_join_input_String-', '');
        var $error = validateInput($(this), $type);
        $('.email_join_err_String-' + $type).text($error);
    });
});
