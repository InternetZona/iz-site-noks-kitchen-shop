{if $filter = $modx->getObject('catalogFilter', ['tv_key'=> $tv])}
    {if $filterValues = $filter->getMany('FilterValues')}
        <ul class="nav-inner">
            {foreach $filterValues as $data}
                {if $data->res_id}
                    <li>
                        <a href="{$modx->makeUrl($data->res_id)}">{$data->name}</a>
                    </li>
                {/if}
            {/foreach}
        </ul>
    {/if}
{/if}