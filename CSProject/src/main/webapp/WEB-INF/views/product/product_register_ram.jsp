<%@ page language="java" contentType="text/html;charset=utf-8"%>
<div id="ram" class="input-container">
    <div class="email_join_div">
        <div class="email_join_text">제조사</div>
        <div class="email_join_input1">
            <select name="manufacturer" id="ram_select" class="email_join_input2 text-align-center">
                <option selected disabled hidden value="none">=== 선택해주세요. ===</option>
                <option value="삼성전자">삼성전자</option>
                <option value="TeamGroup">TeamGroup</option>
                <option value="G.SKILL">G.SKILL</option>
                <option value="ESSENCORE">ESSENCORE</option>
                <option value="마이크론">마이크론</option>
                <option value="SK하이닉스">SK하이닉스</option>
                <option value="ADATA">ADATA</option>
                <option value="GeIL">GeIL</option>
                <option value="OLOy">OLOy</option>
                <option value="PATRIOT">PATRIOT</option>
            </select>
        </div>
    </div>

    <div class="email_join_div">
        <div class="email_join_text">사용 장치</div>
        <div class="email_join_input1">
            <select name="device" id="ram_device_select" class="email_join_input2 text-align-center">
                <option selected disabled hidden value="none">=== 선택해주세요. ===</option>
                <option value="데스크탑용">데스크탑용</option>
                <option value="노트북용">노트북용</option>
                <option value="서버용">서버용</option>
            </select>
        </div>
    </div>

    <div class="email_join_div">
        <div class="email_join_text">제품 분류</div>
        <div class="email_join_input1">
            <select name="classification" id="ram_classification_select" class="email_join_input2 text-align-center">
                <option selected disabled hidden value="none">=== 선택해주세요. ===</option>
                <option value="DDR5">DDR5</option>
                <option value="DDR4">DDR4</option>
            </select>
        </div>
    </div>

    <div class="email_join_div">
        <div class="email_join_text">메모리 용량</div>
        <div class="email_join_input1">
            <select name="capacity" id="ram_capacity_select" class="email_join_input2 text-align-center">
                <option selected disabled hidden value="none">=== 선택해주세요. ===</option>
                <option value="64">64GB</option>
                <option value="48">48GB</option>
                <option value="32">32GB</option>
                <option value="16">16GB</option>
                <option value="8">8GB</option>
                <option value="4">4GB</option>
            </select>
        </div>
    </div>

    <div class="email_join_div">
        <div class="email_join_text">동작 클럭(대역폭)</div>
        <div class="email_join_input1">
            <select name="motion_clock" id="ram_motion_clock_select" class="email_join_input2 text-align-center">
                <option selected disabled hidden value="none">=== 선택해주세요. ===</option>
                <optgroup label="==DDR5==">
                    <option disabled value="none"></option>
                    <option value="8200MHz (PC5-65600)">8200MHz (PC5-65600)</option>
                    <option value="8000MHz (PC5-64000)">8000MHz (PC5-64000)</option>
                    <option value="7800MHz (PC5-62400)">7800MHz (PC5-62400)</option>
                    <option value="7600MHz (PC5-60800)">7600MHz (PC5-60800)</option>
                    <option value="7400MHz (PC5-59200)">7400MHz (PC5-59200)</option>
                    <option value="7000MHz (PC5-56000)">7000MHz (PC5-56000)</option>
                    <option value="6800MHz (PC5-54400)">6800MHz (PC5-54400)</option>
                    <option value="6600MHz (PC5-52800)">6600MHz (PC5-52800)</option>
                    <option value="6400MHz (PC5-51200)">6400MHz (PC5-51200)</option>
                    <option value="6200MHz (PC5-49600)">6200MHz (PC5-49600)</option>
                    <option value="6000MHz (PC5-48000)">6000MHz (PC5-48000)</option>
                    <option value="5600MHz (PC5-44800)">5600MHz (PC5-44800)</option>
                    <option value="5200MHz (PC5-41600)">5200MHz (PC5-41600)</option>
                    <option value="4800MHz (PC5-38400)">4800MHz (PC5-38400)</option>
                    <option disabled value="none"></option>
                </optgroup>
                <optgroup label="==DDR4==">
                    <option disabled value="none"></option>
                    <option value="4600MHz (PC4-36800)">4600MHz (PC4-36800)</option>
                    <option value="4500MHz (PC4-36000)">4500MHz (PC4-36000)</option>
                    <option value="4400MHz (PC4-35200)">4400MHz (PC4-35200)</option>
                    <option value="4300MHz (PC4-34400)">4300MHz (PC4-34400)</option>
                    <option value="4266MHz (PC4-34100)">4266MHz (PC4-34100)</option>
                    <option value="4133MHz (PC4-33000)">4133MHz (PC4-33000)</option>
                    <option value="4000MHz (PC4-32000)">4000MHz (PC4-32000)</option>
                    <option value="3866MHz (PC4-30900)">3866MHz (PC4-30900)</option>
                    <option value="3800MHz (PC4-30400)">3800MHz (PC4-30400)</option>
                    <option value="3600MHz (PC4-28800)">3600MHz (PC4-28800)</option>
                    <option value="3466MHz (PC4-27700)">3466MHz (PC4-27700)</option>
                    <option value="3400MHz (PC4-27200)">3400MHz (PC4-27200)</option>
                    <option value="3200MHz (PC4-25600)">3200MHz (PC4-25600)</option>
                    <option value="3000MHz (PC4-24000)">3000MHz (PC4-24000)</option>
                    <option value="2933MHz (PC4-23400)">2933MHz (PC4-23400)</option>
                    <option value="2666MHz (PC4-21300)">2666MHz (PC4-21300)</option>
                    <option value="2400MHz (PC4-19200)">2400MHz (PC4-19200)</option>
                    <option value="2133MHz (PC4-17000)">2133MHz (PC4-17000)</option>
                </optgroup>
            </select>
        </div>
    </div>
</div>

<script>
    document.addEventListener('DOMContentLoaded', function() {
        var ram_select = "${product_info.manufacturer}";
        if(ram_select) document.getElementById('ram_select').value = ram_select;

        var ram_device_select = "${product_info.device}";
        if(ram_device_select) document.getElementById('ram_device_select').value = ram_device_select;

        var ram_classification_select = "${product_info.classification}";
        if(ram_classification_select) document.getElementById('ram_classification_select').value = ram_classification_select;

        var ram_capacity_select = "${product_info.capacity}";
        if(ram_capacity_select) document.getElementById('ram_capacity_select').value = ram_capacity_select;

        var ram_motion_clock_select = "${product_info.motion_clock}";
        if(ram_motion_clock_select) document.getElementById('ram_motion_clock_select').value = ram_motion_clock_select;
    });
</script>