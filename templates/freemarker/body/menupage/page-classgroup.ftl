<#-- $This file is distributed under the terms of the license in LICENSE$ -->

<#include "menupage-checkForData.ftl">

<#if !noData>
    <section class="virtual-category-title " role="region">
        <h1>${page.title}</h1>
    </section>

    <#include "menupage-browse.ftl">

    ${stylesheets.add('<link rel="stylesheet" href="${urls.base}/css/menupage/menupage.css" />')}

    <#include "menupage-scripts.ftl">
<#else>
    ${noDataNotification}
</#if>
