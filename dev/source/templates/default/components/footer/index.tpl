<footer class="footer">
    <div class="container">
        <div class="row row--grid">
            <div class="col s12 m6 l3">
                {include file="components/menu/index.tpl" title="Покупателю" ids="80,2,3,4,5,12" parent="0"}
            </div>
            <div class="col s12 m6 l3">
                {include file="components/menu/index.tpl" title="Акции и спецпредложения" ids="38" parent="0"}
                {include file="components/menu/index.tpl" title="Сервис" ids="20, 81, 78" parent="0"}
            </div>
            <div class="col s12 m6 l3">
                {include file="components/menu/index.tpl" title="Каталоги" ids="24, 41, 42, 43, 44, 45, 46" parent="23"}
            </div>
            <div class="col s12 m6 l3">
                <div class="menu__title">Связаться с нами</div>
                <a class="call-phone" href="tel:84952088802">8 (495) 208-88-02</a>
                <ul class="menu">
                    <li><a href="#modal-callback" class="modal-trigger">Заказать обратный звонок</a></li>
                    <li><a href="#modal-feedback" class="modal-trigger">Написать сообщение</a></li>
                    <li><a href="#modal-order-project" class="modal-trigger">Заказать проект</a></li>
                </ul>
                {include file="components/menu/index.tpl" title="О нас" ids="6, 18, 17, 19" parent="0"}
            </div>
        </div>
        <hr>
    </div>
    <div class="footer__copyright">
        <div class="container">
            © 2012-{$smarty.now|date_format:"%Y"} | NOKS
            <small class="right">
                Любое копирование информации не для нашего промо запрещены без письменного разрешения.
            </small>
        </div>
    </div>
</footer>