<form name="order" class="form form--ajax" autocomplete="off">
    <input type="hidden" name="action" value="web/form">
    <input type="hidden" name="subject" value="Заказ кухни">
    <div class="form__field">
        <label>Ваше имя:</label>
        <input type="text" name="username" class="input-field browser-default full">
    </div>
    <div class="row">
        <div class="col s12 m6 l12">
            <div class="form__field">
                <label>Ваш телефон:</label>
                <input type="tel" name="phone" class="input-field browser-default full required-group">
            </div>
        </div>
        <div class="col s12 m6 l12">
            <div class="form__field">
                <label>Электронная почта:</label>
                <input type="text" name="email" class="input-field browser-default full required-group">
            </div>
        </div>
    </div>
    <div class="form__field">
        <label>Комментарий:</label>
        <textarea name="comment" class="input-field browser-default full" rows="2"></textarea>
    </div>
    <p class="confirm-checkbox">
        <label>
            <input type="checkbox" class="filled-in" name="agree" value="1" />
            <span>Даю согласие на использование, обработку и хранение персональных данных.</span>
        </label>
    </p>
    <div class="center-align">
        <button type="submit" class="form__submit form__submit--inverse">Оформить заказ</button>
    </div>
</form>