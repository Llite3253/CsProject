function idSave() {
    var input_idSave = document.querySelector('.login_input2_button');
    var input_img = document.querySelector('.login_save_img');
    var idcheck = document.querySelector("#idSave");
    if (idcheck.value == "false") {
        input_idSave.style.color = '#2070eb';
        idcheck.value = "true";
        input_img.src = '/img/login/lock_ok.png';
    } else {
        input_idSave.style.color = '#808080';
        idcheck.value = "false";
        input_img.src = '/img/login/lock.png';
    }
}

function x_Delete(inputSelector, uiElementSelector) {
    var input = document.querySelector(inputSelector)
    input.value = "";
    $(uiElementSelector).css("display", "none");
    $(input).trigger('input');
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

    toggleVisibility('.login_input_String', '.login_input2_x');
    toggleVisibility('.login_input_String_passwd', '.login_input2_x_passwd');
});