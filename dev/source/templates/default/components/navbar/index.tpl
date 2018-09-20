<div class="container">
    <div class="sitename">
    {if {field name=id} == {config name=site_start}}
        <span class="brand-logo hide-on-med-and-up">Кухни из массива с фасадами из Италии</span>
    {else}
        <a href="{$modx->makeUrl({config name=site_start})}" class="brand-logo hide-on-med-and-up">Кухни из массива с фасадами из Италии</a>
    {/if}
    </div>
    <nav class="z-depth-0 nav">
        <div class="nav-wrapper">
            <a href="#" data-target="mobile-menu" class="sidenav-trigger hide-on-med-and-up on_mobile_pages">
                <i class="fas fa-bars"></i>
            <div class="hide-on-med-only hide-on-large-only">КАК КУПИТЬ</div>
            </a>
            {include file="components/menu/main.tpl"}
        </div>
    </nav>
    <nav class="z-depth-0 nav hiddenmenu">
        <div class="nav-wrapper">
            <a href="#" data-target="mobile-menu" class="sidenav-trigger hide-on-med-and-up on_mobile_catalog">
                <i class="fas fa-bars"></i>
            <div class="hide-on-med-only hide-on-large-only">КАТАЛОГ</div>
            </a>
        </div>
    </nav>
<div class="clear"></div>
</div>