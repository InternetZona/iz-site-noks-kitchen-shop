{extends file="basepage.tpl"}

{block name=page_content prepend}
    <div class="row row--grid">
        <div class="col s12 m4 valign-wrapper">
            <div class="contacts-area width-overlay">
                <div class="block__title">Телефоны:</div>
                <ul class="phones">
                    <li class="phone valign-wrapper"><a href="#">+7 (495) 640-87-19</a> <span>Пн-Пт с 9:00 до 18:00</span></li>
                    <li  class="phone valign-wrapper"><a href="#">+7 (812) 640-88-20</a></li>
                </ul>
            </div>
        </div>
        <div class="col s12 m4 valign-wrapper">
            <div class="contacts-area width-overlay">
                <div class="block__title">Мессенджеры:</div>
                <ul class="messengers">
                    <li class="phone valign-wrapper"><a href="#">+7 (812) 640-88-20</a> <i class="whatsapp"></i><i class="telegram"></i><i class="viber"></i></li>
                    <li class="app valign-wrapper"><i class="skype"></i> Skype_noks</li>
                </ul>
            </div>
        </div>
        <div class="col s12 m4 valign-wrapper">
            <div class="contacts-area width-overlay">

                <a href="#modal-feedback" class="modal-trigger button">Написать письмо</a>

            </div>
        </div>
    </div>
    <div class="map--wrapper">
        <div id="map"></div>
    </div>
{/block}

{block name=aside}
    <div class="container">
        {$tvData = {tv name=images}|json_decode:true}

        {if $tvData && is_array($tvData)}
            <div class="images__feed">

                <div id="swiper-feed" class="swiper-container swiper-content images-feed__content">
                    <div class="swiper-wrapper gallery-photoswipe">
                        {foreach $tvData as $row}

                            <figure class="swiper-slide center-align">

                                {snippet name="pThumb" params=[
                                "input" => $row.image
                                ,"options" => "&w=1200&h=600&zc=0&aoe=0&far=0&q=70"
                                ] assign=thumbImage}

                                <a href="{$thumbImage}" data-size="1200x600" class="images-feed__item">

                                    {snippet name="pThumb" params=[
                                    "input" => $row.image,
                                    "options" => "&w=242&h=168&zc=1&aoe=0&far=0&q=70"
                                    ] assign=thumbImage}

                                    <img src="{$thumbImage}" class="responsive-img" />
                                </a>
                            </figure>
                        {/foreach}
                    </div>
                </div>
            </div>
        {/if}

        <div class="row">
            <div class="col s12 m6">
                <div class="contact__title left-align">Задайте нам свои вопросы</div>
                <div class="form-wrapper">
                    {include file="components/form/contact.tpl"}
                </div>
            </div>
            <div class="col s12 m6">
                <div class="contact__title left-align">Наши реквизиты</div>
                <ul class="owner-summary">
                    <li>ООО «НОКС МЕБЕЛЬ»</li>
                    <li>Адрес: г. Одинцово, ул. Акуловская, д.2а</li>
                    <li>Телефон: 8 (495) 208-88-02</li>
                    <li>Эл.почта: info@noks-kuhni.ru </li>
                </ul>
            </div>
        </div>

    </div>
{/block}

{block name=js_inject prepend}
    {include file="components/photoswipe/constructor.tpl"}
{/block}