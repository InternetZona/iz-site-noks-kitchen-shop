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
                {$params = [
                    'where' => [
                        'id:IN' => $articles
                    ]
                    ,'sort' => 'publishedon'
                    ,'dir'  => 'desc'
                    ,'limit'    => 5
                    ,'cached'   => true
                ]}

                {processor action="site/web/resources/getdata" ns="modxsite" params=$params assign=rotationResult}

                {if $rotationResult.success && $rotationResult.count > 0}

                    {foreach $rotationResult.object as $object}

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

                {/if}

            </ul>

        </div>

    {/if}
{/if}