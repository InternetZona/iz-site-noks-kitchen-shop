{extends file="messages/base.tpl"}

{block name=body}

    {block name=content}{/block}

    {block name=clientInfo}

        <div style="font-size: 14px; font-weight: bold; margin: 15px 0 8px; text-transform: uppercase;">
            Контакты клиента
        </div>

        <ul style="list-style:none; margin: 0; padding: 0;">

            {($properties.username) ? "<li>Имя: <strong>{$properties.username}</strong></li>" : '' }
            {($properties.phone) ? "<li>Телефон: <strong>{$properties.phone}</strong></li>" : '' }
            {($properties.email) ? "<li>Эллектронная почта: <strong>{$properties.email}</strong></li>" : '' }

        </ul>

    {/block}

{/block}