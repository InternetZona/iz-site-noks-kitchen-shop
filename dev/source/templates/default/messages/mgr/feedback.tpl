{extends file="messages/mgr/base.tpl"}

{block name=content}
    <p>Пользователь сайта прислал сообщение.</p>

    <p><strong>Сообщение:</strong> {$properties.comment|default:"-"}</p>

{/block}