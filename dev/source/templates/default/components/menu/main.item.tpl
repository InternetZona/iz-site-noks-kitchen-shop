{if $filter = $modx->getObject('catalogFilter', ['tv_key'=> $tv])}
    {if $filterValues = $filter->getMany('FilterValues')}

        <div class="col col--width-2">

            <div class="dd-panel__title left-align">{$title}</div>

            <ul class="nav-inner">

                {foreach $filterValues as $data}
                    {if $data->res_id}
                        {if $resource = $modx->getObject('modResource', $data->res_id)}
                            {if $resource->id == {field name=id}}
                                <li class="active">
                                    <a href="{$resource->uri}">{$resource->menutitle|default:$resource->pagetitle}</a>
                                </li>
                                {else}
                                <li>
                                    <a href="{$resource->uri}">{$resource->menutitle|default:$resource->pagetitle}</a>
                                </li>
                            {/if}
                        {/if}
                    {/if}
                {/foreach}
            </ul>

        </div>

        <div class="col col--width-2">

            <div class="dd-panel__title left-align">Полезные советы</div>

            <ul class="nav-inner">
                {snippet name="Wayfinder" params=[
                    'startId'   => 12
                    ,'outerTpl'  => 'wf.outer.tpl'
                    ,'level'     => 1
                    ,'limit'    => 5
                    ,'sortBy'   => 'publishedon'
                    ,'sortOrder'    => 'desc'
                ]}
            </ul>

        </div>

    {/if}
{/if}