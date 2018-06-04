<div id="modal-filter" class="modal right-sheet modal-filter">
    <div class="modal-content">
        <div class="modal-header">Фильтры
            <button class="modal-close" title="Закрыть (Esc)">
                <i class="fas fa-times"></i>
            </button>
        </div>
        <form id="form-filter-mobile">

            <ul class="collapsible filter-mobile">
                <li class="filter-mobile__item">
                    <div class="collapsible-header filter__label">
                        <i class="material-icons">expand_more</i>
                        Цена
                    </div>
                    <div class="collapsible-body">
                        <select name="price_range">
                            <option value="" disabled selected>-</option>
                            <option value="50000:100000">50000-100000</option>
                            <option value="100001:250000">100001-250000</option>
                            <option value="250001:500000">250001-500000</option>
                        </select>
                    </div>
                </li>
                {if $productFilters}
                    {foreach $productFilters as $productFilter}
                        {if $filter = $productFilter->getOne('Filter')}
                            {if empty($modx->resource->getTVValue($filter->tv_key))}
                                {if $filterValues = $filter->getMany('FilterValues')}
                                    <li class="filter-mobile__item">
                                        <div class="collapsible-header filter__label">
                                            <i class="material-icons">expand_more</i>
                                            {$filter->name}
                                        </div>
                                        <div class="collapsible-body">
                                            {foreach $filterValues as $data}
                                                <p>
                                                    <label>
                                                        <input type="checkbox" class="filled-in" name="{$filter->tv_key}|cat:'[]'" value="{$data->id}" />
                                                        <span>{$data->name}</span>
                                                    </label>
                                                </p>
                                            {/foreach}
                                        </div>
                                    </li>
                                {/if}
                            {/if}
                        {/if}
                    {/foreach}
                {/if}
            </ul>

        </form>
    </div>
</div>