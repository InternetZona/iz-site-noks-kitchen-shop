<div class="section block-catalog">
    <div class="section__title">
        <h1>Кухни из массива дерева</h1>
    </div>
    <div class="section_content">
        <div class="row">

            {assign var=params value=[
                'parent'    => 21
                ,'where'     => [
                    'template'  => 9
                ]
                ,'limit'    => 9
                ,'sort'     => 'publishedon'
                ,'dir'      => 'desc'
            ]}

            {processor action="site/web/resources/getdata" ns='modxsite' params=$params assign=result}

            {$i = 0}
            {foreach $result.object as $object}
                {$responsiveClass=""}

                {if $i > 7}
                    {$responsiveClass = "hide-on-med-and-down"}
                    {elseif $i > 2}
                    {$responsiveClass = "hide-on-small-and-down"}
                {/if}

                <div class="col s12 m6 l4 {$responsiveClass}">
                    {include file="components/product/item.tpl" object=$object}
                </div>

                {$i = $i +1}
            {/foreach}

        </div>
        <div class="center-align">
            <a href="{$modx->makeUrl(24)}" class="button-action" style="width: auto;">Показать еще</a>
        </div>
    </div>
</div>