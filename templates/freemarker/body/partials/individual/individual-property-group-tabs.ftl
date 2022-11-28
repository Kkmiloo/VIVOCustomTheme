<#-- $This file is distributed under the terms of the license in LICENSE$ -->

<#-- Template for property listing on individual profile page -->

<#import "lib-properties.ftl" as p>
<#assign subjectUri = individual.controlPanelUrl()?split("=") >
<#assign tabCount = 1 >
<#assign sectionCount = 1 >
<!-- ${propertyGroups.all?size} -->

<div class="subsections-scroll">  
    <div class="ss-desktop">
        <ul class="ssd-first-level">
                <#list propertyGroups.all as groupTabs>
                    <#if ( groupTabs.properties?size > 0 ) >
                        <#assign groupName = groupTabs.getName(nameForOtherGroup)>
                        <#if groupName?has_content>
                            <#--the function replaces spaces in the name with underscores, also called for the property group menu-->
                            <#assign groupNameHtmlId = p.createPropertyGroupHtmlId(groupName) >
                        <#else>
                            <#assign groupName = "${i18n().properties_capitalized}">
                            <#assign groupNameHtmlId = "${i18n().properties}" >
                        </#if>
                        <#if tabCount = 1 >
                            <li > <a href="#${groupNameHtmlId?replace("/","-")}"> ${p.capitalizeGroupName(groupName)} </a></li>
                            <#assign tabCount = 2>
                        <#else>
                            <li ><a href="#${groupNameHtmlId?replace("/","-")}">  ${p.capitalizeGroupName(groupName)} </a></li>
                        </#if>
                    </#if>
                </#list>
                <#if (propertyGroups.all?size > 1) >
                <#--  <li  class="selectedGroupTab clickable" style="display: hiden" groupName="viewAll"> <a> ${i18n().view_all_capitalized} </a></li>  -->
  </#if>
</ul>
     </div>
</div>

<div class="property-container">

        <#list propertyGroups.all as group>
            <#if (group.properties?size > 0)>
                <#assign groupName = group.getName(nameForOtherGroup)>
                <#assign groupNameHtmlId = p.createPropertyGroupHtmlId(groupName) >
                <#assign verbose = (verbosePropertySwitch.currentValue)!false>
                <section id="${groupNameHtmlId?replace("/","-")}" class="property-group" role="region" style="display:block">
                <nav id="scroller" class="scroll-up hidden" role="navigation">
                    <a href="#branding" title="${i18n().scroll_to_menus}" >
                        <img src="${urls.images}/individual/scroll-up.gif" alt="${i18n().scroll_to_menus}" />
                    </a>
                </nav>

                <#-- Display the group heading -->
                <#if groupName?has_content>
                    <#--the function replaces spaces in the name with underscores, also called for the property group menu-->
                    <#assign groupNameHtmlId = p.createPropertyGroupHtmlId(groupName) >
                    <h2 id="${groupNameHtmlId?replace("/","-")}" pgroup="tabs" >${p.capitalizeGroupName(groupName)}</h2>
                <#else>
                    <h2 id="properties" pgroup="tabs" >${i18n().properties_capitalized}</h2>
                </#if>
                <div id="${groupNameHtmlId?replace("/","-")}Group" >
                    <#-- List the properties in the group   -->
                    <#include "individual-properties.ftl">
                </div>
                </section> <!-- end property-group -->
                <#assign sectionCount = 2 >
            </#if>
        </#list>

        </div>
<script>
    var individualLocalName = "${individual.localName}";
</script>

${stylesheets.add('<link rel="stylesheet" href="${urls.base}/css/individual/individual-property-groups.css" />')}
${headScripts.add('<script type="text/javascript" src="${urls.base}/js/amplify/amplify.store.min.js"></script>')}
${scripts.add('<script type="text/javascript" src="${urls.base}/js/individual/propertyGroupControls.js"></script>')}

