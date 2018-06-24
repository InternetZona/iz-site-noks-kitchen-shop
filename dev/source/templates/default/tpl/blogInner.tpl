{extends file="basepage.tpl"}

{block name=page_content}

    <div class="row">
        <div class="col l9 push-l3">
            <div class="content-wrapper">
                {field name=content}
            </div>
        </div>
        <div class="col l3 pull-l9">
            {include file="components/menu/folder.tpl" parent=12 title="Полезные советы"}
        </div>
    </div>

{/block}