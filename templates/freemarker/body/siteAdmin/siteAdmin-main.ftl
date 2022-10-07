<#-- $This file is distributed under the terms of the license in LICENSE$ -->

<#-- Template for the main Site Administration page -->

${stylesheets.add('<link rel="stylesheet" href="${urls.base}/css/admin.css" />')}


<div id="wrapper-content"> 

    <div class="tab">
    <h2>${i18n().site_administration}</h2>
</div>

<div id="adminDashboard">

<ul style="    display: flex;
    flex-direction: column;"> 
    <#include "siteAdmin-dataInput.ftl">
    <section class="list">
    
    <#include "siteAdmin-siteConfiguration.ftl">
    <#include "siteAdmin-ontologyEditor.ftl">
    <#include "siteAdmin-advancedDataTools.ftl">
    <#include "siteAdmin-siteMaintenance.ftl">
    </section>

</ul>
</div>

</div>

