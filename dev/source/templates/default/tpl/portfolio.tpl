{extends file="basepage.tpl"}

{block name=page_content prepend}
    {$tvData = {tv name=portfolio}|json_decode:true}

    {if $tvData && is_array($tvData)}

        {$tvData = $tvData|array_reverse}

        {foreach $tvData as $k => $data}

            {$images = $data.images|json_decode:true}

            {if $images && is_array($images)}

                <div class="portfolio-feed">
                    <div class="portfolio-feed__title">{$data.title}</div>

                    <div id="swiper-portfolio-{$k}" class="swiper-container portfolio-feed__content">
                        <div class="swiper-wrapper gallery-photoswipe">
                            {foreach $images as $row}

                                <figure class="swiper-slide center-align">

                                    {snippet name="pThumb" params=[
                                        "input" => $row.image
                                        ,"options" => "&w=1200&h=600&zc=0&aoe=0&far=0&q=70"
                                    ] assign=thumbImage}

                                    <a href="{$thumbImage}" data-size="1200x600" class="portfolio-feed__item">

                                        {snippet name="pThumb" params=[
                                            "input" => $row.image,
                                            "options" => "&w=242&h=168&zc=1&aoe=0&far=0&q=70"
                                        ] assign=thumbImage}

                                        <img src="{$thumbImage}" class="responsive-img" />
                                    </a>
                                </figure>
                            {/foreach}
                        </div>
                        <div class="swiper-button-prev"></div>
                        <div class="swiper-button-next"></div>
                    </div>
                </div>

            {/if}

        {/foreach}

    {/if}

{/block}

{block name=js_inject prepend}
    {include file="components/photoswipe/constructor.tpl"}
{/block}