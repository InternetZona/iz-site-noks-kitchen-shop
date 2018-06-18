{$tvData = {tv name=banner}|json_decode:true}

{if $tvData && is_array($tvData)}
    <div class="section">
        <div id="swiper-banner" class="swiper-container swiper-content">
            <div class="swiper-wrapper">
                {foreach $tvData as $data}
                    <div class="swiper-slide center-align">
                        {snippet name="pThumb" params=[
                            "input" => $data.image
                            ,"options" => "&w=1140&h=336&zc=1&aoe=0&far=0&q=80"
                        ] assign=thumbImage}

                        <img src="{$thumbImage}" class="responsive-img hide-on-small-and-down">
                        <img src="{$data.image_small}" class="responsive-img hide-on-med-and-up">
                    </div>
                {/foreach}
            </div>
            <div class="swiper-pagination"></div>
        </div>
    </div>
{/if}