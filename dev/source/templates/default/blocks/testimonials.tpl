{assign var=params value=[
'id' => 18
,'current'    => true
,'cache'    => true
]}

{processor action="site/web/resources/getdata" params=$params ns="modxsite" assign=result}

{if $result.success && $result.count > 0}
    <div class="section block-testimonials">
        <div class="section__title">
            Отзывы клиентов
        </div>
        <div class="section__content">

            {$testimonials = $result.object.tvs.testimonials.value|json_decode:true}

            {if $testimonials && is_array($testimonials)}

                <div id="swiper-testimonials" class="swiper-container">
                    <div class="swiper-wrapper">

                        {foreach $testimonials as $data}

                            {if $data.published}

                                <div class="swiper-slide center-align">
                                    {include file="components/testimonials/item.tpl" data=$data}
                                </div>

                            {/if}

                        {/foreach}

                    </div>

                    <div class="swiper-button-prev"></div>
                    <div class="swiper-button-next"></div>
                </div>
            {/if}
        </div>
    </div>
{/if}