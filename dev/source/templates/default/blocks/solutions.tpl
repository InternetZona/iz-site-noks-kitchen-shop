{assign var=params value=[
    'parent'    => 7
    ,'dir'      => 'DESC'
    ,'sort'     => 'publishedon'
    ,'limit'    => 4
    ,'cache'    => true
]}
{processor action="site/web/resources/getdata" params=$params ns="modxsite" assign=result}

{if $result.success && $result.count > 0}
    <div class="section block-solutions">
        <div class="section__title">
            Интересные решения от дизайнеров
        </div>
        <div class="section_content">
            <div class="row">

                {$i = 0}
                {foreach $result.object as $object}

                    {$responsiveClass = ""}

                    {if $i > 2}
                        {$responsiveClass = "hide-on-med-and-down"}
                    {elseif $i > 0}
                        {$responsiveClass = "hide-on-small-only"}
                    {/if}

                    <div class="col s12 m4 l3 {$responsiveClass}">
                        {include file="components/solution/item.tpl" object=$object}
                    </div>

                    {$i = $i + 1}
                {/foreach}

            </div>
        </div>
    </div>
{/if}
