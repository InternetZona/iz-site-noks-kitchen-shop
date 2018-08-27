{$itemList = array_splice($data|json_decode:true, 0, 2)}

{foreach $itemList as $item}
    {assign var=params value=[
        'id'    => $item.itemId
        ,'cache'    => true
        ,'current'  => true
    ]}

    {processor action="web/catalog/getdata" ns='modcatalog' params=$params assign=result}

    {if $result.success && $result.count > 0}
        <div class="col col--width-3 {if $item@iteration is even}hide-on-large-only hide-on-med-and-down show-on-extra-large{/if}">
            <div class="dd-panel__title center-align">{$item.title}</div>
            {include file="components/product/item.preview.tpl" object=$result.object}
        </div>
    {/if}
{/foreach}