{assign var=params value=[
'parent'    => 21
,'filtering'    => [
    'istop'    => 1
]
,'limit'    => 2
,'dir'      => 'RAND()'
]}

{processor action="web/catalog/getdata" ns='modcatalog' params=$params assign=result}

{if $result.success && $result.count > 0}
    {foreach $result.object as $object}

        <div class="col l3">
            <div class="menu__title">Нокс рекомендует</div>
            {include file="components/product/item.preview.tpl" object=$object}
        </div>
    {/foreach}
{/if}