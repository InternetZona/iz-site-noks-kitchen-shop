<header class="header">
    <div class="header__bar">
        <div class="container">
            <div class="row">
                <div class="col s4 hide-on-med-and-up">

                    {include file="components/logo/index.tpl" image="logo.png"}

                </div>
                <div class="col s8 m12">
                    <a href="#" class="header__phone hide-on-med-and-up">8 495 640-68-19</a>

                    {include file="components/menu/topbar.tpl"}

                    <ul class="bar right">
                        <li class="bar__item favorite">
                            <a href="#" class="favorite__link">
                                <span class="favorite__text">Избранное</span>
                                <span class="favorite__counter">(2)</span>
                            </a>
                        </li>

                        <li class="bar__item quick-cart quick-cart--empty">
                            <a class='dropdowntrigger quick-cart__trigger' href='#' data-target='dd-cart'>
                                <span class="quick-cart__trigger-text">Корзина</span>
                            </a>
                            <span class="quick-cart__counter">
                                <span class="quick-cart__counter-badge">7</span>
                                <span class="quick-cart__counter-cost"><em>120 000</em> руб</span>
                            </span>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="header__content hide-on-small-and-down">
        <div class="container">
            <div class="row row--grid">
                <div class="col l4 valign-wrapper">
                    {include file="components/logo/index.tpl" image="logo-big.png"}
                </div>
                <div class="col offset-m1 m3 l5 xl4 valign-wrapper">
                    <ul class="header__action">
                        <li class="header__action-item">
                            <a href="#modal-order-visit" class="button-action modal-trigger">
                                <i class="icon icon--ruler"></i>
                                Заказать замер</a>
                        </li>
                        <li class="header__action-item">
                            <a href="#modal-order-project" class="button-action modal-trigger">
                                <i class="icon icon--project"></i>
                                Заказать проект</a>
                        </li>
                    </ul>
                </div>
                <div class="col m3 xl2 right-align valign-wrapper">
                    <ul class="header__contacts">
                        <li class="header__contacts-time">
                            Пн.-Пт. 9:00-18:00
                        </li>
                        <li>
                            <a class="header__contacts-phone" href="#">8 (812) 640-88-20</a>
                        </li>
                        <li>
                            <a class="header__contacts-phone" href="#">8 (495) 640-88-20</a>
                        </li>
                    </ul>
                </div>
                <div class="col hide-on-med-and-down hide-on-large-only show-on-extra-large xl2 valign-wrapper right-align">
                    <ul class="header__link">
                        <li>
                            <a href="#modal-callback" class="header__link-item modal-trigger">Заказать звонок</a>
                        </li>
                        <li>
                            <a href="#modal-feedback" class="header__link-item modal-trigger">Написать сообщение</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</header>