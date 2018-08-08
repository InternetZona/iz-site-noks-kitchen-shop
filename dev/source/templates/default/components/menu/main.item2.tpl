{$params = [
    'parent'    => 23
    ,'where'     =>  [
        'id:!='  => 24
    ]
    ,'limit'    => 0
]}

{processor action="site/web/resources/getdata" ns="modxsite" params=$params assign=result}

{if $result.success && $result.count > 0}

    <div class="col col--width-2">

        <div class="dd-panel__title left-align">Товары</div>

        <ul class="nav-inner">

            {foreach $result.object as $object}
                {if $object.id == {field name=id}}
                    <li class="active">
                        <a href="{$object.uri}">{$object.menutitle|default:$object.pagetitle}</a>
                    </li>
                {else}
                    <li>
                        <a href="{$object.uri}">{$object.menutitle|default:$object.pagetitle}</a>
                    </li>
                {/if}
            {/foreach}
        </ul>

    </div>

    <div class="col col--width-2">

        <div class="dd-panel__title left-align">Полезные советы</div>

        <ul class="nav-inner bolder">
            {snippet name="Wayfinder" params=[
            'startId'   => 12
            ,'includeDocs'  => implode(',', $articles)
            ,'outerTpl'  => 'wf.outer.tpl'
            ,'level'     => 1
            ,'limit'    => 5
            ,'sortBy'   => 'publishedon'
            ,'sortOrder'    => 'desc'
            ]}
        </ul>

    </div>
{/if}