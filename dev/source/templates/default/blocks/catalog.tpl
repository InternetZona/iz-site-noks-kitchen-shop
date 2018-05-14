<div class="section block-catalog">
    <div class="section__title">
        Каталог
    </div>
    <div class="section_content">
        <div class="row">

            {for $i=0 to 8}
                {$responsiveClass=""}

                {if $i > 7}
                    {$responsiveClass = "hide-on-med-and-down"}
                    {elseif $i > 2}
                    {$responsiveClass = "hide-on-small-and-down"}
                {/if}

                <div class="col s12 m6 l4 {$responsiveClass}">
                    {include file="components/product/item.tpl"}
                </div>
            {/for}

        </div>
    </div>
</div>