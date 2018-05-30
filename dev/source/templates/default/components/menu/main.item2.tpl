{$params = [
    'parent'    => 23
    ,'where'     =>  [
        'id:!='  => 24
    ]
    ,'limit'    => 0
]}

{processor action="site/web/resources/getdata" ns="modxsite" params=$params assign=result}

{if $result.success && $result.count > 0}
    {assign var=part1 value=[]}
    {assign var=part2 value=[]}

    {$i = 0}
    {foreach $result.object as $object}
        {$array = [
        'title' => $object.menutitle|default:$object.pagetitle
        ,'uri'  => $object.uri
        ]}
        {if $i is odd}
            {append var=part1 value=$array}
        {else}
            {append var=part2 value=$array}
        {/if}
        {$i = $i + 1}
    {/foreach}

    <div class="col col--width-2">

        <div class="dd-panel__title left-align">Товары</div>

        <ul class="nav-inner">
            {foreach $part1 as $row}
                <li>
                    <a href="{$row.uri}">{$row.title}</a>
                </li>
            {/foreach}
        </ul>

    </div>

    <div class="col col--width-2">

        <div class="dd-panel__title left-align">Товары</div>

        <ul class="nav-inner">
            {foreach $part2 as $row}
                <li>
                    <a href="{$row.uri}">{$row.title}</a>
                </li>
            {/foreach}
        </ul>

    </div>
{/if}