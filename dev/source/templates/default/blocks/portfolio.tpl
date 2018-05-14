{assign var=params value=[
    'id' => 17
    ,'current'    => true
    ,'cache'    => true
]}

{processor action="site/web/resources/getdata" params=$params ns="modxsite" assign=result}

{if $result.success && $result.count > 0}
    <div class="section block-portfolio">
        <div class="section__title">
            Дневник выполненых заказов
        </div>
        <div class="section__content">

            {$portfolio = $result.object.tvs.portfolio.value|json_decode:true}

            {if $portfolio && is_array($portfolio)}
                <div id="swiper-portfolio" class="swiper-container">
                    <div class="swiper-wrapper">

                        {$portfolio = $portfolio|array_reverse}

                        {foreach $portfolio as $data}

                            {$images = $data.images|json_decode:true}

                            {if is_array($images)}

                                <div class="swiper-slide center-align">
                                    <div class="card box-portfolio">
                                        <div class="card-image">
                                            <a href="{$result.object.uri}">

                                                {snippet name="pThumb" params=[
                                                    "input" => $images[0].image
                                                    ,"options" => "&w=242&h=168&zc=1&aoe=0&far=0&q=70"
                                                ] assign=thumbImage}

                                                <img src="{$thumbImage}">

                                            </a>
                                        </div>
                                        <div class="card-content">
                                            <a href="{$result.object.uri}" class="card-title">
                                                {$data.title}
                                            </a>
                                        </div>
                                    </div>
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
