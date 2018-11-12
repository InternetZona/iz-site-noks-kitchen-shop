{extends file="basepage.tpl"}

{block name=main}
    <div class="section container">

        <div class="row">
            <div class="col l9 push-l3">
                {snippet name="BreadCrumb@BreadCrumb"}
                <h1>{field name=pagetitle}</h1>

                <div class="section page__content row">

                    <div class="content-wrapper">
                        {field name=content}
                    </div>

                    <a href="#modal-callback" class="button-action modal-trigger col s8 m3 l3 margin20" onclick="yaCounter49093180.reachGoal('call');">
                        <i class="icon material-icons">phone</i>
                        Заказать звонок</a>
                    <a href="#modal-feedback" class="button-action modal-trigger col s8 m3 l3 margin20" onclick="yaCounter49093180.reachGoal('soob');">
                        <i class="icon material-icons">mail</i>
                        Написать</a>

                </div>

            </div>

            <div class="col l3 pull-l9">

    {if $page = $modx->getObject('modResource', 12)}
    {if $result = json_decode($page->getTVValue('blogs'), true)}
        <div class="leftmenu">
                {foreach $result as $object}
                    <span class="card-title">{$object.name}</span>
                    <div class="product__params-reveal">
                        <ul>
                            {if $object.res|is_array}
                                {foreach from=$object.res item="item"}
                                    <li><a href="{$modx->makeUrl({$item})}">{snippet name="pdoField" params=['id' => {$item} ,'field' => 'pagetitle']}</a></li>
                                {/foreach}
                            {else if $object.res}
                                <li><a href="{$modx->makeUrl({$object.res})}">{snippet name="pdoField" params=['id' => {$object.res} ,'field' => 'pagetitle']}</a></li>
                            {/if}
                        </ul>
                    </div>
                {/foreach}
        </div>
{/if}
    {/if}
            </div>
        </div>

    </div>

    {block name=aside}{/block}
{/block}