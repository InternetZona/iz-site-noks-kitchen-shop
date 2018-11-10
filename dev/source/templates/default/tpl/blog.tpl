{extends file="basepage.tpl"}

{block name=page_content prepend}
    {if $page = $modx->getObject('modResource', {field name="id"})}
    {if $result = json_decode($page->getTVValue('blogs'), true)}
        {block name=content_grid}
            <div class="row">

                {foreach $result as $object}

                    <div class="col s12 m4 l4">
                        {include file="components/blog/item.tpl" object=$object}
                    </div>

                {/foreach}

            </div>
        {/block}
    {/if}
    {/if}
{/block}