<ul id="desktop-menu" class="hide-on-small-and-down">
    <li>
        <a class="dropdown-trigger dd-panel" href="#" data-target="dd-catalog-style">Стиль кухонь</a>
        <div id="dd-catalog-style" class="dropdown-content">
            <div class="row row--grid">

                {include file="components/menu/main.item.tpl" tv="style" title="Стиль"}
                {include file="components/navbar/products.preview.tpl"}

            </div>
        </div>
    </li>
    <li>
        <a  href='#' class="dropdown-trigger dd-panel" data-target='dd-catalog-material'>Виды дерева</a>
        <div id="dd-catalog-material" class="dropdown-content">
            <div class="row row--grid">

                {include file="components/menu/main.item.tpl" tv="material" title="Материал"}
                {include file="components/navbar/products.preview.tpl"}

            </div>
        </div>
    </li>
    <li>
        <a  href='#' class="dropdown-trigger dd-panel" data-target='dd-catalog-color'>Каталог цвета</a>
        <div id="dd-catalog-color" class="dropdown-content">
            <div class="row row--grid">

                {include file="components/menu/main.item.tpl" tv="colour" title="Цвет"}
                {include file="components/navbar/products.preview.tpl"}

            </div>
        </div>
    </li>
    <li>
        <a  href='#' class="dropdown-trigger dd-panel" data-target='dd-catalog-fasade'>Каталог фасадов</a>
        <div id="dd-catalog-fasade" class="dropdown-content">
            <div class="row row--grid">

                {include file="components/menu/main.item.tpl" tv="fasade_filter" title="Фасады"}
                {include file="components/navbar/products.preview.tpl"}

            </div>
        </div>
    </li>
    <li>
        <a  href='#' class="dropdown-trigger dd-panel" data-target='dd-catalog-products'>Сопутствующие товары</a>
        <div id="dd-catalog-products" class="dropdown-content">
            <div class="row row--grid">

                {include file="components/menu/main.item2.tpl"}
                {include file="components/navbar/products.preview.tpl"}

            </div>
        </div>
    </li>
    <li>
        <a href="{$modx->makeUrl(12)}">Полезные советы</a>
    </li>
    <li>
        <a href="{$modx->makeUrl(17)}">Портфолио проектов</a>
    </li>
    <li>
        <a href="{$modx->makeUrl(38)}">Акции</a>
    </li>
</ul>