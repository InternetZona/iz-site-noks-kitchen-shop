<div class="card box-product">
    <div class="card-image">

        {snippet name="pThumb" params=[
            "input" => {$template_url}|cat:"img/product.jpg"
            ,"options" => "&w=360&h=225&zc=1&aoe=0&far=0&q=70"
        ] assign=thumbImage}

        <img src="{$thumbImage}">
    </div>
    <div class="card-content">
        <a href="#" class="card-title">
            Кухня Мария бест
        </a>
        <div class="row row--grid">
            <div class="col s12 m5 valign-wrapper">
                <span class="product__cost">
                    15 420
                </span>
            </div>
            <div class="col s6 push-s6 m3 valign-wrapper">
                <div class="product__bar">
                    <a href="#" class="product__bar-btn compare-btn"></a>
                    <a href="#" class="product__bar-btn favorite-btn"></a>
                </div>
            </div>
            <div class="col s6 pull-s6 m4 valign-wrapper">
                <a href="#" class="product__order-btn">Купить</a>
            </div>
        </div>
    </div>
    <ul class="product__badges-list">
        <li><span class="badge badge--hit">хит</span></li>
        <li><span class="badge badge--discount">скидка</span></li>
        <li><span class="badge badge--new">новинка</span></li>
        <li><span class="badge badge--top">наш выбор</span></li>
    </ul>
</div>