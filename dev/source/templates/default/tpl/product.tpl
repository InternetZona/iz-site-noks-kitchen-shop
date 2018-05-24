{extends file="tpl/index.tpl"}

{block name=main}
    <div class="section container">
        {snippet name="BreadCrumb@BreadCrumb"}

        <div class="section page__content">

            <div class="row">
                <div class="col s12 m6 l8">
                    {include file="components/product/gallery.tpl"}
                </div>
                <div class="col s12 m6 l4">
                    <h1>{field name=pagetitle}</h1>
                </div>
            </div>

        </div>

        {assign var=content value={field name=content}}
        {assign var=fasadeList value={tv name=fasade}|json_decode:true}
        {assign var=colorsList value={tv name=colors}|json_decode:true}
        {assign var=equipList value={tv name=colors}|json_decode:true}

        {if $content || $fasadeList || $colorsList || $equipList}
            <div class="row product-tabs">
                <div class="col s12">
                    <ul id="product-overview" class="tabs">
                        {if $content}
                            <li class="tab col s12 m3"><a href="#tab-content">Описание</a></li>
                        {/if}
                        {if $fasadeList}
                            <li class="tab col s12 s3"><a href="#tab-fasade">Варианты фасадов</a></li>
                        {/if}
                        {if $colorsList}
                            <li class="tab col s12 s3"><a href="#tab-colors">Цветовые решения</a></li>
                        {/if}
                        {if $equipList}
                            <li class="tab col s12 s3"><a href="#tab-options">Комплектация и цены</a></li>
                        {/if}
                    </ul>
                </div>
                {if $content}
                    <div id="tab-content" class="tab__item col s12">
                        <div class="content-wrapper">
                            {$content}
                        </div>
                    </div>
                {/if}
                {if $fasadeList}
                    <div id="tab-fasade" class="tab__item col s12">
                        <div class="row row--grid">
                            {foreach $fasadeList as $data}
                                <div class="col s6 m4 l3 xl2">
                                    {include file="components/product/fasade.tpl" data=$data}
                                </div>
                            {/foreach}
                        </div>
                    </div>
                {/if}
                {if $colorsList}
                    <div id="tab-colors" class="tab__item col s12">
                        <div class="row row--grid">
                            {foreach $colorsList as $data}
                                <div class="col s6 m4 l3 xl2">
                                    {include file="components/product/colors.tpl" data=$data}
                                </div>
                            {/foreach}
                        </div>
                    </div>
                {/if}
                <div id="tab-options" class="tab__item col s12">
                    Цены
                </div>
            </div>
        {/if}

        {include file="blocks/testimonials.tpl"}
        {include file="blocks/steps.inner.tpl"}
        {include file="blocks/request.tpl"}
    </div>

{/block}

{block name=modals append}
    {include file="components/modals/testimonials.tpl"}
{/block}

{block name=js_inject prepend}
    {include file="components/photoswipe/constructor.tpl"}
{/block}