{extends file="basepage.tpl"}

{block name=page_content prepend}
    {assign var=params value=[
    'parent'    => {field name=id}
    ,'dir'      => 'DESC'
    ,'sort'     => 'publishedon'
    ,'cache'    => true
    ,'limit'    => 0
    ]}
    {processor action="site/web/resources/getdata" params=$params ns="modxsite" assign=result}

    {if $result.success && $result.count > 0}

        {block name=content_grid}
            <ul class="brand-list">
                {foreach $result.object as $object}

                    <li class="brand-list__item">
                        {include file="components/brands/list.tpl" object=$object}
                    </li>

                {/foreach}
            </ul>
        {/block}

    {/if}
{/block}