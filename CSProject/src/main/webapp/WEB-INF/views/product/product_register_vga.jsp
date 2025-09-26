<%@ page language="java" contentType="text/html;charset=utf-8"%>
<div id="vga" class="input-container">
    <div class="email_join_div">
        <div class="email_join_text">제조사</div>
        <div class="email_join_input1">
            <select name="manufacturer" id="gc_select" class="email_join_input2 text-align-center">
                <option selected disabled hidden value="none">=== 선택해주세요. ===</option>
                <option value="이엠텍">이엠텍</option>
                <option value="MSI">MSI</option>
                <option value="GIGABYTE">GIGABYTE</option>
                <option value="갤럭시">갤럭시</option>
                <option value="ASUS">ASUS</option>
                <option value="COLORFUL">COLORFUL</option>
                <option value="ZOTAC">ZOTAC</option>
                <option value="XFX">XFX</option>
                <option value="SAPPHIRE">SAPPHIRE</option>
                <option value="ASRock">ASRock</option>
            </select>
        </div>
    </div>

    <div class="email_join_div">
        <div class="email_join_text">칩셋</div>
        <div class="email_join_input1">
            <select name="chipset" id="gc_chipset_select" class="email_join_input2 text-align-center">
                <option selected disabled hidden value="none">=== 선택해주세요. ===</option>
                <option value="NVIDIA">NVIDIA 칩셋</option>
                <option value="AMD">AMD 칩셋</option>
                <option value="인텔">인텔 칩셋</option>
            </select>
        </div>
    </div>

    <div class="email_join_div">
        <div class="email_join_text">세부 칩셋</div>
        <div class="email_join_input1">
            <select name="detailed_chipset" id="gc_detailed_chipset_select" class="email_join_input2 text-align-center">
                <option selected disabled hidden value="none">=== 선택해주세요. ===</option>
                <optgroup label="==NVIDIA 칩셋==">
                    <option disabled value="none"></option>
                    <option value="RTX 4090">RTX 4090</option>
                    <option value="RTX 4080 SUPER">RTX 4080 SUPER</option>
                    <option value="RTX 4080">RTX 4080</option>
                    <option value="RTX 4070 Ti SUPER">RTX 4070 Ti SUPER</option>
                    <option value="RTX 4070 Ti">RTX 4070 Ti</option>
                    <option value="RTX 4070 SUPER">RTX 4070 SUPER</option>
                    <option value="RTX 4070">RTX 4070</option>
                    <option value="RTX 4060 Ti">RTX 4060 Ti</option>
                    <option value="RTX 4060">RTX 4060</option>
                    <option value="RTX 3090">RTX 3090</option>
                    <option value="RTX 3080 Ti">RTX 3080 Ti</option>
                    <option value="RTX 3080">RTX 3080</option>
                    <option value="RTX 3070 Ti">RTX 3070 Ti</option>
                    <option value="RTX 3070">RTX 3070</option>
                    <option value="RTX 3060 Ti">RTX 3060 Ti</option>
                    <option value="RTX 3060">RTX 3060</option>
                    <option value="RTX 3050">RTX 3050</option>
                    <option value="RTX 2080 Ti">RTX 2080 Ti</option>
                    <option value="RTX 2080 SUPER">RTX 2080 SUPER</option>
                    <option value="RTX 2080">RTX 2080</option>
                    <option value="RTX 2070 SUPER">RTX 2070 SUPER</option>
                    <option value="RTX 2070">RTX 2070</option>
                    <option value="RTX 2060 SUPER">RTX 2060 SUPER</option>
                    <option value="RTX 2060">RTX 2060</option>
                    <option value="GTX 1660 Ti">GTX 1660 Ti</option>
                    <option value="GTX 1660 SUPER">GTX 1660 SUPER</option>
                    <option value="GTX 1660">GTX 1660</option>
                    <option disabled value="none"></option>
                </optgroup>
                <optgroup label="==AMD 칩셋==">
                    <option disabled value="none"></option>
                    <option value="RX 7900 XTX">RX 7900 XTX</option>
                    <option value="RX 7900 XT">RX 7900 XT</option>
                    <option value="RX 7900 GRE">RX 7900 GRE</option>
                    <option value="RX 7800 XT">RX 7800 XT</option>
                    <option value="RX 7700 XT">RX 7700 XT</option>
                    <option value="RX 7600 XT">RX 7600 XT</option>
                    <option value="RX 7600">RX 7600</option>
                    <option value="RX 6900 XT">RX 6900 XT</option>
                    <option value="RX 6800 XT">RX 6800 XT</option>
                    <option value="RX 6800">RX 6800</option>
                    <option value="RX 6750 XT">RX 6750 XT</option>
                    <option value="RX 6700 XT">RX 6700 XT</option>
                    <option value="RX 6700">RX 6700</option>
                    <option value="RX 6650 XT">RX 6650 XT</option>
                    <option value="RX 6600 XT">RX 6600 XT</option>
                    <option value="RX 6600">RX 6600</option>
                    <option value="RX 6500 XT">RX 6500 XT</option>
                    <option value="RX 6400">RX 6400</option>
                    <option disabled value="none"></option>
                </optgroup>
                <optgroup label="==인텔 칩셋==">
                    <option disabled value="none"></option>
                    <option value="ARC A770">ARC A770</option>
                    <option value="ARC A750">ARC A750</option>
                    <option value="ARC A580">ARC A580</option>
                    <option value="ARC A380">ARC A380</option>
                    <option value="ARC A310">ARC A310</option>
                </optgroup>
            </select>
        </div>
    </div>

    <div class="email_join_div">
        <div class="email_join_text">메모리 용량</div>
        <div class="email_join_input1">
            <select name="memory_capacity" id="gc_memory_capacity_select" class="email_join_input2 text-align-center">
                <option selected disabled hidden value="none">=== 선택해주세요. ===</option>
                <option value="24">24GB</option>
                <option value="16">16GB</option>
                <option value="12">12GB</option>
                <option value="8">8GB</option>
                <option value="6">6GB</option>
            </select>
        </div>
    </div>

    <div class="email_join_div">
        <div class="email_join_text">팬 개수</div>
        <div class="email_join_input1">
            <select name="fan_number" id="gc_fan_number_select" class="email_join_input2 text-align-center">
                <option selected disabled hidden value="none">=== 선택해주세요. ===</option>
                <option value="3">3팬</option>
                <option value="2">2팬</option>
                <option value="1">1팬</option>
            </select>
        </div>
    </div>
</div>

<script>
    document.addEventListener('DOMContentLoaded', function() {
        var gc_select = "${product_info.manufacturer}";
        if(gc_select) document.getElementById('gc_select').value = gc_select;

        var gc_chipset_select = "${product_info.chipset}";
        if(gc_chipset_select) document.getElementById('gc_chipset_select').value = gc_chipset_select;

        var gc_detailed_chipset_select = "${product_info.detailed_chipset}";
        if(gc_detailed_chipset_select) document.getElementById('gc_detailed_chipset_select').value = gc_detailed_chipset_select;

        var gc_memory_capacity_select = "${product_info.memory_capacity}";
        if(gc_memory_capacity_select) document.getElementById('gc_memory_capacity_select').value = gc_memory_capacity_select;

        var gc_fan_number_select = "${product_info.fan_number}";
        if(gc_fan_number_select) document.getElementById('gc_fan_number_select').value = gc_fan_number_select;
    });
</script>