{$tvData = {tv name=images}|json_decode:true}

{if $tvData && is_array($tvData)}

    <div class="product-gallery">
        <div class="row">
            <div class="col s12 m12 push-l2 l10">
                <div class="swiper-container swiper-gallery gallery-images">
                    <div class="swiper-wrapper gallery-photoswipe">
                        {foreach $tvData as $data}

                            <figure class="swiper-slide gallery-photoswipe__item">

                                {snippet name="pThumb" params=[
                                "input" => $data.image
                                ,"options" => "&w=1200&h=600&zc=0&aoe=0&far=0&q=70"
                                ] assign=thumbImage}

                                <a href="{$thumbImage}" data-size="1200x600">

                                    {snippet name="pThumb" params=[
                                    "input" => $data.image
                                    ,"options" => "&w=605&h=425&zc=1&aoe=0&far=0&q=70"
                                    ] assign=thumbImage}

                                    <img src="{$thumbImage}" class="responsive-img" />
                                </a>
                            </figure>
                        {/foreach}
                    </div>
                </div>
            </div>
            <div class="col s12 m12 pull-l10 l2">
                <div class="swiper-gallery-wrapper">
                    <div class="swiper-container swiper-gallery gallery-thumbs">
                        <div class="swiper-wrapper">
                            {foreach $tvData as $data}
                                <div class="swiper-slide">
                                    {snippet name="pThumb" params=[
                                    "input" => $data.image
                                    ,"options" => "&w=115&h=85&zc=1&aoe=0&far=0&q=70"
                                    ] assign=thumbImage}
                                    <img src="{$thumbImage}" class="responsive-img">
                                </div>
                            {/foreach}
                        </div>
                    </div>
                    <div class="swiper-button-prev"></div>
                    <div class="swiper-button-next"></div>
                </div>
            </div>
        </div>
    </div>

{/if}