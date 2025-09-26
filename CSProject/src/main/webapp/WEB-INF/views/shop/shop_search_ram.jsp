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
                                        <input type="checkbox" name="manufacturer" value="삼성전자"> 삼성전자
                                    </label>
                                </li>
                                <li class="sub_item">
                                    <label>
                                        <input type="checkbox" name="manufacturer" value="TeamGroup"> TeamGroup
                                    </label>
                                </li>
                                <li class="sub_item">
                                    <label>
                                        <input type="checkbox" name="manufacturer" value="G.SKILL"> G.SKILL
                                    </label>
                                </li>
                                <li class="sub_item">
                                    <label>
                                        <input type="checkbox" name="manufacturer" value="ESSENCORE"> ESSENCORE
                                    </label>
                                </li>
                                <li class="sub_item">
                                    <label>
                                        <input type="checkbox" name="manufacturer" value="마이크론"> 마이크론
                                    </label>
                                </li>
                                <li class="sub_item">
                                    <label>
                                        <input type="checkbox" name="manufacturer" value="SK하이닉스"> SK하이닉스
                                    </label>
                                </li>
                                <li class="sub_item">
                                    <label>
                                        <input type="checkbox" name="manufacturer" value="ADATA"> ADATA
                                    </label>
                                </li>
                                <li class="sub_item">
                                    <label>
                                        <input type="checkbox" name="manufacturer" value="GeIL"> GeIL
                                    </label>
                                </li>
                                <li class="sub_item">
                                    <label>
                                        <input type="checkbox" name="manufacturer" value="OLOy"> OLOy
                                    </label>
                                </li>
                                <li class="sub_item">
                                    <label>
                                        <input type="checkbox" name="manufacturer" value="PATRIOT"> PATRIOT
                                    </label>
                                </li>
                            </ul>
                        </dd>
                    </dl>
                    <dl class="spec_item">
                        <dt class="item_dt">사용 장치</dt>
                        <dd class="item_dd">
                            <ul class="item_list">
                                <li class="sub_item">
                                    <label>
                                        <input type="checkbox" name="device" value="데스크탑용"> 데스크탑용
                                    </label>
                                </li>
                                <li class="sub_item">
                                    <label>
                                        <input type="checkbox" name="device" value="노트북용"> 노트북용
                                    </label>
                                </li>
                                <li class="sub_item">
                                    <label>
                                        <input type="checkbox" name="device" value="서버용"> 서버용
                                    </label>
                                </li>
                            </ul>
                        </dd>
                    </dl>
                    <dl class="spec_item">
                        <dt class="item_dt">제품 분류</dt>
                        <dd class="item_dd">
                            <ul class="item_list">
                                <li class="sub_item">
                                    <label>
                                        <input type="checkbox" name="classification" value="DDR5"> DDR5
                                    </label>
                                </li>
                                <li class="sub_item">
                                    <label>
                                        <input type="checkbox" name="classification" value="DDR4"> DDR4
                                    </label>
                                </li>

                            </ul>
                        </dd>
                    </dl>
                    <dl class="spec_item">
                        <dt class="item_dt">메모리 용량</dt>
                        <dd class="item_dd">
                            <ul class="item_list item_list_popular">
                                <li class="sub_item">
                                    <label>
                                        <input type="checkbox" name="capacity" value="64"> 64GB
                                    </label>
                                </li>
                                <li class="sub_item">
                                    <label>
                                        <input type="checkbox" name="capacity" value="48"> 48GB
                                    </label>
                                </li>
                                <li class="sub_item">
                                    <label>
                                        <input type="checkbox" name="capacity" value="32"> 32GB
                                    </label>
                                </li>
                                <li class="sub_item">
                                    <label>
                                        <input type="checkbox" name="capacity" value="16"> 16GB
                                    </label>
                                </li>
                                <li class="sub_item">
                                    <label>
                                        <input type="checkbox" name="capacity" value="8"> 8GB
                                    </label>
                                </li>
                            </ul>
                            <ul class="item_list item_list_all" style="display: none">
                                <li class="sub_item">
                                    <label>
                                        <input type="checkbox" name="capacity" value="64"> 64GB
                                    </label>
                                </li>
                                <li class="sub_item">
                                    <label>
                                        <input type="checkbox" name="capacity" value="48"> 48GB
                                    </label>
                                </li>
                                <li class="sub_item">
                                    <label>
                                        <input type="checkbox" name="capacity" value="32"> 32GB
                                    </label>
                                </li>
                                <li class="sub_item">
                                    <label>
                                        <input type="checkbox" name="capacity" value="16"> 16GB
                                    </label>
                                </li>
                                <li class="sub_item">
                                    <label>
                                        <input type="checkbox" name="capacity" value="8"> 8GB
                                    </label>
                                </li>
                                <li class="sub_item">
                                    <label>
                                        <input type="checkbox" name="capacity" value="4"> 4GB
                                    </label>
                                </li>
                            </ul>
                            <div class="spec_opt_view">
                                <button class="btn_spec_view btn_view_more" style="display: inline-block">
                                    <strong>1</strong>개 +
                                </button>
                                <button class="btn_spec_view btn_close" style="display: none">
                                    <strong>닫기</strong> -
                                </button>
                            </div>
                        </dd>
                    </dl>
                    <dl class="spec_item">
                        <dt class="item_dt">동작 클럭(대역폭)</dt>
                        <dd class="item_dd">
                            <ul class="item_list item_list_popular">
                                <li class="sub_item">
                                    <label>
                                        <input type="checkbox" name="motion_clock" value="8200MHz (PC5-65600)"> 8200MHz (PC5-65600)
                                    </label>
                                </li>
                                <li class="sub_item">
                                    <label>
                                        <input type="checkbox" name="motion_clock" value="8000MHz (PC5-64000)"> 8000MHz (PC5-64000)
                                    </label>
                                </li>
                                <li class="sub_item">
                                    <label>
                                        <input type="checkbox" name="motion_clock" value="7800MHz (PC5-62400)"> 7800MHz (PC5-62400)
                                    </label>
                                </li>
                                <li class="sub_item">
                                    <label>
                                        <input type="checkbox" name="motion_clock" value="7600MHz (PC5-60800)"> 7600MHz (PC5-60800)
                                    </label>
                                </li>
                                <li class="sub_item">
                                    <label>
                                        <input type="checkbox" name="motion_clock" value="7400MHz (PC5-59200)"> 7400MHz (PC5-59200)
                                    </label>
                                </li>
                            </ul>
                            <ul class="item_list item_list_all" style="display: none">
                                <li class="sub_item">
                                    <label>
                                        <input type="checkbox" name="motion_clock" value="8200MHz (PC5-65600)"> 8200MHz (PC5-65600)
                                    </label>
                                </li>
                                <li class="sub_item">
                                    <label>
                                        <input type="checkbox" name="motion_clock" value="8000MHz (PC5-64000)"> 8000MHz (PC5-64000)
                                    </label>
                                </li>
                                <li class="sub_item">
                                    <label>
                                        <input type="checkbox" name="motion_clock" value="7800MHz (PC5-62400)"> 7800MHz (PC5-62400)
                                    </label>
                                </li>
                                <li class="sub_item">
                                    <label>
                                        <input type="checkbox" name="motion_clock" value="7600MHz (PC5-60800)"> 7600MHz (PC5-60800)
                                    </label>
                                </li>
                                <li class="sub_item">
                                    <label>
                                        <input type="checkbox" name="motion_clock" value="7400MHz (PC5-59200)"> 7400MHz (PC5-59200)
                                    </label>
                                </li>
                                <li class="sub_item">
                                    <label>
                                        <input type="checkbox" name="motion_clock" value="7000MHz (PC5-56000)"> 7000MHz (PC5-56000)
                                    </label>
                                </li>
                                <li class="sub_item">
                                    <label>
                                        <input type="checkbox" name="motion_clock" value="6800MHz (PC5-54400)"> 6800MHz (PC5-54400)
                                    </label>
                                </li>
                                <li class="sub_item">
                                    <label>
                                        <input type="checkbox" name="motion_clock" value="6600MHz (PC5-52800)"> 6600MHz (PC5-52800)
                                    </label>
                                </li>
                                <li class="sub_item">
                                    <label>
                                        <input type="checkbox" name="motion_clock" value="6400MHz (PC5-51200)"> 6400MHz (PC5-51200)
                                    </label>
                                </li>
                                <li class="sub_item">
                                    <label>
                                        <input type="checkbox" name="motion_clock" value="6200MHz (PC5-49600)"> 6200MHz (PC5-49600)
                                    </label>
                                </li>
                                <li class="sub_item">
                                    <label>
                                        <input type="checkbox" name="motion_clock" value="6000MHz (PC5-48000)"> 6000MHz (PC5-48000)
                                    </label>
                                </li>
                                <li class="sub_item">
                                    <label>
                                        <input type="checkbox" name="motion_clock" value="5600MHz (PC5-44800)"> 5600MHz (PC5-44800)
                                    </label>
                                </li>
                                <li class="sub_item">
                                    <label>
                                        <input type="checkbox" name="motion_clock" value="5200MHz (PC5-41600)"> 5200MHz (PC5-41600)
                                    </label>
                                </li>
                                <li class="sub_item">
                                    <label>
                                        <input type="checkbox" name="motion_clock" value="4800MHz (PC5-38400)"> 4800MHz (PC5-38400)
                                    </label>
                                </li>
                                <li class="sub_item">
                                    <label>
                                        <input type="checkbox" name="motion_clock" value="4600MHz (PC4-36800)"> 4600MHz (PC4-36800)
                                    </label>
                                </li>
                                <li class="sub_item">
                                    <label>
                                        <input type="checkbox" name="motion_clock" value="4500MHz (PC4-36000)"> 4500MHz (PC4-36000)
                                    </label>
                                </li>
                                <li class="sub_item">
                                    <label>
                                        <input type="checkbox" name="motion_clock" value="4400MHz (PC4-35200)"> 4400MHz (PC4-35200)
                                    </label>
                                </li>
                                <li class="sub_item">
                                    <label>
                                        <input type="checkbox" name="motion_clock" value="4300MHz (PC4-34400)"> 4300MHz (PC4-34400)
                                    </label>
                                </li>
                                <li class="sub_item">
                                    <label>
                                        <input type="checkbox" name="motion_clock" value="4266MHz (PC4-34100)"> 4266MHz (PC4-34100)
                                    </label>
                                </li>
                                <li class="sub_item">
                                    <label>
                                        <input type="checkbox" name="motion_clock" value="4133MHz (PC4-33000)"> 4133MHz (PC4-33000)
                                    </label>
                                </li>
                                <li class="sub_item">
                                    <label>
                                        <input type="checkbox" name="motion_clock" value="4000MHz (PC4-32000)"> 4000MHz (PC4-32000)
                                    </label>
                                </li>
                                <li class="sub_item">
                                    <label>
                                        <input type="checkbox" name="motion_clock" value="3866MHz (PC4-30900)"> 3866MHz (PC4-30900)
                                    </label>
                                </li>
                                <li class="sub_item">
                                    <label>
                                        <input type="checkbox" name="motion_clock" value="3800MHz (PC4-30400)"> 3800MHz (PC4-30400)
                                    </label>
                                </li>
                                <li class="sub_item">
                                    <label>
                                        <input type="checkbox" name="motion_clock" value="3600MHz (PC4-28800)"> 3600MHz (PC4-28800)
                                    </label>
                                </li>
                                <li class="sub_item">
                                    <label>
                                        <input type="checkbox" name="motion_clock" value="3466MHz (PC4-27700)"> 3466MHz (PC4-27700)
                                    </label>
                                </li>
                                <li class="sub_item">
                                    <label>
                                        <input type="checkbox" name="motion_clock" value="3400MHz (PC4-27200)"> 3400MHz (PC4-27200)
                                    </label>
                                </li>
                                <li class="sub_item">
                                    <label>
                                        <input type="checkbox" name="motion_clock" value="3200MHz (PC4-25600)"> 3200MHz (PC4-25600)
                                    </label>
                                </li>
                                <li class="sub_item">
                                    <label>
                                        <input type="checkbox" name="motion_clock" value="3000MHz (PC4-24000)"> 3000MHz (PC4-24000)
                                    </label>
                                </li>
                                <li class="sub_item">
                                    <label>
                                        <input type="checkbox" name="motion_clock" value="2933MHz (PC4-23400)"> 2933MHz (PC4-23400)
                                    </label>
                                </li>
                                <li class="sub_item">
                                    <label>
                                        <input type="checkbox" name="motion_clock" value="2666MHz (PC4-21300)"> 2666MHz (PC4-21300)
                                    </label>
                                </li>
                                <li class="sub_item">
                                    <label>
                                        <input type="checkbox" name="motion_clock" value="2400MHz (PC4-19200)"> 2400MHz (PC4-19200)
                                    </label>
                                </li>
                                <li class="sub_item">
                                    <label>
                                        <input type="checkbox" name="motion_clock" value="2133MHz (PC4-17000)"> 2133MHz (PC4-17000)
                                    </label>
                                </li>
                            </ul>
                            <div class="spec_opt_view">
                                <button class="btn_spec_view btn_view_more" style="display: inline-block">
                                    <strong>27</strong>개 +
                                </button>
                                <button class="btn_spec_view btn_close" style="display: none">
                                    <strong>닫기</strong> -
                                </button>
                            </div>
                        </dd>
                    </dl>
                </div>
            </div>
        </div>
    </div>
</div>