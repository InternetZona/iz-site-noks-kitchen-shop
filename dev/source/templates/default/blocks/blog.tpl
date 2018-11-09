{if $page = $modx->getObject('modResource', 12)}
{if $result = json_decode($page->getTVValue('blogs'), true)}
    <div class="section block-blog">
        <div class="section__title">
            Полезные советы
        </div>

        <div class="section__content">
            <div id="swiper-blog" class="swiper-container swiper-content">
                <div class="swiper-wrapper">
                    {foreach $result as $object}
                        <div class="swiper-slide">
                            {include file="components/blog/item.tpl" object=$object}
                        </div>
                    {/foreach}
                </div>
                <div class="swiper-button-prev"></div>
                <div class="swiper-button-next"></div>
            </div>
            <div class="center-align">
                <a href="{$modx->makeUrl(12)}" class="button-action" style="width: auto;">Все полезные советы</a>
            </div>
        </div>
    </div>
{/if}
{/if}
