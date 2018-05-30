<ul id="desktop-menu">
    <li>
        <a class="dropdown-trigger dd-panel" href="#" data-target="dd-catalog-style">Стиль кухонь</a>
        <div id="dd-catalog-style" class="dropdown-content">
            <div class="row">
                <div class="col l6">
                    <div class="dd-panel__title">Стили</div>
                    {include file="components/menu/main.item.tpl" tv="style"}
                </div>
                {include file="components/navbar/products.preview.tpl"}
            </div>
        </div>
    </li>
    <li>
        <a  href='#' class="dropdown-trigger dd-panel" data-target='dd-catalog-material'>Виды дерева</a>
        <div id="dd-catalog-material" class="dropdown-content">
            <div class="row">
                <div class="col l6">
                    <div class="dd-panel__title">Материалы</div>
                    {include file="components/menu/main.item.tpl" tv="material"}
                </div>
                {include file="components/navbar/products.preview.tpl"}
            </div>
        </div>
    </li>
    <li>
        <a  href='#' class="dropdown-trigger dd-panel" data-target='dd-catalog-color'>Каталог цвета</a>
        <div id="dd-catalog-color" class="dropdown-content">
            <div class="row">
                <div class="col l6">
                    <div class="dd-panel__title">Цвет</div>
                    {include file="components/menu/main.item.tpl" tv="colour"}
                </div>
                {include file="components/navbar/products.preview.tpl"}
            </div>
        </div>
    </li>
    <li>
        <a  href='#' class="dropdown-trigger dd-panel" data-target='dd-catalog-fasade'>Каталог фасадов</a>
        <div id="dd-catalog-fasade" class="dropdown-content">
            <div class="row">
                <div class="col l6">
                    <div class="dd-panel__title">Фасады</div>
                    {include file="components/menu/main.item.tpl" tv="fasade_filter"}
                </div>
                {include file="components/navbar/products.preview.tpl"}
            </div>
        </div>
    </li>
    <li>
        <a  href='#' class="dropdown-trigger dd-panel" data-target='dd-catalog-products'>Сопутствующие товары</a>
        <div id="dd-catalog-products" class="dropdown-content">
            <div class="row">
                <div class="col l6">
                    <div class="dd-panel__title">Товары</div>
                    <ul class="nav-inner">
                        {snippet name="Wayfinder" params=[
                            'startId'   => 23
                            ,"outerTpl" => "wf.outer.tpl"
                            ,'where' => '{"id:!=":"24"}'
                        ]}
                    </ul>
                </div>
                {include file="components/navbar/products.preview.tpl"}
            </div>
        </div>
    </li>
    <li>
        <a href="{$modx->makeUrl(17)}">Портфолио проектов</a>
    </li>
    <li>
        <a href="{$modx->makeUrl(37)}">Акции</a>
    </li>
</ul>