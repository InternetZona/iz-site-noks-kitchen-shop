<div class="card box-solution">
    <div class="card-image">

        {snippet name="pThumb" params=[
        "input" => $object.tvs.image.value
        ,"options" => "&w=263&h=190&zc=1&aoe=0&far=0&q=70"
        ] assign=thumbImage}

        <img src="{$thumbImage}">
    </div>
    <div class="card-content">
        <a href="{$object.uri}" class="card-title">
            {$object.pagetitle}
        </a>
    </div>
</div>