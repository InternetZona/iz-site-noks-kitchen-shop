<div class="filter-wrapper">
    <div class="row">
        <div class="col s6 hide-on-med-and-up">

        </div>
        <div class="col s6 m12 l12">
            <div class="hide-on-med-and-up">
                <a href="#modal-filter" class="modal-trigger">Фильтр</a>
            </div>
            <div class="hide-on-med-and-down">
                <ul class="filter">
                    {if $productFilters}
                        {foreach $productFilters as $productFilter}

                            {if $filter = $productFilter->getOne('Filter')}

                                <li class="filter__item">
                                    <select name="filter[{$filter->tv_key}]" class="filter__control">
                                        <option value="" selected>-</option>
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
                </ul>
            </div>
        </div>
    </div>
</div>