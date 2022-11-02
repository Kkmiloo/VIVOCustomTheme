<#-- $This file is distributed under the terms of the license in LICENSE$ -->

<#-- Template for displaying paged search results -->

<main class="search-results"> 
<div class="virtual-category-title"> 
<h1 class="searchResultsHeader">
<#escape x as x?html>
    ${i18n().search_results_for} '${querytext}'
    <#if classGroupName?has_content>${i18n().limited_to_type} '${classGroupName}'</#if>
    <#if typeName?has_content>${i18n().limited_to_type} '${typeName}'</#if>
</#escape>
<script type="text/javascript">
	var url = window.location.toString();
	if (url.indexOf("?") == -1){
		var queryText = 'querytext=${querytext}';
	} else {
		var urlArray = url.split("?");
		var queryText = urlArray[1];
	}

	var urlsBase = '${urls.base}';
</script>

	<#--  <img id="downloadIcon" src="images/download-icon.png" alt="${i18n().download_results}" title="${i18n().download_results}" />  -->
<#-- <span id="downloadResults" style="float:left"></span>  -->
</h1>
</div>
<span id="searchHelp"><a href="${urls.base}/searchHelp" title="${i18n().search_help}">${i18n().not_expected_results}</a></span>
<div class="contentsBrowseGroup">

    <#-- Refinement links -->
    <#if classGroupLinks?has_content>

<div class="virtual-search-deploy-filter">
        <div class="virtual-mobile-title">
          <h2>Filtrar</h2>
          <a href="" class="close-button"
            ><span class="icon icon-close"></span>Cerrar</a
          >
        </div>
        <div class="vsdf-container">
          <div class="vsdf-title">
            <h2>Filtrar</h2>
          </div>

          <div id="browse-classes" class="vsdf-filter-wrap">

    
                <h4>${i18n().display_only}</h4>

            <ul>
            <#list classGroupLinks as link>
                 <li >
            <a class="cb-container r-container" href="${link.url}" title="${i18n().class_group_link}">


                    <span class="wpcf7-form-control-wrap aceptar-terminos">
                    <span class="wpcf7-form-control wpcf7-acceptance">
                    <span class="wpcf7-list-item">
                        <input type="radio" name="radio" />
                    </span>
                    </span>
                    </span>
                    <span class="count-classes"> ${link.text}  (${link.count})</span>

                  </a>

            </#list>
            </ul>
                
          </div>
        </div>

    </div>

    </#if>

    <#if classLinks?has_content>

    <div class="virtual-search-deploy-filter">
        <div class="virtual-mobile-title">
          <h2>Filtrar</h2>
          <a href="" class="close-button"
            ><span class="icon icon-close"></span>Cerrar</a
          >
        </div>
        <div class="vsdf-container">
          <div class="vsdf-title">
            <h2>Filtrar</h2>
          </div>

          <div id="browse-classes" class="vsdf-filter-wrap">

            <#if classGroupName?has_content>
                <h5>${i18n().limit} ${classGroupName} ${i18n().to}</h5>
            <#else>
                <h5>${i18n().limit_to}</h5>
            </#if>
            <ul>
            <#list classLinks as link>
                 <li >
            <a class="cb-container r-container" href="${link.url}" title="${i18n().browse_all_in_class}">


                    <span class="wpcf7-form-control-wrap aceptar-terminos">
                    <span class="wpcf7-form-control wpcf7-acceptance">
                    <span class="wpcf7-list-item">
                        <input type="radio" name="radio" />
                    </span>
                    </span>
                    </span>
                    <span class="count-classes"> ${link.text}  (${link.count})</span>

                  </a>

            </#list>
            </ul>
                
          </div>
        </div>

    </div>

    </#if>

    <#-- Search results -->

    <section class="results"> 
        <div class="cards-container">
            <#list individuals as individual>
            
            	<@shortView uri=individual.uri viewContext="search" />
           
        </#list>
        </div>
    </section>

    <#-- Paging controls -->
    <#if (pagingLinks?size > 0)>
        <div class="searchpages">
            ${i18n().pages}:
            <#if prevPage??><a class="prev" href="${prevPage}" title="${i18n().previous}">${i18n().previous}</a></#if>
            <#list pagingLinks as link>
                <#if link.url??>
                    <a href="${link.url}" title="${i18n().page_link}">${link.text}</a>
                <#else>
                    <span>${link.text}</span> <#-- no link if current page -->
                </#if>
            </#list>
            <#if nextPage??><a class="next" href="${nextPage}" title="${i18n().next_capitalized}">${i18n().next_capitalized}</a></#if>
        </div>
    </#if>
    <br />

    <#-- VIVO OpenSocial Extension by UCSF -->
    <#if openSocial??>
        <#if openSocial.visible>
        <h3>OpenSocial</h3>
            <script type="text/javascript" language="javascript">
                // find the 'Search' gadget(s).
                var searchGadgets = my.findGadgetsAttachingTo("gadgets-search");
                var keyword = '${querytext}';
                // add params to these gadgets
                if (keyword) {
                    for (var i = 0; i < searchGadgets.length; i++) {
                        var searchGadget = searchGadgets[i];
                        searchGadget.additionalParams = searchGadget.additionalParams || {};
                        searchGadget.additionalParams["keyword"] = keyword;
                    }
                }
                else {  // remove these gadgets
                    my.removeGadgets(searchGadgets);
                }
            </script>

            <div id="gadgets-search" class="gadgets-gadget-parent" style="display:inline-block"></div>
        </#if>
    </#if>
</main>
</div> <!-- end contentsBrowseGroup -->

${stylesheets.add('<link rel="stylesheet" href="//code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />',
  				  '<link rel="stylesheet" href="${urls.base}/css/search.css" />',
                  '<link rel="stylesheet" type="text/css" href="${urls.base}/css/jquery_plugins/qtip/jquery.qtip.min.css" />')}

${headScripts.add('<script src="//code.jquery.com/ui/1.10.3/jquery-ui.js"></script>',
				  '<script type="text/javascript" src="${urls.base}/js/jquery_plugins/qtip/jquery.qtip.min.js"></script>',
                  '<script type="text/javascript" src="${urls.base}/js/tiny_mce/tiny_mce.js"></script>'
                  )}

${scripts.add('<script type="text/javascript" src="${urls.base}/js/searchDownload.js"></script>')}
