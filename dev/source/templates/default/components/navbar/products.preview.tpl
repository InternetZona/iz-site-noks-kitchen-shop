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

        <div class="col col--width-3 {if $object@iteration is even}hide-on-large-only hide-on-med-and-down show-on-extra-large{/if}">
            <div class="dd-panel__title center-align">Нокс рекомендует</div>
            {include file="components/product/item.preview.tpl" object=$object}
        </div>
    {/foreach}
{/if}