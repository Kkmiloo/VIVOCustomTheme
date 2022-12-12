<#-- $This file is distributed under the terms of the license in LICENSE$ -->

</header>

<#include "developer.ftl">

<header id="header-menu-desktop" class="fixed has-scroll-indicator">
    <div id ="hmd-bottom"> 
        <div id="hmdb-logo-container">
            <a id="hmdb-logo" href="${urls.base}/"></a>
        </div>
        <#if currentServlet!='home'>
        <#include "search.ftl"> 
        </#if>
        <ul role="list">
            <#list menu.items as item>
            <li role="listitem"><a href="${item.url}" title="${item.linkText} ${i18n().menu_item}" <#if item.active> class="selected" </#if>>${item.linkText}</a></li>
            </#list>
            <#include "languageSelector.ftl">
            <#if user.loggedIn>
                <#-- COMMENTING OUT THE EDIT PAGE LINK FOR RELEASE 1.5. WE NEED TO IMPLEMENT THIS IN A MORE
                     USER FRIENDLY WAY. PERHAPS INCLUDE A LINK ON THE PAGES THEMSELVES AND DISPLAY IF THE
                     USER IS A SITE ADMIN. tlw72

                     <#if (page??) && (page?is_hash || page?is_hash_ex) && (page.URLToEditPage??) >
                        <li role="listitem"><a href="${page.URLToEditPage}" title="${i18n().identity_edit}">${i18n().identity_edit}</a></li>
                     </#if>
                -->
                    <li class="hov">
                        
                            <a href="#" title="${i18n().identity_user}">Hola, ${user.loginName}
                                <span class="icon icon-angle-down"></span>
                            </a>
                                <ul class="dropList" >
                                     <#if user.hasProfile>
                                         <li role="listitem"><a href="${user.profileUrl}" title="${i18n().identity_myprofile}">${i18n().identity_myprofile}</a></li>
                                     </#if>
                                                                    <#if user.hasSiteAdminAccess>
                                    <li role="listitem"><a href="${urls.siteAdmin}" title="${i18n().identity_admin}">${i18n().identity_admin}</a></li>
                                </#if>
                                     <#if urls.myAccount??>
                                         <li role="listitem"><a href="${urls.myAccount}" title="${i18n().identity_myaccount}">${i18n().identity_myaccount}</a></li>
                                     </#if>
                                     <li role="listitem"><a href="${urls.logout}" title="${i18n().menu_logout}">${i18n().menu_logout}</a></li>
                                </ul>
                            
                         
                     </li>

                ${scripts.add('<script type="text/javascript" src="${urls.base}/js/userMenu/userMenuUtils.js"></script>')}

            <#else>
                <li role="listitem"><a class="log-out" title="${i18n().menu_loginfull}" href="${urls.login}">${i18n().menu_login}</a></li>
            </#if>
            

        </ul>
    </div>
</header>

<header id="header-menu-mobile" class="fixed has-scroll-indicator">
    <div id="hmm-top">
        <span class="hmmt-line"></span>
        <a href="#" id="hmmb-menu-icon">
        <span class="icon icon-hamburguesa"></span>
        <p>Menú</p>
        </a>
<#--          <a href="https://www.uao.edu.co" class="hmmt-logo">
        <figure class="gf-figure-logo">
        <img loading="lazy" src="https://pattern.uao.edu.co/images/UAO-logo.png" alt="UAO">
        </figure>
        </a>  -->
        <a href="#" id="hmmt-search">
        <div class="circle-icon">
        <span class="icon icon-search"></span>
        </div>
        <p>Buscar</p>
        </a>
        <span class="scroll-indicator"></span>
    </div>

    <div id ="hmm-bottom" > 


        <div class="hmmb-icons">
            <a href="#" id="hmmb-menu-icon-close">
            <div class="circle-icon">
            <span class="icon icon-close"></span>
            </div>
            <p>Cerrar</p>
            </a>

    </div>

   

   

        <#if currentServlet!='home'>
        <#include "search.ftl"> 
        </#if>
        <ul class="hmmb-principal" role="list">
            <#list menu.items as item>
            <li role="listitem" class="hmmbp-title"><a href="${item.url}" title="${item.linkText} ${i18n().menu_item}" <#if item.active> class="selected" </#if>>${item.linkText}</a></li>
            </#list>
            <#include "languageSelector.ftl">
            <#if user.loggedIn>
                <#-- COMMENTING OUT THE EDIT PAGE LINK FOR RELEASE 1.5. WE NEED TO IMPLEMENT THIS IN A MORE
                     USER FRIENDLY WAY. PERHAPS INCLUDE A LINK ON THE PAGES THEMSELVES AND DISPLAY IF THE
                     USER IS A SITE ADMIN. tlw72

                     <#if (page??) && (page?is_hash || page?is_hash_ex) && (page.URLToEditPage??) >
                        <li role="listitem"><a href="${page.URLToEditPage}" title="${i18n().identity_edit}">${i18n().identity_edit}</a></li>
                     </#if>
                -->
                    
                        
                                            
    
                     <li>
                            <div class="hmmbp-title">
                            <a href="#" title="${i18n().identity_user}">Hola, ${user.loginName}
                                <a class="hmmbpt-dropbtn" href="">
                                 <span class="icon icon-chevron-down"></span>
                            </a>
                            </div>
                                <ul class="hmmbp-submenu" >
                                     <#if user.hasProfile>
                                         <li role="listitem"><a href="${user.profileUrl}" title="${i18n().identity_myprofile}">${i18n().identity_myprofile}</a></li>
                                     </#if>
                                                                    <#if user.hasSiteAdminAccess>
                                    <li role="listitem"><a href="${urls.siteAdmin}" title="${i18n().identity_admin}">${i18n().identity_admin}</a></li>
                                </#if>
                                     <#if urls.myAccount??>
                                         <li role="listitem"><a href="${urls.myAccount}" title="${i18n().identity_myaccount}">${i18n().identity_myaccount}</a></li>
                                     </#if>
                                     <li role="listitem"><a href="${urls.logout}" title="${i18n().menu_logout}">${i18n().menu_logout}</a></li>
                                </ul>
                            
                         
                  

                ${scripts.add('<script type="text/javascript" src="${urls.base}/js/userMenu/userMenuUtils.js"></script>')}

            <#else>
            <div class="hmmbp-title">
                <a class="log-out" title="${i18n().menu_loginfull}" href="${urls.login}">${i18n().menu_login}</a>
            </div>
            </#if>
            

        </ul>
    </li>
</header>

    <#if flash?has_content>
        <#if flash?starts_with(i18n().menu_welcomestart) >
            <section  id="welcome-msg-container" role="container">
                <section  id="welcome-message" role="alert">${flash}</section>
            </section>
        <#else>
            <section  id="flash-msg-container" role="container">
                <section id="flash-message" role="alert">${flash}</section>
            </section>
        </#if>
    </#if>

    <!--[if lte IE 8]>
    <noscript>
        <p class="ie-alert">This site uses HTML elements that are not recognized by Internet Explorer 8 and below in the absence of JavaScript. As a result, the site will not be rendered appropriately. To correct this, please either enable JavaScript, upgrade to Internet Explorer 9, or use another browser. Here are the <a href="http://www.enable-javascript.com"  title="java script instructions">instructions for enabling JavaScript in your web browser</a>.</p>
    </noscript>
    <![endif]-->



${scripts.add('<script type="text/javascript" src="${urls.base}/js/menuMobile.js"></script>')}


