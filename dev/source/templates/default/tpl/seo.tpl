{extends file="basepage.tpl"}

{block name=page_content prepend}

    {assign var=productType value=$modx->getObject('catalogProductType', [
        'seo_template_id'   => {field name=template}
    ])}

    {if $productType}

        {$limit = 15}

        {if isset($smarty.get.limit)}
            {$limit = (in_array($smarty.get.limit, [0, 15, 30, 45])) ? $smarty.get.limit : $limit }
        {/if}

        {block name=catalogParams}
            {$params=[
            'parent'    => 21
            ,'where'    => [
                'template' => $productType->template_id
            ]
            ,'sort' => 'publishedon'
            ,'dir'  => 'desc'
            ,'limit'    => $limit
            ,'filtering' => {snippet name="getSeoFilter"}
            ,'sorting'  => $smarty.get.sorting|default:false
            ]}
        {/block}

        {processor action="web/catalog/getdata" ns="modcatalog" params=$params assign=result}

        <form id="form-catalog-controller" class="form" data-catalog="21" data-tpl="{$productType->template_id}">
            <input type="hidden" name="limit" value="{$limit}">

            {if $productFilters = $productType->getMany('ProductTypeFilters')}
                {include file="components/filter/index.tpl" productFilters=$productFilters}
            {/if}
            <div class="sorting--wrapper">
                <div class="row row--grid">
                    <div class="col m6 valign-wrapper">
                        <div class="summary-wrapper">
                            Всего товаров: <strong class="text--bold">{$result.total}</strong>
                        </div>
                    </div>
                    <div class="col m6 valign-wrapper">
                        <div class="right-align width-overlay">
                            <div class="sorting-control--wrapper">
                                Сортировать
                                {include file="components/filter/sort.tpl"}
                            </div>
                            <div class="switch-limit--wrapper">
                                Выводить по:
                                <ul class="switch-limit">
                                    {$active = ($limit == 15) ? 'active' :''}
                                    <li><a href="#" data-limit="15" class="{$active}">15</a></li>
                                    {$active = ($limit == 30) ? 'active' :''}
                                    <li><a href="#" data-limit="30" class="{$active}">30</a></li>
                                    {$active = ($limit == 45) ? 'active' :''}
                                    <li><a href="#" data-limit="45" class="{$active}">45</a></li>
                                    {$active = ($limit == 0) ? 'active' :''}
                                    <li><a href="#" data-limit="0" class="{$active}">Все</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>

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

{block name=aside}
    <div class="grey-bg">
        <div class="container">
            {include file="blocks/sales.tpl"}
        </div>
    </div>
    <div class="container">
        {include file="blocks/steps.inner.tpl"}
        {include file="blocks/request.tpl"}
        {include file="blocks/recomendation.tpl"}
        {include file="blocks/blog.tpl"}
        {include file="blocks/testimonials.tpl"}
        {include file="blocks/portfolio.tpl"}
        {include file="blocks/helps.tpl"}
        {include file="blocks/request.tpl"}
    </div>
{/block}

{block name=modals append}
    {include file="components/modals/testimonials.tpl"}
{/block}