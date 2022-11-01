<#-- $This file is distributed under the terms of the license in LICENSE$ -->

<#--
    Template for the page that displays the status of the Search Indexer.
    Most of it is provided by the AJAX call.
-->
 <nav class="navbar sticky-top navbar-light uao-back-navbar" id="uao-back-nav" style="display: flex; margin-bottom: 3rem; padding: 0.5rem 0rem;"><a id="buttonsection-uao-3" href="${urls.base}/siteAdmin" class="btn btn-secondary btn-sm" onclick="">Regresar</a></nav>
<h2>${i18n().search_index_status}</h2>

<div id="searchIndexerError" /></div>

<div id="searchIndexerStatus">
	Search Indexer Status
</div>

<script>
    searchIndexerStatusUrl = '${statusUrl}'
</script>

${stylesheets.add('<link rel="stylesheet" href="${urls.base}/css/search/searchIndex.css" />')}

${scripts.add('<script type="text/javascript" src="${urls.base}/js/search/searchIndex.js"></script>')}
${scripts.add('<script type="text/javascript" src="${urls.base}/js/jquery-ui/js/jquery-ui-1.12.1.min.js"></script>')}
