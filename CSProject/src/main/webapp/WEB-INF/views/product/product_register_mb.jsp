<%@ page language="java" contentType="text/html;charset=utf-8"%>
<div id="mb" class="input-container">
    <div class="email_join_div">
        <div class="email_join_text">제조사</div>
        <div class="email_join_input1">
            <select name="manufacturer" id="mb_select" class="email_join_input2 text-align-center">
                <option selected disabled hidden value="none">=== 선택해주세요. ===</option>
                <option value="GIGABYTE">GIGABYTE</option>
                <option value="MSI">MSI</option>
                <option value="ASUS">ASUS</option>
                <option value="ASRock">ASRock</option>
                <option value="BIOSTAR">BIOSTAR</option>
            </select>
        </div>
    </div>

    <div class="email_join_div">
        <div class="email_join_text">CPU 소켓</div>
        <div class="email_join_input1">
            <select name="socket" id="mb_cpu_socket_select" class="email_join_input2 text-align-center">
                <option selected disabled hidden value="none">=== 선택해주세요. ===</option>
                <option disabled label="==인텔=="></option>
                <option disabled value="none"></option>
                <option value="인텔(소켓1700)">인텔(소켓1700)</option>
                <option disabled value="none"></option>
                <option disabled label="==AMD=="></option>
                <option disabled value="none"></option>
                <option value="AMD(소켓AM5)">AMD(소켓AM5)</option>
                <option value="AMD(소켓AM4)">AMD(소켓AM4</option>
                <option disabled value="none"></option>
            </select>
        </div>
    </div>

    <div class="email_join_div">
        <div class="email_join_text">세부 칩셋</div>
        <div class="email_join_input1">
            <select name="detailed_chipset" id="mb_detailed_chipset_select" class="email_join_input2 text-align-center">
                <option selected disabled hidden value="none">=== 선택해주세요. ===</option>
                <option disabled label="==인텔=="></option>
                <option disabled value="none"></option>
                <option value="인텔 Z79">인텔 Z790</option>
                <option value="인텔 B760">인텔 B760</option>
                <option value="인텔 Z690">인텔 Z690</option>
                <option value="인텔 B660">인텔 B660</option>
                <option value="인텔 H610">인텔 H610</option>
                <option disabled value="none"></option>
                <option disabled label="==AMD=="></option>
                <option disabled value="none"></option>
                <option value="AMD X670E">AMD X670E</option>
                <option value="AMD B650E">AMD B650E</option>
                <option value="AMD B650">AMD B650</option>
                <option value="AMD A620">AMD A620</option>
                <option value="AMD B550">AMD B550</option>
            </select>
        </div>
    </div>

    <div class="email_join_div">
        <div class="email_join_text">폼팩터</div>
        <div class="email_join_input1">
            <select name="form_factor" id="mb_form_factor_select" class="email_join_input2 text-align-center">
                <option selected disabled hidden value="none">=== 선택해주세요. ===</option>
                <option value="ATX">ATX (30.5x24.4cm)</option>
                <option value="M-ATX">M-ATX (24.4x24.4cm)</option>
                <option value="M-iTX">M-iTX (17.0x17.0cm)</option>
                <option value="E-ATX">E-ATX (30.5x33.0cm)</option>
            </select>
        </div>
    </div>

    <div class="email_join_div">
        <div class="email_join_text">메모리 종류</div>
        <div class="email_join_input1">
            <select name="memory_type" id="mb_memory_type_select" class="email_join_input2 text-align-center">
                <option selected disabled hidden value="none">=== 선택해주세요. ===</option>
                <option value="DDR5">DDR5</option>
                <option value="DDR4">DDR4</option>
            </select>
        </div>
    </div>

    <div class="email_join_div">
        <div class="email_join_text">메모리 슬롯</div>
        <div class="email_join_input1">
            <select name="memory_slots" id="mb_memory_slots_select" class="email_join_input2 text-align-center">
                <option selected disabled hidden value="none">=== 선택해주세요. ===</option>
                <option value="4">4개</option>
                <option value="2">2개</option>
            </select>
        </div>
    </div>

    <div class="email_join_div">
        <div class="email_join_text">M.2</div>
        <div class="email_join_input1">
            <select name="m2" id="mb_m2_select" class="email_join_input2 text-align-center">
                <option selected disabled hidden value="none">=== 선택해주세요. ===</option>
                <option value="5">5개</option>
                <option value="4">4개</option>
                <option value="3">3개</option>
                <option value="2">2개</option>
                <option value="1">1개</option>
            </select>
        </div>
    </div>
</div>

<script>
    document.addEventListener('DOMContentLoaded', function() {
        var mb_select = "${product_info.manufacturer}";
        if(mb_select) document.getElementById('mb_select').value = mb_select;

        var mb_cpu_socket_select = "${product_info.socket}";
        if(mb_cpu_socket_select) document.getElementById('mb_cpu_socket_select').value = mb_cpu_socket_select;

        var mb_detailed_chipset_select = "${product_info.detailed_chipset}";
        if(mb_detailed_chipset_select) document.getElementById('mb_detailed_chipset_select').value = mb_detailed_chipset_select;

        var mb_form_factor_select = "${product_info.form_factor}";
        if(mb_form_factor_select) document.getElementById('mb_form_factor_select').value = mb_form_factor_select;

        var mb_memory_type_select = "${product_info.memory_type}";
        if(mb_memory_type_select) document.getElementById('mb_memory_type_select').value = mb_memory_type_select;

        var mb_memory_slots_select = "${product_info.memory_slots}";
        if(mb_memory_slots_select) document.getElementById('mb_memory_slots_select').value = mb_memory_slots_select;

        var mb_m2_select = "${product_info.m2}";
        if(mb_m2_select) document.getElementById('mb_m2_select').value = mb_m2_select;
    });
</script>