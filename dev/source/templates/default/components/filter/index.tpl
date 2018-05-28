<div class="filter-wrapper">
    <div class="row">
        <div class="col s6 hide-on-med-and-up">
            <select name="sort">
                <option value="" disabled selected>Сортировка</option>
                <option value="50000:100000">50000-100000</option>
                <option value="100001:250000">100001-250000</option>
                <option value="250001:500000">250001-500000</option>
            </select>
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

                                    {if empty($modx->resource->getTVValue($filter->tv_key))}
                                        <li class="filter__item">

                                            <select name="{$filter->tv_key}">
                                                <option value="" disabled selected>-</option>
                                                {if $filterValues = $filter->getMany('FilterValues')}
                                                    {foreach $filterValues as $data}
                                                        <option value="{$data->id}">{$data->name}</option>
                                                    {/foreach}
                                                {/if}
                                            </select>
                                            <label class="filter__label">{$filter->name}</label>
                                        </li>
                                    {/if}

                                {/if}

                            {/foreach}
                        {/if}
                        <li class="filter__item">

                            <select name="price_range">
                                <option value="" disabled selected>-</option>
                                <option value="50000:100000">50000-100000</option>
                                <option value="100001:250000">100001-250000</option>
                                <option value="250001:500000">250001-500000</option>
                            </select>
                            <label class="filter__label">Цена</label>
                        </li>
                    </ul>
                </form>
            </div>
        </div>
    </div>
</div>