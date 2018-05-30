{extends file="basepage.tpl"}

{block name=page_content}

    <div class="row">
        <div class="col l9 push-l3">
            <div class="content-wrapper">
                {field name=content}
            </div>
        </div>
        <div class="col l3 pull-l9">
            <ul class="naviganion">
                {snippet name="Wayfinder" params=[
                    'startId'   => {field name=parent}
                    ,'outerTpl' => 'outerTpl'
                    ,'level'    => 1
                    ,'excludeDocs'  => {field name=id}
                ]}
            </ul>
        </div>
    </div>

{/block}