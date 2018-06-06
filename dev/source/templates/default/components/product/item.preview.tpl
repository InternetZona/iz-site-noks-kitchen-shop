<div class="card box-product product--preview">
    <div class="card-image">

        {$tvImages = $object.tvs.images.value|json_decode:true}

        {snippet name="pThumb" params=[
        "input" => $tvImages[0].image
        ,"options" => "&w=275&h=215&zc=1&aoe=0&far=0&q=80"
        ] assign=thumbImage}

        <a href="{$object.uri}"><img src="{$thumbImage}"></a>
    </div>
    <div class="card-content">
        <div class="row">
            <div class="col s12 xl8 valign-wrapper">
                <a href="{$object.uri}" class="card-title">
                    {$object.menutitle|default:$object.pagetitle}
                </a>
            </div>
            <div class="col s12 xl4 valign-wrapper">
                <span class="product__cost">
                    {$object.tvs.price.value|number_format:0:'.':' '}
                </span>
            </div>
        </div>
    </div>
</div>