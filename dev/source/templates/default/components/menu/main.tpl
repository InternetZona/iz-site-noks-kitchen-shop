{$params = [
    'id'    => 1
    ,'cached'    => true
    ,'current'  => true
]}

{processor action="site/web/resources/getdata" ns="modxsite" params=$params assign=mainPageResult}
{$mainpage = $mainPageResult.object}

<ul id="desktop-menu" class="hide-on-small-and-down">
    <li>
        <a class="dropdown-trigger dd-panel" href="#" data-target="dd-catalog-style">Стили кухни</a>
        <div id="dd-catalog-style" class="dropdown-content">
            <div class="row row--grid">

                {include file="components/menu/main.item.tpl" tv="style" title="Стиль" articles=explode('||', $mainpage.tvs.articleRotationStyle.value)}

                {if $mainpage}
                    {include file="components/navbar/products.preview.tpl" ids=$mainpage.tvs.productRotationStyle.value}
                {/if}

            </div>
        </div>
    </li>
    <li>
        <a  href='#' class="dropdown-trigger dd-panel" data-target='dd-catalog-material'>Виды дерева</a>
        <div id="dd-catalog-material" class="dropdown-content">
            <div class="row row--grid">

                {include file="components/menu/main.item.tpl" tv="material" title="Материал" articles=explode('||', $mainpage.tvs.articleRotationMaterial.value)}

                {if $mainpage}
                    {include file="components/navbar/products.preview.tpl" ids=$mainpage.tvs.productRotationMaterial.value}
                {/if}

            </div>
        </div>
    </li>
    <li>
        <a  href='#' class="dropdown-trigger dd-panel" data-target='dd-catalog-color'>Каталог цвета</a>
        <div id="dd-catalog-color" class="dropdown-content">
            <div class="row row--grid">

                {include file="components/menu/main.item.tpl" tv="colour" title="Цвет" articles=explode('||',$mainpage.tvs.articleRotationColor.value)}
                {if $mainpage}
                    {include file="components/navbar/products.preview.tpl" ids=$mainpage.tvs.productRotationColor.value}
                {/if}

            </div>
        </div>
    </li>
    <li>
        <a href="{$modx->makeUrl(269)}">Каталог фасадов</a>
    </li>
    <li>
        <a  href='#' class="dropdown-trigger dd-panel" data-target='dd-catalog-products'>Сопутствующие товары</a>
        <div id="dd-catalog-products" class="dropdown-content">
            <div class="row row--grid">

                {include file="components/menu/main.item2.tpl" articles=explode('||', $mainpage.tvs.articleRotationItem.value)}

                {if $mainpage}
                    {include file="components/navbar/products.preview.tpl" ids=$mainpage.tvs.productRotationItem.value}
                {/if}

            </div>
        </div>
    </li>
    {$active = ({field name=id} == 12) ? 'active': ''}
    <li class="{$active}">
        <a href="{$modx->makeUrl(12)}">Полезные советы</a>
    </li>
    <li>
        <a href="{$modx->makeUrl(38)}">Акции</a>
    </li>
</ul>