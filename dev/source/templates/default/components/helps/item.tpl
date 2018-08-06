<a href="{$modx->makeUrl($data.resourceId|default:1)}">
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