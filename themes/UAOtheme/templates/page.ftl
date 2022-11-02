<#-- $This file is distributed under the terms of the license in LICENSE$ -->

<#import "lib-list.ftl" as l>

<!DOCTYPE html>
<html lang="${country}">
    <head>
        <#include "head.ftl">
    </head>

    <body class="${bodyClasses!}" onload="${bodyOnload!}">
       <#--   <#include "identity.ftl">  -->
       <#--   <#include "search.ftl" >  -->
        <#include "headerMenu.ftl">

		<#-- VIVO OpenSocial Extension by UCSF -->

        <#assign mainServlets = ['people','display','organizations', 'research','individual', 'login','search','entity' ]/>

        <#list mainServlets as item>
            <#if item== currentServlet>
                <#assign isMainContent=true>
                <#break>
            </#if>
            <#assign isMainContent=false>
        </#list>
        <#if isMainContent==false>
            <div id="wrapper-content" role="main">
                <#if openSocial??>
                    <#if openSocial.visible>
                        <div id="gadgets-tools" class="gadgets-gadget-parent"></div>
                    </#if>
                </#if>

                ${body}
            </div>
        <#else>
            <article  class="main-detail-container header-margin ${currentServlet} " role="main">
                <#if openSocial??>
                    <#if openSocial.visible>
                        <div id="gadgets-tools" class="gadgets-gadget-parent"></div>
                    </#if>
                </#if>

                ${body}
            </article>
        </#if>

        <#include "footer.ftl">
    </body>
</html>
