{if $data.file}
    <div class="card box-testimonials box-testimonials--video">
        <a href="#">
            <div class="card-image">
                <img src="{$template_url}img/video-preview.jpg">
            </div>
        </a>
        <div class="card-content">
            <ul class="collection">
                <li class="collection-item avatar left-align">
                    <span class="title">Салтыкова Александра</span>
                    <p>Кухня Нью-Йорк <br>
                        <span class="rate">
                                            <i class="material-icons tiny">star</i>
                                            <i class="material-icons tiny">star</i>
                                            <i class="material-icons tiny">star</i>
                                            <i class="material-icons tiny">star</i>
                                            <i class="material-icons tiny">star_border</i>
                                        </span>
                    </p>
                </li>
            </ul>
        </div>
    </div>

    {else}

    <div class="card box-testimonials box-testimonials--text">
        <div class="card-image">
            <img src="{$template_url}img/text-bg.jpg">
            <p>
                {$data.text}
            </p>
        </div>
        <div class="card-content">
            <ul class="collection">
                <li class="collection-item avatar left-align">
                    {snippet name="pThumb" params=[
                        "input" => $data.avatar
                        ,"options" => "&w=46&h=46&zc=1&aoe=0&far=0&q=70"
                    ] assign=thumbImage}

                    <img src="{$thumbImage}" alt="" class="circle">
                    <span class="title">Салтыкова Александра</span>
                    <p>Кухня Нью-Йорк <br>
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

{/if}