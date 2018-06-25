{$tvData = {tv name=helps}|json_decode:true}

{if $tvData && is_array($tvData)}
    <div class="section block-free">
        <div class="section__title">
            Помощь покупателю
        </div>
        <div class="section_content">
            <div class="row row--grid">

                {foreach $tvData as $data}
                    <div class="col s12 l4">
                        {include file="components/helps/item.tpl" data=$data}
                    </div>
                {/foreach}

            </div>
        </div>
    </div>
{/if}
