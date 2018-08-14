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
                    ,'sort' => 'parent'
                    ,'dir'  => 'asc'
                    ,'limit'    => 5
                    ,'cached'   => true
                ]}

                {processor action="site/web/resources/getdata" ns="modxsite" params=$params assign=rotationResult}

                {if $rotationResult.success && $rotationResult.count > 0}

                    {foreach $rotationResult.object as $object}

                        {if $object.id == {field name=id}}

                            {if $object.parent == 38}

                                <li class="active" style="margin-top: 2rem; margin-bottom: -1rem;">
                                    <a class="text--bold" href="{$object.uri}">{$object.menutitle|default:$object.pagetitle}</a>
                                </li>

                                {else}

                                <li class="active">
                                    <a href="{$object.uri}">{$object.menutitle|default:$object.pagetitle}</a>
                                </li>

                            {/if}

                            {else}

                            {if $object.parent == 38}

                                <li style="margin-top: 2rem; margin-bottom: -1rem;">
                                    <a class="text--bold" href="{$object.uri}">{$object.menutitle|default:$object.pagetitle}</a>
                                </li>

                            {else}

                                <li>
                                    <a href="{$object.uri}">{$object.menutitle|default:$object.pagetitle}</a>
                                </li>

                            {/if}

                        {/if}

                    {/foreach}

                {/if}

            </ul>

        </div>

    {/if}
{/if}