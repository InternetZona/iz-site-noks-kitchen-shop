<div class="card box-product">
    <div class="card-image">

        {$tvImages = $object.tvs.images.value|json_decode:true}

        {snippet name="pThumb" params=[
        "input" => $tvImages[0].image
        ,"options" => "&w=192&h=168&zc=1&aoe=0&far=0&q=70"
        ] assign=thumbImage}

        <img src="{$thumbImage}">
    </div>
    <div class="card-content">
        <div class="row">
            <div class="col m7 valign-wrapper">
                <a href="{$object.uri}" class="card-title">
                    {$object.pagetitle}
                </a>
            </div>
            <div class="col m5 valign-wrapper">
                <span class="product__cost">
                    {$object.tvs.price.value|number_format:0:'.':' '}
                </span>
            </div>
        </div>
    </div>
</div>