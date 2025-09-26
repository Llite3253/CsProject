'use strict';
$(document).ready(function() {

    // 수량 감소 버튼 클릭 이벤트
    $(document).on('click', '.btn-minus', function(){
        var $ul = $(this).closest('ul');
        var $badge = $ul.find('.var-value');
        var val = parseInt($badge.html(), 10);
        val = (val > 1) ? val - 1 : 1;
        $badge.html(val);
        $ul.find('.product-quanity').val(val);

        // 가격 업데이트
        updatePrice($ul, val);
        updateTotalPrice(); // 총 금액 업데이트
        return false;
    });

    // 수량 증가 버튼 클릭 이벤트
    $(document).on('click', '.btn-plus', function(){
        var $ul = $(this).closest('ul');
        var $badge = $ul.find('.var-value');
        var val = parseInt($badge.html(), 10);
        val++;
        $badge.html(val);
        $ul.find('.product-quanity').val(val);

        // 가격 업데이트
        updatePrice($ul, val);
        updateTotalPrice(); // 총 금액 업데이트
        return false;
    });

    // 가격 업데이트 함수
    function updatePrice($ul, quantity) {
        var $priceTd = $ul.closest('tr').prev().find('.product-price'); // 가격이 있는 td 요소
        var basePrice = parseInt($priceTd.data('price'), 10); // 기본 가격을 가져옴
        var totalPrice = basePrice * quantity; // 수량에 따라 가격 계산
        $priceTd.html(totalPrice.toLocaleString() + '원'); // 가격 업데이트
    }

    updateTotalPrice();

    // 총 금액 업데이트 함수
    function updateTotalPrice() {
        var total = 0;
        $('.product-price').each(function() {
            var price = parseInt($(this).data('price'), 10);
            var quantity = parseInt($(this).closest('tr').next().find('.var-value').html(), 10);
            total += price * quantity;
        });
        $('#total-price').html(total.toLocaleString() + '원');
    }

});