{if $page = $modx->getObject('modResource', 1)}
    {$tvData = $page->getTVValue('steps')|json_decode:true}

    {if $tvData && is_array($tvData)}

        <div class="section block-steps">
            <div class="section__title">
                Простые шаги получения кухни
            </div>
            <div class="section_content">
                <div class="row row--grid">

                    {foreach $tvData as $k => $data}
                        <div class="col l3">
                            <div class="step__item">
                                <div class="step__icon">
                                    <img src="{$data.icon}">
                                    <span class="step__num">{$k +1}</span>
                                </div>
                                <div class="step__content">
                                    <span class="step__title">{$data.title}</span>
                                    <p>{$data.text}</p>
                                </div>
                            </div>
                        </div>
                    {/foreach}
                </div>
            </div>
        </div>

    {/if}
{/if}
