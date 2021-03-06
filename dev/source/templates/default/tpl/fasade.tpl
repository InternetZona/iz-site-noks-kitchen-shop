{extends file="basepage.tpl"}

{block name=page_content prepend}

    {$tvData = {tv name=fasadeCollection}|json_decode:true}

    {if $tvData && is_array($tvData)}

        {foreach $tvData as $data}

            {$items = $data.items|json_decode:true}

            {if $items && is_array($items)}

                <div class="fasade-feed">
                    <div class="fasade-feed__title">{$data.title}</div>

                    <div class="content-wrapper">
                        {$data.description}
                    </div>

                    <div class="row row--grid">

                        {foreach $items as $item}

                            <div class="col s6 m4 l3 xl2">
                                <div class="card box-item">
                                    <div class="card-image">

                                        {snippet name="pThumb" params=[
                                        "input" => $item.image
                                        ,"options" => "&w=320&h=480&zc=1&aoe=0&far=0&q=80"
                                        ] assign=thumbImage}

                                        <img src="{$thumbImage}" class="responsive-img">
                                    </div>
                                    <div class="card-content">
                                            <span class="card-title">
                                                <a href="{$modx->makeUrl($item.product)}">{$item.title}</a>
                                            </span>
                                    </div>
                                </div>
                            </div>

                        {/foreach}

                    </div>
                </div>

            {/if}

        {/foreach}

    {/if}

{/block}