{extends file="messages/mgr/base.tpl"}

{block name=content}
    <p>Пользователь сайта заказал проект.</p>

    <p><strong>Комментарий:</strong> {$properties.comment|default:"-"}</p>

{/block}