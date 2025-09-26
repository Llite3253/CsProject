<%@ page language="java" contentType="text/html;charset=utf-8"%>
<div id="cooler" class="input-container">
    <div class="email_join_div">
        <div class="email_join_text">제조사</div>
        <div class="email_join_input1">
            <select name="manufacturer" id="c_select" class="email_join_input2 text-align-center">
                <option selected disabled hidden value="none">=== 선택해주세요. ===</option>
                <option value="3RSYS">3RSYS</option>
                <option value="DEEPCOOL">DEEPCOOL</option>
                <option value="NZXT">NZXT</option>
                <option value="Thermalright">Thermalright</option>
                <option value="PCCOOLER">PCCOOLER</option>
                <option value="쿨러마스터">쿨러마스터</option>
                <option value="ARCTIC">ARCTIC</option>
                <option value="darkFlash">darkFlash</option>
                <option value="잘만">잘만</option>
                <option value="발키리">발키리</option>
            </select>
        </div>
    </div>

    <div class="email_join_div">
        <div class="email_join_text">냉각 방식</div>
        <div class="email_join_input1">
            <select name="cooling_system" id="c_cooling_system_select" class="email_join_input2 text-align-center">
                <option selected disabled hidden value="none">=== 선택해주세요. ===</option>
                <option value="공랭">공랭</option>
                <option value="수랭">수랭</option>
            </select>
        </div>
    </div>

    <div class="email_join_div">
        <div class="email_join_text">높이</div>
        <div class="email_join_input1">
            <div class="email_join_input2">
                <input type="number" name="height" id="c_height_select" placeholder="높이를 입력해주세요." class="email_join_input_String product_register_name">
            </div>
        </div>
    </div>

    <div class="email_join_div">
        <div class="email_join_text">라디에이터</div>
        <div class="email_join_input1">
            <select name="radiator" id="c_radiator_select" class="email_join_input2 text-align-center">
                <option selected disabled hidden value="none">=== 선택해주세요. ===</option>
                <option value="4">4열</option>
                <option value="3">3열</option>
                <option value="2">2열</option>
                <option value="1">1열</option>
                <option value="0">없음</option>
            </select>
        </div>
    </div>

    <div class="email_join_div">
        <div class="email_join_text">팬 크기</div>
        <div class="email_join_input1">
            <select name="fan_size" id="c_fan_size_select" class="email_join_input2 text-align-center">
                <option selected disabled hidden value="none">=== 선택해주세요. ===</option>
                <option value="150">150mm 이상</option>
                <option value="140">140mm</option>
                <option value="136">136mm</option>
                <option value="135">135mm</option>
                <option value="130">130mm</option>
                <option value="120">120mm</option>
            </select>
        </div>
    </div>
</div>

<script>
    document.addEventListener('DOMContentLoaded', function() {
        var c_select = "${product_info.manufacturer}";
        if(c_select) document.getElementById('c_select').value = c_select;

        var c_cooling_system_select = "${product_info.cooling_system}";
        if(c_cooling_system_select) document.getElementById('c_cooling_system_select').value = c_cooling_system_select;

        var c_height_select = "${product_info.height}";
        if(c_height_select) document.getElementById('c_height_select').value = c_height_select;

        var c_radiator_select = "${product_info.radiator}";
        if(c_radiator_select) document.getElementById('c_radiator_select').value = c_radiator_select;

        var c_fan_size_select = "${product_info.fan_size}";
        if(c_fan_size_select) document.getElementById('c_fan_size_select').value = c_fan_size_select;
    });
</script>