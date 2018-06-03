<ul class="sidenav" id="mobile-menu">

    <li class="sidenav__header"></li>
    <li>

        <ul class="collapsible">

            <li>
                <div class="collapsible-header">Стиль кухонь <span class="right"><i class="fas fa-angle-right"></i></span></div>
                <div class="collapsible-body">
                    {include file="components/menu/sidenav.item.tpl" tv="style"}
                </div>
            </li>
            <li>
                <div class="collapsible-header">Виды дерева <span class="right"><i class="fas fa-angle-right"></i></span></div>
                <div class="collapsible-body">
                    {include file="components/menu/sidenav.item.tpl" tv="material"}
                </div>
            </li>
            <li>
                <div class="collapsible-header">Каталог цвета <span class="right"><i class="fas fa-angle-right"></i></span></div>
                <div class="collapsible-body">
                    {include file="components/menu/sidenav.item.tpl" tv="colour"}
                </div>
            </li>
            <li>
                <div class="collapsible-header">Каталог фасадов <span class="right"><i class="fas fa-angle-right"></i></span></div>
                <div class="collapsible-body">
                    {include file="components/menu/sidenav.item.tpl" tv="fasade_filter"}
                </div>
            </li>
            <li>
                <div class="collapsible-header">Сопутствующие товары <span class="right"><i class="fas fa-angle-right"></i></span></div>
                <div class="collapsible-body">
                    <ul class="sidenav--inner">
                        {snippet name="Wayfinder" params=[
                        'startId'   => 23,
                        'where'     => '[{"id:!=": "24"}]',
                        'outerTpl'  => 'wf.outer.tpl'
                        ]}
                    </ul>
                </div>
            </li>

        </ul>
    </li>

    {snippet name="Wayfinder" params=[
        'startId'   => 0,
        'where'     => '[{"id:not in":[1,23]}]',
        'outerTpl'  => 'wf.outer.tpl',
        'level'     => 1
    ]}
</ul>