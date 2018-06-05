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
                <li>
                    <a href="{$object.uri}">{$object.menutitle|default:$object->pagetitle}</a>
                </li>
            {/foreach}
        </ul>

    </div>

    <div class="col col--width-2">

        <div class="dd-panel__title left-align">Меню</div>

        <ul class="nav-inner">
            {snippet name="Wayfinder" params=[
            'startId'   => 0,
            'where'     => '[{"id:not in":[1,23]}]',
            'outerTpl'  => 'wf.outer.tpl',
            'level'     => 1
            ]}
        </ul>

    </div>
{/if}