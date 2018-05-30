<div class="filter-wrapper">
    <div class="row">
        <div class="col s6 hide-on-med-and-up">

        </div>
        <div class="col s6 m12 l12">
            <div class="hide-on-med-and-up">
                <a href="#modal-filter" class="modal-trigger">Фильтр</a>
            </div>
            <div class="hide-on-med-and-down">
                <form id="form-filter" class="form">
                    <ul class="filter">
                        {if $productFilters}
                            {foreach $productFilters as $productFilter}

                                {if $filter = $productFilter->getOne('Filter')}

                                    <li class="filter__item">
                                        <select name="filter[{$filter->tv_key}]">
                                            <option value="" selected>-</option>
                                            {if $filterValues = $filter->getMany('FilterValues')}
                                                {foreach $filterValues as $data}
                                                    <option value="{$data->id}" {if $smarty.get.filter.{$filter->tv_key} == $data->id}selected{/if}>{$data->name}</option>
                                                {/foreach}
                                            {/if}
                                        </select>
                                        <label class="filter__label">{$filter->name}</label>
                                    </li>

                                {/if}

                            {/foreach}
                        {/if}
                        <li class="filter__item">

                            <select name="filter[price_range]">
                                <option value="" selected>-</option>

                                {$price_range = [
                                    '50000:100000', '100001:250000', '250001:500000'
                                ]}

                                {foreach $price_range as $range}
                                    {$selected = ($range == $smarty.get.filter.price_range) ? 'selected' : '' }
                                    <option value="{$range}" {$selected}>{$range}</option>
                                {/foreach}
                            </select>
                            <label class="filter__label">Цена</label>
                        </li>
                    </ul>
                </form>
            </div>
        </div>
    </div>
</div>