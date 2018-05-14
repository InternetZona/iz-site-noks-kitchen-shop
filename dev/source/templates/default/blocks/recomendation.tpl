<div class="block-recomendation">
    <div class="section__title">
        Нокс рекомендует
    </div>
    <div class="section__content">

        <div class="row">
            {for $i=0 to 2}
                {$responsiveClass=""}

                {if $i > 1}
                    {$responsiveClass = "hide-on-med-and-down"}
                {elseif $i > 0}
                    {$responsiveClass = "hide-on-small-and-down"}
                {/if}

                <div class="col s12 m6 l4 {$responsiveClass}">
                    {include file="components/product/item.tpl"}
                </div>
            {/for}
        </div>
    </div>
</div>