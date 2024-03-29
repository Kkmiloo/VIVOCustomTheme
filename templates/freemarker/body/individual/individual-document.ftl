<#-- $This file is distributed under the terms of the license in LICENSE$ -->
<#import "lib-microformats.ftl" as mf>

<#--Number of labels present-->
<#if !labelCount??>
    <#assign labelCount = 0 >
</#if>
<#--Number of available locales-->
<#if !localesCount??>
	<#assign localesCount = 1>
</#if>
<#--Number of distinct languages represented, with no language tag counting as a language, across labels-->
<#if !languageCount??>
	<#assign languageCount = 1>
</#if>

<#-- Default individual profile page template -->
<#--@dumpAll /-->
<#include "individual-adminPanel.ftl">
<section class="hero show-breadcrumb" role="region" <@mf.sectionSchema individual/>>

        <div class="breadcrumb-desktop">
            <a href="${urls.base}/">${i18n().home}</a>
            <span> &gt; </span>
            <a href="${urls.base}/research"> ${i18n().publications}</a>

        </div>
    <div class="hero-container">
        <div class="article details">
            <div class="margin-details">
                <#if individualProductExtensionPreHeader??>
                    ${individualProductExtensionPreHeader}
                </#if>
                <@p.mostSpecificTypes individual />
                <#--- Link del individuo para compartir, ademas de permitir la descarga en vista RDF con la infomación-->
                <#--   <span id="iconControlsVitro"><img id="uriIcon" title="${individual.uri}" class="middle" src="${urls.images}/individual/uriIcon.gif" alt="uri icon"/></span>  -->
                
                <#if relatedSubject??>
                    <h2>${relatedSubject.relatingPredicateDomainPublic} for ${relatedSubject.name}</h2>
                    <p><a href="${relatedSubject.url}" title="${i18n().return_to(relatedSubject.name)}">&larr; ${i18n().return_to(relatedSubject.name)}</a></p>
                <#else>
                
                <h1 itemprop="name">
                    <#-- Label -->
                    <@p.label individual editable labelCount localesCount languageCount/>
                    <#if editable>
                        <@p.deleteIndividualLink individual />
                    </#if>
                    <#--  Most-specific types -->
                </h1>
                </#if>
                <#include "individual-document-datetime.ftl">
                <#include "individual-document-DOI.ftl">
                <#include "individual-document-authors.ftl">
                

                <#if individualProductExtension??>
                    ${individualProductExtension}
                <#else>
                </#if>
        
            </div>
        </div>
    </div>

   <#--  <section id="share-contact" role="region">
        <#-- Image -->
        <#-- En principio no se necesita imagen para los articulos -->
        <#--
        <#assign individualImage>
        <@p.image individual=individual
            propertyGroups=propertyGroups
            namespaces=namespaces
            editable=editable
            showPlaceholder="with_add_link" />
        </#assign>

        <#if ( individualImage?contains('<img class="individual-photo"') )>
            <#assign infoClass = 'class="withThumb"'/>
        </#if>
        <div id="photo-wrapper">${individualImage}</div>
       
    </section>  -->

    <!-- start section individual-info -->
    <section id="individual-info" ${infoClass!} role="region">

        
    </section> <!-- individual-info -->
</section> <!-- individual-intro -->
    

<#assign nameForOtherGroup = "${i18n().other}">

<!-- Property group menu or tabs -->
<#--
    With release 1.6 there are now two types of property group displays: the original property group
     menu and the horizontal tab display, which is the default. If you prefer to use the property
     group menu, simply substitute the include statement below with the one that appears after this
     comment section.

     <#include "individual-property-group-menus.ftl">
-->

<#include "individual-property-group-tabs.ftl">

<#assign rdfUrl = individual.rdfUrl>

<#if rdfUrl??>
    <script>
        var individualRdfUrl = '${rdfUrl}';
    </script>
</#if>
<script>
    var i18nStringsUriRdf = {
        shareProfileUri: '${i18n().share_profile_uri?js_string}',
        viewRDFProfile: '${i18n().view_profile_in_rdf?js_string}',
        closeString: '${i18n().close?js_string}'
    };
	var i18nStrings = {
	    displayLess: '${i18n().display_less?js_string}',
	    displayMoreEllipsis: '${i18n().display_more_ellipsis?js_string}',
	    showMoreContent: '${i18n().show_more_content?js_string}',
	};

</script>

${stylesheets.add('<link rel="stylesheet" href="${urls.base}/css/individual/individual.css" />',
                  '<link rel="stylesheet" type="text/css" href="${urls.base}/css/jquery_plugins/qtip/jquery.qtip.min.css" />')}

${headScripts.add('<script type="text/javascript" src="${urls.base}/js/jquery_plugins/qtip/jquery.qtip.min.js"></script>',
                  '<script type="text/javascript" src="${urls.base}/js/tiny_mce/tiny_mce.js"></script>')}

${scripts.add('<script type="text/javascript" src="${urls.base}/js/imageUpload/imageUploadUtils.js"></script>',
              '<script type="text/javascript" src="${urls.base}/js/fileUpload/fileUploadUtils.js"></script>',
	          '<script type="text/javascript" src="${urls.base}/js/individual/moreLessController.js"></script>',
              '<script type="text/javascript" src="${urls.base}/js/individual/individualUriRdf.js"></script>',
              '<script async type="text/javascript" src="${urls.base}/js/tabsScroll.js"></script>')}

<script type="text/javascript">
    i18n_confirmDelete = "${i18n().confirm_delete?js_string}";
    i18n_confirmDeleteUploadedFile = "${i18n().file_upload_confirm_delete?js_string}";
</script>
