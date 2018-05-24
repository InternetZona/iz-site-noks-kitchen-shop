<div class="container">
    <nav class="z-depth-0 nav">
        <div class="nav-wrapper">
            {if {field name=id} == {config name=site_start}}
                <span class="brand-logo">Кухни из массива</span>
            {else}
                <a href="{$modx->makeUrl({config name=site_start})}" class="brand-logo">Кухни из массива</a>
            {/if}
            <a href="#" data-target="mobile-menu" class="sidenav-trigger">
                <i class="material-icons">menu</i>
            </a>
            <ul></ul>
        </div>
    </nav>

</div>