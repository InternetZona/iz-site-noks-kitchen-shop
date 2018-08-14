{$tvData = {tv name=helps}|json_decode:true}

{if $tvData && is_array($tvData)}
    <div class="section block-free">
        <div class="section__title">
            Почему выбирают нас
        </div>
        <div class="section_content">
            <div class="row row--grid">

                {assign var=helpList value=[]}

                {foreach $tvData as $data}

                    {$helpList[$data.MIGX_id] = $data.content}

                    <div class="col s12 l4">
                        <a class="waves-effect waves-light modal-trigger" href="#modal-help" data-content-id="{$data.MIGX_id}">
                            <div class="card horizontal box-helps">
                                <div class="card-image">
                                    <img src="{$data.icon}">
                                </div>
                                <div class="card-stacked">
                                    <div class="card-content">
                                        <div>
                                            <span class="card-title">{$data.title}</span>
                                            <p>{$data.text}</p>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                {/foreach}

                <script>
                  var helpList = {$helpList|json_encode};
                </script>

            </div>
        </div>
    </div>
{/if}
