<form name="feedback" class="form form--ajax" autocomplete="off">
    <input type="hidden" name="action" value="web/form">
    <input type="hidden" name="subject" value="Сообщение с сайта">
    <div class="form__field">
        <label>Ваше имя:</label>
        <input type="text" name="username" class="input-field browser-default full">
    </div>
    <div class="form__field">
        <label>Электронная почта:</label>
        <input type="text" name="email" class="input-field browser-default full">
    </div>
    <div class="form__field">
        <label>Сообщение:</label>
        <textarea name="comment" class="input-field browser-default full" rows="3"></textarea>
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