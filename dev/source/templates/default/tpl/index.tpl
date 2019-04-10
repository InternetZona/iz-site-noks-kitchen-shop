<!DOCTYPE html>
<html>
<head>
    {snippet name="SEOManager"}
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

    [[MinifyX?
    &minifyCss=`1`
    &minifyJs=`1`
    &registerCss=`default`
    &registerJs=`default`
    &cssSources=`
    {$template_url}css/style.css?{filemtime(MODX_BASE_PATH|cat:$template_url|cat:'css/style.css')},
    {$template_url}css/izstyle.css??{filemtime(MODX_BASE_PATH|cat:$template_url|cat:'css/izstyle.css')},
    https://{$smarty.server.HTTP_HOST}/ajax-form/css/style.css?{filemtime('ajax-form/css/style.css')}
    `
    &jsSources=`
    {$template_url}js/jquery-3.3.1.js?{filemtime(MODX_BASE_PATH|cat:$template_url|cat:'js/jquery-3.3.1.js')},
    {$template_url}js/izscripts.js?{filemtime(MODX_BASE_PATH|cat:$template_url|cat:'js/izscripts.js')},
    {$template_url}js/app.js?{filemtime(MODX_BASE_PATH|cat:$template_url|cat:'js/app.js')},
    https://{$smarty.server.HTTP_HOST}/ajax-form/js/jquery.knob.js?{filemtime('ajax-form/js/jquery.knob.js')},
    https://{$smarty.server.HTTP_HOST}/ajax-form/js/jquery.ui.widget.js?{filemtime('ajax-form/js/jquery.ui.widget.js')},
    https://{$smarty.server.HTTP_HOST}/ajax-form/js/jquery.iframe-transport.js?{filemtime('ajax-form/js/jquery.iframe-transport.js')},
    https://{$smarty.server.HTTP_HOST}/ajax-form/js/jquery.fileupload.js?{filemtime('ajax-form/js/jquery.fileupload.js')},
    https://{$smarty.server.HTTP_HOST}/ajax-form/js/script.js?{filemtime('ajax-form/js/script.js')}
    `
    ]]

    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    {literal}
        <!-- Facebook Pixel Code -->
        <script>
            !function(f,b,e,v,n,t,s)
            {if(f.fbq)return;n=f.fbq=function(){n.callMethod?
                n.callMethod.apply(n,arguments):n.queue.push(arguments)};
                if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version='2.0';
                n.queue=[];t=b.createElement(e);t.async=!0;
                t.src=v;s=b.getElementsByTagName(e)[0];
                s.parentNode.insertBefore(t,s)}(window,document,'script',
                'https://connect.facebook.net/en_US/fbevents.js');
            fbq('init', '322420731278246');
            fbq('track', 'PageView');
        </script>
        <noscript>
            <img height="1" width="1"
                 src="https://www.facebook.com/tr?id=322420731278246&ev=PageView
&noscript=1"/>
        </noscript>
        <!-- End Facebook Pixel Code -->
        <script type="text/javascript">!function(){var t=document.createElement("script");t.type="text/javascript",t.async=!0,t.src="https://vk.com/js/api/openapi.js?160",t.onload=function(){VK.Retargeting.Init("VK-RTRG-315783-cNzmz"),VK.Retargeting.Hit()},document.head.appendChild(t)}();</script><noscript><img src="https://vk.com/rtrg?p=VK-RTRG-315783-cNzmz" style="position:fixed; left:-999px;" alt=""/></noscript>
    {/literal}
</head>

<body class="page page--footer-sticky">

{block name=main}
    <div class="main">
        {include file="components/header/index.tpl"}
        {include file="components/navbar/index.tpl"}

        {$smarty.block.child}

    </div>
{/block}

<a href="#" class="scroll-up">
    Наверх
</a>

{include file="components/footer/index.tpl"}
{include file="components/navbar/sidenav.tpl"}

{block name=modals}
    {include file="components/modals/callback.tpl"}
    {include file="components/modals/showcallback.tpl"}
    {include file="components/modals/feedback.tpl"}
    {include file="components/modals/order.project.tpl"}
    {include file="components/modals/order.visit.tpl"}
    {include file="components/modals/calculation.tpl"}
{/block}

{block name=js_inject}
    {chunk name="jsInject"}
{/block}
</body>
</html>