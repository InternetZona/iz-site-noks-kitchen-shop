{extends file="basepage.tpl"}


{block name=page_content prepend}

    {assign var=productType value=$modx->getObject('catalogProductType', [
        'seo_template_id'   => {field name=template}
    ])}
    {assign var=productFilters value=''}

    {if $productType}
        {$productFilters = $productType->getMany('ProductTypeFilters')}
    {/if}

    {if $productFilters}
        {include file="components/filter/index.tpl" productFilters=$productType->getMany('ProductTypeFilters')}
        {include file="components/modals/filter.tpl" productFilters=$productFilters}
    {/if}

    {if $productType}

        {assign var=params value=[
            'parent'    => 21
            ,'where'    => [
                'template' => $productType->template_id
            ]
            ,'sort' => 'publishedon'
            ,'dir'  => 'desc'
            ,'filtering' => {snippet name="getSeoFilter"}
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

    {/if}
{/block}