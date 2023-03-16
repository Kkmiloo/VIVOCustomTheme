<#-- $This file is distributed under the terms of the license in LICENSE$ -->

<meta charset="utf-8" />
<!-- Google Chrome Frame open source plug-in brings Google Chrome's open web technologies and speedy JavaScript engine to Internet Explorer-->
 <meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="generator" content="VIVO ${version.label}" />
       

<title>${(title?html)!siteName!}</title>

<#-- VIVO OpenSocial Extension by UCSF -->
<#if openSocial??>
    <#if openSocial.visible>
        <#-- Required to add these BEFORE stylesheets.flt and headScripts.ftl are processed -->
        ${stylesheets.add('<link rel="stylesheet" href="${urls.theme}/css/openSocial/gadgets.css" />')}
        ${headScripts.add('<script type="text/javascript" src="${openSocial.containerJavascriptSrc}"></script>',
                          '<script type="text/javascript" language="javascript">${openSocial.gadgetJavascript}</script>',
                          '<script type="text/javascript" src="${urls.base}/js/openSocial/orng.js"></script>')}
    </#if>
</#if>

<#--  <#include "stylesheets.ftl">  -->
<#--  <link rel="stylesheet" href="${urls.theme}/css/screen.css" />  -->
<link rel="stylesheet" href="${urls.theme}/css/uao.css" />
<link rel="stylesheet" href="${urls.theme}/css/uao-virtual.css" />
<link rel="stylesheet" href="${urls.theme}/css/test.css" />
<link rel="stylesheet" href="${urls.theme}/css/swiper-bundle.min.css" />
<link rel="stylesheet" href="${urls.theme}/css/slider.css" />
<link rel="stylesheet" href="${urls.base}/templates/freemarker/edit/forms/css/institutionalInternalClass.css" />
<link rel="stylesheet" href="${urls.base}/css/account/account.css" />
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/yasgui-yasqe@2.11.22/dist/yasqe.min.css">

<link href="https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css" rel="stylesheet">
<link rel="icon" type="image/x-icon" href="https://www.uao.edu.co/wp-content/themes/uao-theme/assets/favicon/favicon-32x32.png">
<#include "headScripts.ftl">

<#if metaTags??>
    ${metaTags.list()}
</#if>

<!--[if (gte IE 6)&(lte IE 8)]>
<script type="text/javascript" src="${urls.base}/js/selectivizr.js"></script>
<![endif]-->

<#-- Inject head content specified in the controller. Currently this is used only to generate an rdf link on
an individual profile page. -->
${headContent!}

<link rel="shortcut icon" type="image/x-icon" href="${urls.base}/favicon.ico">
