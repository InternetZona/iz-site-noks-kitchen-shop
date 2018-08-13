<div class="menu__title">{$title}</div>
<ul class="menu">
    {snippet name="Wayfinder" params=[
    'startId'   => $parent
    ,'includeDocs'  => $ids
    ,'outerTpl' => 'wf.outer.tpl'
    ]}

    {if $parent == 23}

        <li>
            <a href="{$modx->makeUrl(273)}">Бренды</a>
        </li>

    {/if}
</ul>