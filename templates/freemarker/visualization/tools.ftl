<#-- $This file is distributed under the terms of the license in LICENSE$ -->

<#assign shortVisualizationURLRoot ="/vis">
<#assign refreshCacheURL = "${urls.base}${shortVisualizationURLRoot}/refresh-cache">
 <nav class="navbar sticky-top navbar-light uao-back-navbar" id="uao-back-nav" style="display: flex; margin-bottom: 3rem; padding: 0.5rem 0rem;"><a id="buttonsection-uao-3" href="${urls.base}/siteAdmin" class="btn btn-secondary btn-sm" onclick="">Regresar</a></nav>
<h2>${i18n().visualization_tools}</h2>

<a href="${refreshCacheURL}">${i18n().refresh_cached_vis_models}</a>
<section class="visualizationTools">
<h3>${i18n().why_needed}</h3>
<p>${i18n().vis_tools_note_one}</p>

<h3>${i18n().vis_caching_process}</h3>
<p>${i18n().vis_tools_note_two}</p>

<p>${i18n().vis_tools_note_three}</p>

<p>${i18n().vis_tools_note_four}</p>
</section>


${stylesheets.add('<link rel="stylesheet" href="${urls.base}/css/visualization/visualization.css" />')}
