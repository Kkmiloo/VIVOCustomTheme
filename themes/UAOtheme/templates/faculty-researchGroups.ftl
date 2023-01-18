
<#import "lib-properties.ftl" as p>
<#assign subjectUri = individual.controlPanelUrl()?split("=") >
<#assign tabCount = 1 >
<#assign sectionCount = 1 >

<section class="grey-image-links"> 
<div class="grid-container"> 
<#if researchGroupsResults?has_content>

    <#list researchGroupsResults as resultRow> 

<a class="link-image-button " href='${urls.base}/individual${resultRow["facultyLink"]?substring(resultRow["facultyLink"]?last_index_of("/"))}'>
    <figure>

    <#if resultRow["facultyImg"]?has_content>
     <img loading="lazy" src='${urls.base}/individual${resultRow["facultyImg"]?substring(resultRow["facultyImg"]?last_index_of("/"))}'  alt="">

     
    <#else>
     <img loading="lazy" src="https://www.uao.edu.co/wp-content/uploads/2021/10/grupo-de-investigacion-conflictos-organizaciones-745x552@2x-335x248.png" srcset="https://www.uao.edu.co/wp-content/uploads/2021/10/grupo-de-investigacion-conflictos-organizaciones-745x552@2x-335x248.png 335w, https://www.uao.edu.co/wp-content/uploads/2021/10/grupo-de-investigacion-conflictos-organizaciones-745x552@2x-745x552.png 745w, https://www.uao.edu.co/wp-content/uploads/2021/10/grupo-de-investigacion-conflictos-organizaciones-745x552@2x-190x141.png 190w, https://www.uao.edu.co/wp-content/uploads/2021/10/grupo-de-investigacion-conflictos-organizaciones-745x552@2x-580x429.png 580w, https://www.uao.edu.co/wp-content/uploads/2021/10/grupo-de-investigacion-conflictos-organizaciones-745x552@2x.png 1490w" alt="">
    </#if>
     </figure>
    <div>
    ${resultRow["facultyName"]}
     </div>
</a>



       
    </#list>
    </div>
</#if> 


<#--          <#list propertyGroups.all as group>
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

                <#-- Display the group heading 
                <#if groupName?has_content>
                    <#--the function replaces spaces in the name with underscores, also called for the property group menu
                    <#assign groupNameHtmlId = p.createPropertyGroupHtmlId(groupName) >
                    <h2 id="${groupNameHtmlId?replace("/","-")}" pgroup="tabs" >${p.capitalizeGroupName(groupName)}</h2>
                <#else>
                    <h2 id="properties" pgroup="tabs" >${i18n().properties_capitalized}</h2>
                </#if>
                <div id="${groupNameHtmlId?replace("/","-")}Group" >
                    <#-- List the properties in the group   
                    <#include "individual-properties.ftl">
                </div>
                </section> <!-- end property-group -->
        <#--          <#assign sectionCount = 2 >
            </#if>
        </#list>  --> 

</section>