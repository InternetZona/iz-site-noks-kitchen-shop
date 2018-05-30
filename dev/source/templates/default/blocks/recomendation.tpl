{assign var=params value=[
    'parent'    => 21
    ,'filtering'    => [
        'istop'    => 1
    ]
    ,'limit'    => 3
    ,'dir'      => 'RAND()'
]}

{processor action="web/catalog/getdata" ns='modcatalog' params=$params assign=result}

{if $result.success && $result.count > 0}
    <div class="block-recomendation">
        <div class="section__title">
            Нокс рекомендует
        </div>
        <div class="section__content">

            <div class="row">
                {$i = 0}
                {foreach $result.object as $object}
                    {$responsiveClass=""}

                    {if $i > 1}
                        {$responsiveClass = "hide-on-med-and-down"}
                    {elseif $i > 0}
                        {$responsiveClass = "hide-on-small-and-down"}
                    {/if}

                    <div class="col s12 m6 l4 {$responsiveClass}">
                        {include file="components/product/item.tpl" object=$object}
                    </div>
                    {$i = $i + 1}
                {/foreach}
            </div>
        </div>
    </div>
{/if}