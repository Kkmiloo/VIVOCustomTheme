<#-- $This file is distributed under the terms of the license in LICENSE$ -->

<#--
    Individual profile page template for foaf:Person individuals. This is the default template for foaf persons
    in the Wilma theme and should reside in the themes/wilma/templates directory.
-->

<#include "individual-setup.ftl">
<#import "lib-vivo-properties.ftl" as vp>
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
<#assign visRequestingTemplate = "foaf-person-wilma">

<#--add the VIVO-ORCID interface -->
<#include "individual-orcidInterface.ftl">
 <#include "individual-adminPanel.ftl">


    <div class="profile-hero">
            <div class="breadcrumb-desktop">
            <a href="${urls.base}/">${i18n().home}</a>
            <span> &gt; </span>
            <a href="${urls.base}/people">${i18n().researchers}</a>
        </div>
      <div class="hero-container profile">

        <!--imagen-->

                <!-- Image -->
        <#assign individualImage>
            <@p.imageMain individual=individual
                      propertyGroups=propertyGroups
                      namespaces=namespaces
                      editable=editable
                      showPlaceholder="always" />
        </#assign>

        <#if ( individualImage?contains('<img class="individual-photo"') )>
            <#assign infoClass = 'class="withThumb"'/>
        </#if>

        <div id="photo-wrapper"><figure> ${individualImage}</figure></div>

        <div class="info">
            <h1 class="foaf-person line-separator">
                    <#-- Label -->
                    <span style ="color:#363636" itemprop="name" class="fn"><@p.label individual editable labelCount localesCount languageCount /></span>
            </h1>
            <#include "individual-contactInfo.ftl"> 
                    <!-- Websites -->
        <#include "individual-webpage.ftl">
          <!--URI AND QR-->
  <#--            <span id="iconControlsLeftSide">
                <img id="uriIcon" title="${individual.uri}" src="${urls.images}/individual/uriIcon.gif" alt="${i18n().uri_icon}"/>
  				<#if checkNamesResult?has_content >
					<img id="qrIcon"  src="${urls.images}/individual/qr_icon.png" alt="${i18n().qr_icon}" />
                	<span id="qrCodeImage" class="hidden">${qrCodeLinkedImage!}
						<a class="qrCloseLink" href="#"  title="${i18n().qr_code}">${i18n().close_capitalized}</a>
					</span>
				</#if>
            </span>  -->

            

        </div>
      <!--H index-->
      <section id="right-hand-column" role="region">
        <#include "individual-visualizationFoafPerson.ftl">
        <#if editable>
            <#if claimSources?size &gt; 0>
                <br />${i18n().claim_publications_by}<br />
                <#if claimSources?seq_contains("doi")>
                    <form action="${urls.base}/createAndLink/doi" method="get" style="float: left;">
                        <input type="hidden" name="profileUri" value="${individual.uri}" />
                        <input type="submit" class="submit" value="${i18n().claim_publications_by_doi}" />
                    </form>
                </#if>
                <#if claimSources?seq_contains("pmid")>
                    <form action="${urls.base}/createAndLink/pmid" method="get" style="float: right;">
                        <input type="hidden" name="profileUri" value="${individual.uri}" />
                        <input type="submit" class="submit" value="${i18n().claim_publications_by_pmid}" />
                    </form>
                </#if>
            </#if>
        </#if>
        </section>
        
      </div>
      <!-- Research Areas -->
        <div id="researcharea"><#include "individual-researchAreas.ftl"> </div>
        

    </div>



<#assign nameForOtherGroup = "${i18n().other}">

<#-- Ontology properties -->
<#if !editable>
	<#-- We don't want to see the first name and last name unless we might edit them. -->
	<#assign skipThis = propertyGroups.pullProperty("http://xmlns.com/foaf/0.1/firstName")!>
	<#assign skipThis = propertyGroups.pullProperty("http://xmlns.com/foaf/0.1/lastName")!>
</#if>

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
    let researchItems= document.querySelectorAll("#individual-hasResearchArea>li>a")
    researchItems.forEach( item => item.classList.add("primary-btn" , "white"))
</script>

<script>
    var imagesPath = '${urls.images}';
	var individualUri = '${individual.uri!}';
	var individualPhoto = '${individual.thumbNail!}';
	var exportQrCodeUrl = '${urls.base}/qrcode?uri=${individual.uri!}';
	var baseUrl = '${urls.base}';
    var i18nStrings = {
        displayLess: '${i18n().display_less?js_string}',
        displayMoreEllipsis: '${i18n().display_more_ellipsis?js_string}',
        showMoreContent: '${i18n().show_more_content?js_string}',
        verboseTurnOff: '${i18n().verbose_turn_off?js_string}',
        researchAreaTooltipOne: '${i18n().research_area_tooltip_one?js_string}',
        researchAreaTooltipTwo: '${i18n().research_area_tooltip_two?js_string}'
    };
    var i18nStringsUriRdf = {
        shareProfileUri: '${i18n().share_profile_uri?js_string}',
        viewRDFProfile: '${i18n().view_profile_in_rdf?js_string}',
        closeString: '${i18n().close?js_string}'
    };
</script>

${stylesheets.add('<link rel="stylesheet" href="${urls.base}/css/individual/individual.css" />',
                  '<link rel="stylesheet" href="${urls.base}/css/individual/individual-vivo.css" />',
                  '<link rel="stylesheet" href="${urls.base}/js/jquery-ui/css/smoothness/jquery-ui-1.12.1.css" />',
                  '<link rel="stylesheet" type="text/css" href="${urls.base}/css/jquery_plugins/qtip/jquery.qtip.min.css" />')}

${headScripts.add('<script type="text/javascript" src="${urls.base}/js/tiny_mce/tiny_mce.js"></script>',
                  '<script type="text/javascript" src="${urls.base}/js/jquery_plugins/qtip/jquery.qtip.min.js"></script>',
                  '<script type="text/javascript" src="${urls.base}/js/jquery_plugins/jquery.truncator.js"></script>')}

${scripts.add('<script type="text/javascript" src="${urls.base}/js/individual/individualUtils.js"></script>',
              '<script type="text/javascript" src="${urls.base}/js/individual/individualQtipBubble.js"></script>',
              '<script type="text/javascript" src="${urls.base}/js/individual/individualUriRdf.js"></script>',
			  '<script type="text/javascript" src="${urls.base}/js/individual/moreLessController.js"></script>',
              '<script type="text/javascript" src="${urls.base}/js/jquery-ui/js/jquery-ui-1.12.1.min.js"></script>',
              '<script type="text/javascript" src="${urls.base}/js/imageUpload/imageUploadUtils.js"></script>',
              '<script async type="text/javascript" src="https://d1bxh8uas1mnw7.cloudfront.net/assets/embed.js"></script>',
              '<script async type="text/javascript" src="//cdn.plu.mx/widget-popup.js"></script>',
              '<script async type="text/javascript" src="${urls.base}/js/tabsScroll.js"></script>')}

<script type="text/javascript">
    i18n_confirmDelete = "${i18n().confirm_delete?js_string}";
</script>
