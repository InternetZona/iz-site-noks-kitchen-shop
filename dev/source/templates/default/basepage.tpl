{extends file="tpl/index.tpl"}

{block name=main}
    <div class="section container">
        {snippet name="BreadCrumb@BreadCrumb"}
        <h1>{field name=pagetitle}</h1>

        <div class="section page__content">

            {block name=page_content}
                <div class="content-wrapper">
                    {field name=content}
                </div>
            {/block}

        </div>

    </div>

    {block name=aside}{/block}
{/block}