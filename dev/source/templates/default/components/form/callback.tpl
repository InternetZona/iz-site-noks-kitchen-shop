<form name="callback" class="form form--ajax" autocomplete="off">
    <input type="hidden" name="action" value="web/form">
    <input type="hidden" name="subject" value="Заказ обратного звонка">
    <div class="form__field">
        <label>Ваше имя:</label>
        <input type="text" name="username" class="input-field browser-default full">
    </div>
    <div class="form__field">
        <label>Ваш телефон:</label>
        <input type="tel" name="phone" class="input-field browser-default full">
    </div>
    <p class="confirm-checkbox">
        <label>
            <input type="checkbox" class="filled-in" name="agree" value="1" />
            <span>Даю согласие на использование, обработку и хранение персональных данных.</span>
        </label>
    </p>
    <div class="center-align">
        <button type="submit" class="form__submit form__submit--inverse">Отправить</button>
    </div>
</form>