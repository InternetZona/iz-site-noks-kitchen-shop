<div class="block-sales">
    <div class="section__title">
        Распродажа
    </div>
    <div class="section__content">

        <div id="swiper-sales" class="swiper-container">
            <div class="swiper-wrapper">

                {for $i=0 to 7}
                    <div class="swiper-slide">
                        {include file="components/product/item.tpl"}
                    </div>
                {/for}

            </div>

            <div class="swiper-button-prev"></div>
            <div class="swiper-button-next"></div>
        </div>
    </div>
</div>