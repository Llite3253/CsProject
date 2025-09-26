<%@ page language="java" contentType="text/html;charset=utf-8"%>
<div class="option_nav">
    <div class="">
        <div class="d-flex">
            <div style="border: 1px solid #bfbfbf; width: 831px">
                <div style="position: relative">
                    <dl class="spec_item">
                        <dt class="item_dt">제조사별</dt>
                        <dd class="item_dd">
                            <ul class="item_list">
                                <li class="sub_item">
                                    <label>
                                        <input type="checkbox" name="manufacturer" value="GIGABYTE"> GIGABYTE
                                    </label>
                                </li>
                                <li class="sub_item">
                                    <label>
                                        <input type="checkbox" name="manufacturer" value="MSI"> MSI
                                    </label>
                                </li>
                                <li class="sub_item">
                                    <label>
                                        <input type="checkbox" name="manufacturer" value="ASUS"> ASUS
                                    </label>
                                </li>
                                <li class="sub_item">
                                    <label>
                                        <input type="checkbox" name="manufacturer" value="ASRock"> ASRock
                                    </label>
                                </li>
                                <li class="sub_item">
                                    <label>
                                        <input type="checkbox" name="manufacturer" value="BIOSTAR"> BIOSTAR
                                    </label>
                                </li>
                            </ul>
                        </dd>
                    </dl>
                    <dl class="spec_item">
                        <dt class="item_dt">CPU 소켓</dt>
                        <dd class="item_dd">
                            <ul class="item_list">
                                <li class="sub_item">
                                    <label>
                                        <input type="checkbox" name="socket" value="인텔(소켓1700)"> 인텔(소켓1700)
                                    </label>
                                </li>
                                <li class="sub_item">
                                    <label>
                                        <input type="checkbox" name="socket" value="AMD(소켓AM5)"> AMD(소켓AM5)
                                    </label>
                                </li>
                                <li class="sub_item">
                                    <label>
                                        <input type="checkbox" name="socket" value="AMD(소켓AM4)"> AMD(소켓AM4)
                                    </label>
                                </li>
                            </ul>
                        </dd>
                    </dl>
                    <dl class="spec_item">
                        <dt class="item_dt">세부 칩셋</dt>
                        <dd class="item_dd">
                            <ul class="item_list">
                                <li class="sub_item">
                                    <label>
                                        <input type="checkbox" name="detailed_chipset" value="인텔 Z79"> 인텔 Z790
                                    </label>
                                </li>
                                <li class="sub_item">
                                    <label>
                                        <input type="checkbox" name="detailed_chipset" value="인텔 B760"> 인텔 B760
                                    </label>
                                </li>
                                <li class="sub_item">
                                    <label>
                                        <input type="checkbox" name="detailed_chipset" value="인텔 Z690"> 인텔 Z690
                                    </label>
                                </li>
                                <li class="sub_item">
                                    <label>
                                        <input type="checkbox" name="detailed_chipset" value="인텔 B660"> 인텔 B660
                                    </label>
                                </li>
                                <li class="sub_item">
                                    <label>
                                        <input type="checkbox" name="detailed_chipset" value="인텔 H610"> 인텔 H610
                                    </label>
                                </li>
                                <li class="sub_item">
                                    <label>
                                        <input type="checkbox" name="detailed_chipset" value="AMD X670E"> AMD X670E
                                    </label>
                                </li>
                                <li class="sub_item">
                                    <label>
                                        <input type="checkbox" name="detailed_chipset" value="AMD B650E"> AMD B650E
                                    </label>
                                </li>
                                <li class="sub_item">
                                    <label>
                                        <input type="checkbox" name="detailed_chipset" value="AMD B650"> AMD B650
                                    </label>
                                </li>
                                <li class="sub_item">
                                    <label>
                                        <input type="checkbox" name="detailed_chipset" value="AMD A620"> AMD A620
                                    </label>
                                </li>
                                <li class="sub_item">
                                    <label>
                                        <input type="checkbox" name="detailed_chipset" value="AMD B550"> AMD B550
                                    </label>
                                </li>
                            </ul>
                        </dd>
                    </dl>
                    <dl class="spec_item">
                        <dt class="item_dt">폼팩터</dt>
                        <dd class="item_dd">
                            <ul class="item_list">
                                <li class="sub_item">
                                    <label>
                                        <input type="checkbox" name="form_factor" value="ATX"> ATX (30.5x24.4cm)
                                    </label>
                                </li>
                                <li class="sub_item">
                                    <label>
                                        <input type="checkbox" name="form_factor" value="M-ATX"> M-ATX (24.4x24.4cm)
                                    </label>
                                </li>
                                <li class="sub_item">
                                    <label>
                                        <input type="checkbox" name="form_factor" value="M-iTX"> M-iTX (17.0x17.0cm)
                                    </label>
                                </li>
                                <li class="sub_item">
                                    <label>
                                        <input type="checkbox" name="form_factor" value="E-ATX"> E-ATX (30.5x33.0cm)
                                    </label>
                                </li>
                            </ul>
                        </dd>
                    </dl>
                    <dl class="spec_item">
                        <dt class="item_dt">메모리 종류</dt>
                        <dd class="item_dd">
                            <ul class="item_list">
                                <li class="sub_item">
                                    <label>
                                        <input type="checkbox" name="memory_type" value="DDR5"> DDR5
                                    </label>
                                </li>
                                <li class="sub_item">
                                    <label>
                                        <input type="checkbox" name="memory_type" value="DDR4"> DDR4
                                    </label>
                                </li>

                            </ul>
                        </dd>
                    </dl>
                    <dl class="spec_item">
                        <dt class="item_dt">메모리 슬롯</dt>
                        <dd class="item_dd">
                            <ul class="item_list">
                                <li class="sub_item">
                                    <label>
                                        <input type="checkbox" name="memory_slots" value="4"> 4개
                                    </label>
                                </li>
                                <li class="sub_item">
                                    <label>
                                        <input type="checkbox" name="memory_slots" value="2"> 2개
                                    </label>
                                </li>
                            </ul>
                        </dd>
                    </dl>
                    <dl class="spec_item">
                        <dt class="item_dt">M.2</dt>
                        <dd class="item_dd">
                            <ul class="item_list">
                                <li class="sub_item">
                                    <label>
                                        <input type="checkbox" name="m2" value="5"> 5개
                                    </label>
                                </li>
                                <li class="sub_item">
                                    <label>
                                        <input type="checkbox" name="m2" value="4"> 4개
                                    </label>
                                </li>
                                <li class="sub_item">
                                    <label>
                                        <input type="checkbox" name="m2" value="3"> 3개
                                    </label>
                                </li>
                                <li class="sub_item">
                                    <label>
                                        <input type="checkbox" name="m2" value="2"> 2개
                                    </label>
                                </li>
                                <li class="sub_item">
                                    <label>
                                        <input type="checkbox" name="m2" value="1"> 1개
                                    </label>
                                </li>
                            </ul>
                        </dd>
                    </dl>
                </div>
            </div>
        </div>
    </div>
</div>