{if $productType = $modx->getObject('catalogProductType', [
    'template_id'   => $product->template
])}
    {if $productFilters = $productType->getMany('ProductTypeFilters')}

        <ul class="product__params">

            {foreach $productFilters as $productFilter}

                {if $filter = $productFilter->getOne('Filter')}

                    {if $filter->id != 5}
                        {if $filter->multiple == 'listbox'}
                            {if $value = $modx->getObject('catalogFilterValue', $product->getTVValue($filter->tv_key))}
                                <li>{$filter->name}: <a href="{link id="{$value->res_id}"}"><span>{$value->name}</span></a></li>
                            {/if}

                        {else}

                            {$data = explode('||', $product->getTVValue($filter->tv_key))}

                            {if $data && is_array($data)}
                                {assign var=values value=[]}
                                {foreach $data as $id}
                                    {if $value = $modx->getObject('catalogFilterValue', $id)}
                                        {$values[] = $value->name}
                                    {/if}
                                {/foreach}
                                {if $values}
                                    <li>{$filter->name}: <a href="{link id="{$value->res_id}"}"><span>{implode(', ', $values)}</span></a></li>
                                {/if}
                            {/if}

                        {/if}
                    {/if}

                {/if}

            {/foreach}

        </ul>

    {/if}

{/if}