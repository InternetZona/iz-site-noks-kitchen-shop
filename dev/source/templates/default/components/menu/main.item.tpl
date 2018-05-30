{if $filter = $modx->getObject('catalogFilter', ['tv_key'=> $tv])}
    {if $filterValues = $filter->getMany('FilterValues')}

        {assign var=part1 value=[]}
        {assign var=part2 value=[]}

        {$i = 0}
        {foreach $filterValues as $data}
            {if $data->res_id}
                {if $resource = $modx->getObject('modResource', $data->res_id)}
                    {$array = [
                    'title' => $resource->menutitle|default:$resource->pagetitle
                    ,'uri'  => $resource->uri
                    ]}
                    {if $i is odd}
                        {append var=part1 value=$array}
                    {else}
                        {append var=part2 value=$array}
                    {/if}
                    {$i = $i + 1}
                {/if}
            {/if}
        {/foreach}

        <div class="col col--width-2">

            <div class="dd-panel__title left-align">{$title}</div>

            <ul class="nav-inner">
                {foreach $part1 as $row}
                    <li>
                        <a href="{$row.uri}">{$row.title}</a>
                    </li>
                {/foreach}
            </ul>

        </div>

        <div class="col col--width-2">

            <div class="dd-panel__title left-align">{$title}</div>

            <ul class="nav-inner">
                {foreach $part2 as $row}
                    <li>
                        <a href="{$row.uri}">{$row.title}</a>
                    </li>
                {/foreach}
            </ul>

        </div>

    {/if}
{/if}