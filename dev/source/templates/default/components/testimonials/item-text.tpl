<div class="card box-testimonials box-testimonials--text">
    <a href="#modal-testimonial-text" class="modal-trigger" data-testimonial-id="{$data.MIGX_id}">
        <div class="card-image">
            <img src="{$template_url}img/text-bg.jpg">
            <p>
                {$data.text|truncate:210:"...":true}
            </p>
        </div>
    </a>
    <div class="card-content">
        <ul class="collection">
            <li class="collection-item avatar left-align">
                <span class="title">{$data.name}</span>
                <p>{$data.product} <br>
                    <span class="rate">
                            {for $i=1 to 5}
                                {if $i > $data.rate}
                                    <i class="material-icons tiny">star_border</i>
                                    {else}
                                    <i class="material-icons tiny">star</i>
                                {/if}
                            {/for}
                        </span>
                </p>
            </li>
        </ul>
    </div>
</div>