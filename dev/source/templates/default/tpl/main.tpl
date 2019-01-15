{extends file="tpl/index.tpl"}

{block name=main}
    <div class="container">
        {include file="components/banner/index.tpl"}
        <!--noindex-->
        {include file="blocks/helps.tpl"}
        <!--/noindex-->
        {include file="blocks/catalog.tpl"}
    </div>

    <div class="grey-bg">
        <div class="container">
            {include file="blocks/sales.tpl"}
        </div>
    </div>

    <div class="container">
        {include file="blocks/recomendation.tpl"}
        {include file="blocks/steps.tpl"}
        {include file="blocks/request.tpl"}
        {include file="blocks/blog.tpl"}
        {include file="blocks/testimonials.tpl"}
        {*
        {include file="blocks/portfolio.tpl"}
    *}
        {include file="blocks/free.tpl"}
        {include file="blocks/featured.tpl"}
        {include file="blocks/request.tpl"}
        {include file="blocks/brands.tpl"}
        <div class="row">
            <div class="col s12 m6 l6">{tv name=footertext}</div>
            <div class="col s12 m6 l6">{tv name=footertext2}</div>
        </div>
    </div>
{/block}

{block name=modals append}
    {include file="components/modals/testimonials.tpl"}
    {include file="components/modals/free.tpl"}
    {include file="components/modals/help.tpl"}
{/block}