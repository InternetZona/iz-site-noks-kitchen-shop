{if $productType = $modx->getObject('catalogProductType', [
    'template_id'   => $product->template
])}



    {if $productFilters = $productType->getMany('ProductTypeFilters')}

        <ul class="product__params">

            {foreach $productFilters as $productFilter}

                {if $filter = $productFilter->getOne('Filter')}

                    {if $value = $modx->getObject('catalogFilterValue', $product->getTVValue($filter->tv_key))}
                        <li>{$filter->name}: <span>{$value->name}</span></li>
                    {/if}

                {/if}

            {/foreach}

        </ul>

    {/if}

{/if}