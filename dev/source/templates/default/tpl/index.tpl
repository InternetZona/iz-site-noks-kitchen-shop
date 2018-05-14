<!DOCTYPE html>
<html>
<head>
    {snippet name="MetaX@MetaX"}
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link type="text/css" rel="stylesheet" href="{$template_url}css/style.css?{filemtime(MODX_BASE_PATH|cat:$template_url|cat:'css/style.css')}"  media="screen, projection" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
</head>

<body class="page page--footer-sticky">

{block name=main}
    <div class="main">
        {include file="components/header/index.tpl"}
        {include file="components/navbar/index.tpl"}

        {$smarty.block.child}

    </div>
{/block}

{include file="components/footer/index.tpl"}

<script async src="{$template_url}js/app.js?{filemtime(MODX_BASE_PATH|cat:$template_url|cat:'js/app.js')}"></script>
{block name=js_inject}
    {chunk name="jsInject"}
{/block}
</body>
</html>