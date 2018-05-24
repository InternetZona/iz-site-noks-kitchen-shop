{extends file="basepage.tpl"}

{block name=page_content}
    <div class="row">
        <div class="col s12 m12 l8">
            <div class="video-container" data-video-hash="{tv name=video}">
                <video class="responsive-video content-player"></video>
            </div>
        </div>
        <div class="col s12 m12 l4">
            <div class="content-wrapper">
                {field name=content}
            </div>
        </div>
    </div>
{/block}