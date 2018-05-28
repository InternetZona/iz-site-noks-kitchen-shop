{extends file="basepage.tpl"}


{block name=page_content prepend}

        {assign var=params value=[
            'parent'    => 21
            ,'filtering'    => [
                'issale' => 1
            ]
            ,'sort' => 'publishedon'
            ,'dir'  => 'desc'
        ]}

        {processor action="web/catalog/getdata" ns="modcatalog" params=$params assign=result}

        {if $result.success && $result.count > 0}

            <div class="row">
                {foreach $result.object as $object}
                    <div class="col s12 m6 l4">
                        {include file="components/product/item.tpl" object=$object}
                    </div>
                {/foreach}
            </div>

        {/if}
{/block}