{assign var=params value=[
    'parent'    => 273
    ,'sort'     => 'RAND()'
    ,'limit'    => 0
    ,'cache'    => true
]}
{processor action="site/web/resources/getdata" params=$params ns="modxsite" assign=result}

{if $result.success && $result.count > 0}

    <div class="section block-brands">
        <div class="section__title">
            Бренды
        </div>

        <div class="section__content">
            <div id="swiper-brands" class="swiper-container swiper-content">
                <div class="swiper-wrapper valign-wrapper">
                    {foreach $result.object as $object}
                        <div class="swiper-slide">
                            {include file="components/brands/item.tpl" object=$object}
                        </div>
                    {/foreach}
                </div>
                <div class="swiper-button-prev"></div>
                <div class="swiper-button-next"></div>
            </div>
        </div>
    </div>

{/if}