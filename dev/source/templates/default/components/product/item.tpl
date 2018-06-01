<div class="card box-product">
    <div class="card-image">

        {$tvImages = $object.tvs.images.value|json_decode:true}

        {snippet name="pThumb" params=[
            "input" => $tvImages[0].image
            ,"options" => "&w=360&h=225&zc=1&aoe=0&far=0&q=80"
        ] assign=thumbImage}

        <img src="{$thumbImage}">

        {$_li = ''}
        {if $styleValue = $modx->getObject('catalogFilterValue', $object.tvs.style.value)}
            {$_li = $_li|cat:"<li>Стиль: {$styleValue->name}</li>"}
        {/if}

        {if $colorValue = $modx->getObject('catalogFilterValue', $object.tvs.colour.value)}
            {$_li = $_li|cat:"<li>Цвет: {$colorValue->name}</li>"}
        {/if}

        {if $materialValue = $modx->getObject('catalogFilterValue', $object.tvs.material.value)}
            {$_li = $_li|cat:"<li>Материал: {$materialValue->name}</li>"}
        {/if}

        {if $_li ne ''}
            <div class="product__params-reveal">
                <ul class="product__params">
                    {$_li}
                </ul>
            </div>
        {/if}
    </div>
    <div class="card-content">
        <a href="{$object.uri}" class="card-title">
            {$object.pagetitle}
        </a>
        <div class="row row--grid">
            <div class="col s12 m6 valign-wrapper">
                {if $discount = $object.tvs.price_discount.value}
                    <div class="product--sale-info">
                        <div class="old-price">
                            <span class="product__cost">
                                {$object.tvs.price.value|number_format:0:'.':' '}
                            </span>
                            <span class="bonus-sum">экономия {($object.tvs.price.value - $discount)|number_format:0:'.':' '}</span>
                        </div>
                        <span class="product__cost">
                            {$discount|number_format:0:'.':' '}
                        </span>
                    </div>
                    {else}
                    <span class="product__cost">
                        {$object.tvs.price.value|number_format:0:'.':' '}
                    </span>
                {/if}
            </div>
            <div class="col s6 push-s6 m2 valign-wrapper">
                <div class="product__bar">
                    <a href="#" class="product__bar-btn favorite-btn favorite--empty"></a>
                </div>
            </div>
            <div class="col s6 pull-s6 m4 valign-wrapper">
                <a href="#" class="product__order-btn" data-id="{$object.id}" data-price="{$object.tvs.price_discount.value|default:$object.tvs.price.value}">Купить</a>
            </div>
        </div>
    </div>

    {assign var=_li value=""}

    {if $object.tvs.ishit.value}
        {$_li = $_li|cat:'<li><span class="badge badge--hit">хит</span></li>'}
    {/if}
    {if $object.tvs.issale.value}
        {$_li = $_li|cat:'<li><span class="badge badge--discount">скидка</span></li>'}
    {/if}
    {if $object.tvs.isnew.value}
        {$_li = $_li|cat:'<li><span class="badge badge--new">новинка</span></li>'}
    {/if}
    {if $object.tvs.istop.value}
        {$_li = $_li|cat:'<li><span class="badge badge--top">наш выбор</span></li>'}
    {/if}

    {if !empty($_li)}
        <ul class="product__badges-list">
            {$_li}
        </ul>
    {/if}
</div>