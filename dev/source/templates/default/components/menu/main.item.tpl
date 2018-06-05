{if $filter = $modx->getObject('catalogFilter', ['tv_key'=> $tv])}
    {if $filterValues = $filter->getMany('FilterValues')}

        <div class="col col--width-2">

            <div class="dd-panel__title left-align">{$title}</div>

            <ul class="nav-inner">

                {foreach $filterValues as $data}
                    {if $data->res_id}
                        {if $resource = $modx->getObject('modResource', $data->res_id)}
                            <li>
                                <a href="{$resource->uri}">{$resource->menutitle|default:$resource->pagetitle}</a>
                            </li>
                        {/if}
                    {/if}
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
{/if}