<div class="card box-product">
    <div class="card-image">

        {$tvImages = $object.tvs.images.value|json_decode:true}

        {snippet name="pThumb" params=[
            "input" => $tvImages[0].image
            ,"options" => "&w=360&h=225&zc=1&aoe=0&far=0&q=70"
        ] assign=thumbImage}

        <img src="{$thumbImage}">
    </div>
    <div class="card-content">
        <a href="{$object.uri}" class="card-title">
            {$object.pagetitle}
        </a>
        <div class="row row--grid">
            <div class="col s12 m6 valign-wrapper">
                <span class="product__cost">
                    {$object.tvs.price.value|number_format:0:'.':' '}
                </span>
            </div>
            <div class="col s6 push-s6 m2 valign-wrapper">
                <div class="product__bar">
                    <a href="#" class="product__bar-btn favorite-btn"></a>
                </div>
            </div>
            <div class="col s6 pull-s6 m4 valign-wrapper">
                <a href="#" class="product__order-btn">Купить</a>
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