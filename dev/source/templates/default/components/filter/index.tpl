<div class="filter-wrapper">
    <ul class="filter">
        {if $productFilters}
            {foreach $productFilters as $productFilter}

                {if $filter = $productFilter->getOne('Filter')}

                    <li class="filter__item">
                        <select name="filter[{$filter->tv_key}]" class="filter__control">
                            <option value="" selected>Все</option>
                            {if $filterValues = $filter->getMany('FilterValues')}

                                {$lock = false}

                                {foreach $filterValues as $data}

                                    {$selected = ''}

                                    {if !$lock }
                                        {if $smarty.get.filter.{$filter->tv_key} == $data->id}
                                            {$selected = 'selected'}
                                            {$lock = true}
                                        {elseif $modx->resource->getTVValue($filter->tv_key) == $data->id}
                                            {$selected = 'selected'}
                                        {/if}
                                    {/if}

                                    <option value="{$data->id}" {$selected}>{$data->name}</option>
                                {/foreach}
                            {/if}
                        </select>
                        <label class="filter__label">{$filter->name}</label>
                    </li>

                {/if}

            {/foreach}
        {/if}
        <li class="filter__item">

            {include file="components/filter/range.tpl"}

            <label class="filter__label">Цена</label>
        </li>
        <li class="filter__item">

            {$url = ({field name=parent} != 23) ? $modx->makeUrl({field name=parent}) : $modx->makeUrl({field name=id}) }

            <a href="{$url}" class="button-reset" onclick="yaCounter49093180.reachGoal('filtr');">Сбросить фильтр</a>
        </li>
    </ul>
</div>