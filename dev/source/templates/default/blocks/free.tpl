
{$tvData = {tv name=freePackage}|json_decode:true}

{if $tvData && is_array($tvData)}
    <div class="section block-free">
        <div class="section__title">
            Бесплатный сервис пакет
        </div>
        <div class="section_content">
            <div class="row row--grid">

                {assign var=freeList value=[]}

                {foreach $tvData as $data}

                    {$freeList[$data.MIGX_id] = $data.content}

                    <div class="col s12 l3">
                        <a class="waves-effect waves-light modal-trigger" href="#modal-free" data-content-id="{$data.MIGX_id}">
                            <div class="card horizontal box-free">
                                <div class="card-image">
                                    <img src="{$data.icon}">
                                </div>
                                <div class="card-stacked">
                                    <div class="card-content">
                                        <p>{$data.title}</p>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                {/foreach}

                <script>
                  var freeList = {$freeList|json_encode};
                </script>

            </div>
        </div>
    </div>
{/if}
