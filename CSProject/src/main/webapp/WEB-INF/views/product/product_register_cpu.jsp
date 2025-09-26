<%@ page language="java" contentType="text/html;charset=utf-8"%>
<div id="cpu" class="input-container">
    <div class="email_join_div">
        <div class="email_join_text">제조사</div>
        <div class="email_join_input1">
            <select name="manufacturer" id="cpu_select" class="email_join_input2 text-align-center" >
                <option selected disabled hidden value="none">=== 선택해주세요. ===</option>
                <option value="인텔">인텔</option>
                <option value="AMD">AMD</option>
            </select>
        </div>
    </div>

    <div class="email_join_div">
        <div class="email_join_text">CPU 종류</div>
        <div class="email_join_input1">
            <select name="type" id="cpu_type_select" class="email_join_input2 text-align-center">
                <option selected disabled hidden value="none">=== 선택해주세요. ===</option>
                <option disabled label="==인텔=="></option>
                <option disabled value="none"></option>
                <option disabled label="-14세대-"></option>
                <option value="i9-14">코어i9-14세대</option>
                <option value="i7-14">코어i7-14세대</option>
                <option value="i5-14">코어i5-14세대</option>
                <option value="i3-14">코어i3-14세대</option>
                <option disabled value="none"></option>
                <option disabled label="-13세대-"></option>
                <option value="i9-13">코어i9-13세대</option>
                <option value="i7-13">코어i7-13세대</option>
                <option value="i5-13">코어i5-13세대</option>
                <option value="i3-13">코어i3-13세대</option>
                <option disabled value="none"></option>
                <option disabled label="==AMD==">
                <option disabled value="none"></option>
                <option disabled label="-5세대-"></option>
                <option value="9-5">라이젠9-5세대</option>
                <option value="7-5">라이젠7-5세대</option>
                <option value="5-5">라이젠5-5세대</option>
                <option disabled value="none"></option>
                <option disabled label="-4세대-"></option>
                <option value="9-4">라이젠9-4세대</option>
                <option value="7-4">라이젠7-4세대</option>
                <option value="5-4">라이젠5-4세대</option>
            </select>
        </div>
    </div>

    <div class="email_join_div">
        <div class="email_join_text">소켓</div>
        <div class="email_join_input1">
            <select name="socket" id="cpu_socket_select" class="email_join_input2 text-align-center">
                <option selected disabled hidden value="none">=== 선택해주세요. ===</option>
                <option disabled label="==인텔=="></option>
                <option disabled value="none"></option>
                <option value="인텔(소켓1700)">인텔(소켓1700)</option>
                <option disabled value="none"></option>
                <option disabled label="==AMD=="></option>
                <option disabled value="none"></option>
                <option value="AMD(소켓AM5)">AMD(소켓AM5)</option>
                <option value="AMD(소켓AM4)">AMD(소켓AM4)</option>
                <option disabled value="none"></option>
            </select>
        </div>
    </div>

    <div class="email_join_div">
        <div class="email_join_text">코어 수</div>
        <div class="email_join_input1">
            <select name="core" id="cpu_core_select" class="email_join_input2 text-align-center">
                <option selected disabled hidden value="none">=== 선택해주세요. ===</option>
                <option value="24">24코어</option>
                <option value="P8+E16">P8+E16코어</option>
                <option value="20">20코어</option>
                <option value="P8+E12">P8+E12코어</option>
                <option value="16">16코어</option>
                <option value="P8+E8">P8+E8코어</option>
                <option value="14">14코어</option>
                <option value="P6+E8">P6+E8코어</option>
                <option value="10">10코어</option>
                <option value="P6+E4">P6+E4코어</option>
                <option value="8">8코어</option>
                <option value="6">6코어</option>
                <option value="4">4코어</option>
                <option value="P4">P4코어</option>
            </select>
        </div>
    </div>

    <div class="email_join_div">
        <div class="email_join_text">스레드 수</div>
        <div class="email_join_input1">
            <select name="thread" id="cpu_thread_select" class="email_join_input2 text-align-center">
                <option selected disabled hidden value="none">=== 선택해주세요. ===</option>
                <option value="32">32스레드</option>
                <option value="16+16">16+16스레드</option>
                <option value="28">28스레드</option>
                <option value="16+12">16+12스레드</option>
                <option value="24">24스레드</option>
                <option value="16+8">16+8스레드</option>
                <option value="20">20스레드</option>
                <option value="12+8">12+8스레드</option>
                <option value="16">16스레드</option>
                <option value="12+4">12+4스레드</option>
                <option value="12">12스레드</option>
                <option value="8">8스레드</option>
            </select>
        </div>
    </div>
</div>

<script>
    document.addEventListener('DOMContentLoaded', function() {
        var cpu_select = "${product_info.manufacturer}";
        if(cpu_select) document.getElementById('cpu_select').value = cpu_select;

        var cpu_type_select = "${product_info.type}";
        if(cpu_type_select) document.getElementById('cpu_type_select').value = cpu_type_select;

        var cpu_socket_select = "${product_info.socket}";
        if(cpu_socket_select) document.getElementById('cpu_socket_select').value = cpu_socket_select;

        var cpu_core_select = "${product_info.core}";
        if(cpu_core_select) document.getElementById('cpu_core_select').value = cpu_core_select;

        var cpu_thread_select = "${product_info.thread}";
        if(cpu_thread_select) document.getElementById('cpu_thread_select').value = cpu_thread_select;
    });
</script>