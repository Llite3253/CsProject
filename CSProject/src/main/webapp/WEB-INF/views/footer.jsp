    <!-- End Featured Product -->


    <!-- Start Footer -->
    <footer class="bg-dark" id="tempaltemo_footer">
        <div class="container">
            <div class="row">

                <div class="col-md-4 pt-5">
                    <h2 class="h2 text-success border-bottom pb-3 border-light logo">C.Shop</h2>
                    <ul class="list-unstyled text-light footer-link-list">
                        <li>
                            <i class="fas fa-map-marker-alt fa-fw"></i>
                            Seo-gu, Incheon Metropolitan City
                        </li>
                        <li>
                            <i class="fa fa-phone fa-fw"></i>
                            <a class="text-decoration-none" href="tel:010-3253-5105">010-3253-5105</a>
                        </li>
                        <li>
                            <i class="fa fa-envelope fa-fw"></i>
                            <a class="text-decoration-none" href="mailto:gfsy54@naver.com">gfsy54@naver.com</a>
                        </li>
                    </ul>
                </div>

            </div>

            <div class="row text-light mb-4">
                <div class="col-12 mb-3">
                    <div class="w-100 my-3 border-top border-light"></div>
                </div>
            </div>
        </div>

    </footer>
    <!-- End Footer -->

    <!-- Start Script -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="/assets/js/bootstrap.bundle.min.js"></script>
    <script src="/assets/js/templatemo.js"></script>
    <script src="/assets/js/custom.js"></script>
    <!-- End Script -->

    <!-- Start Slider Script -->
    <script src="/assets/js/slick.min.js"></script>
    <script>
        $('#carousel-related-product').slick({
            infinite: true,
            arrows: false,
            slidesToShow: 4,
            slidesToScroll: 3,
            dots: true,
            responsive: [{
                breakpoint: 1024,
                settings: {
                    slidesToShow: 3,
                    slidesToScroll: 3
                }
            },
                {
                    breakpoint: 600,
                    settings: {
                        slidesToShow: 2,
                        slidesToScroll: 3
                    }
                },
                {
                    breakpoint: 480,
                    settings: {
                        slidesToShow: 2,
                        slidesToScroll: 3
                    }
                }
            ]
        });
    </script>
    <!-- End Slider Script -->

    <script>
        document.addEventListener('DOMContentLoaded', function() {
            document.querySelectorAll('.spec_item').forEach(function(specItem) {
                const btnViewMore = specItem.querySelector('.btn_view_more');
                const btnClose = specItem.querySelector('.btn_close');
                const itemListAll = specItem.querySelector('.item_list_all');
                const itemListPopular = specItem.querySelector('.item_list_popular');

                // 요소가 존재하는 경우에만 이벤트 리스너 추가
                if (btnViewMore && btnClose && itemListAll) {
                    btnViewMore.addEventListener('click', function() {
                        itemListAll.style.display = 'block';
                        btnViewMore.style.display = 'none';
                        btnClose.style.display = 'inline-block';

                        // 글씨 색상을 파란색으로 변경
                        itemListPopular.querySelectorAll('li').forEach(li => li.classList.add('highlight'));
                    });

                    btnClose.addEventListener('click', function() {
                        itemListAll.style.display = 'none';
                        btnViewMore.style.display = 'inline-block';
                        btnClose.style.display = 'none';

                        // 글씨 색상 원상복귀
                        itemListPopular.querySelectorAll('li').forEach(li => li.classList.remove('highlight'));
                    });
                }
            });
        });
    </script>

</body>

</html>
