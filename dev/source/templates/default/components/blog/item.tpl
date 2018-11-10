<div class="card box-product blog">
        <div class="card-image">
            {snippet name="pThumb" params=[
            "input" => $object.image
            ,"options" => "&w=360&h=225&zc=1&aoe=0&far=0&q=80"
            ] assign=thumbImage}
            <img src="{$thumbImage}">
            <span class="card-title">{$object.name}</span>
            <div class="product__params-reveal">
                <ul>
                {if $object.res|is_array}
                        {foreach from=$object.res item="item"}
                            <li><a href="{$modx->makeUrl({$item})}">{snippet name="pdoField" params=['id' => {$item} ,'field' => 'pagetitle']}</a></li>
                        {/foreach}
                {else if $object.res}
                    <li><a href="{$modx->makeUrl({$object.res})}">{snippet name="pdoField" params=['id' => {$object.res} ,'field' => 'pagetitle']}</a></li>
                {/if}
                </ul>
            </div>
        </div>
</div>