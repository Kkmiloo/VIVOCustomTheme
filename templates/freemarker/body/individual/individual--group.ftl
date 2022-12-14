
<#include "individual-setup.ftl">
<#import "lib-vivo-properties.ftl" as vp>

<#assign individualProductExtensionPreHeader>
    <#include "individual-altmetric.ftl">
    <#include "individual-plum.ftl">
</#assign>

<#assign individualProductExtension>
    <#-- Include for any class specific template additions -->
    ${classSpecificExtension!}
    ${departmentalGrantsExtension!}
    <!--PREINDIVIDUAL OVERVIEW.FTL-->
    <#include "individual-vocabularyService.ftl">
    <#include "individual-webpage.ftl">
    <#include "individual-overview.ftl">
    ${affiliatedResearchAreas!}
        </section> <!-- #individual-info -->
    </section> <!-- #individual-intro -->
    <!--postindividual overiew ftl-->
</#assign>

<#if individual.conceptSubclass() >
    <#assign overview = propertyGroups.pullProperty("http://www.w3.org/2004/02/skos/core#broader")!>
    <#assign overview = propertyGroups.pullProperty("http://www.w3.org/2004/02/skos/core#narrower")!>
    <#assign overview = propertyGroups.pullProperty("http://www.w3.org/2004/02/skos/core#related")!>
</#if>

<#include "individual-group-view.ftl">
<script>
var i18nStrings = {
    displayLess: '${i18n().display_less?js_string}',
    displayMoreEllipsis: '${i18n().display_more_ellipsis?js_string}',
    showMoreContent: '${i18n().show_more_content?js_string}',
    verboseTurnOff: '${i18n().verbose_turn_off?js_string}',
};
</script>

${stylesheets.add('<link rel="stylesheet" href="${urls.base}/css/individual/individual-vivo.css" />')}

${headScripts.add('<script type="text/javascript" src="${urls.base}/js/jquery_plugins/jquery.truncator.js"></script>')}
${scripts.add('<script async type="text/javascript" src="${urls.base}/js/individual/individualUtils.js"></script>')}
${scripts.add('<script async type="text/javascript" src="https://d1bxh8uas1mnw7.cloudfront.net/assets/embed.js"></script>')}
${scripts.add('<script async type="text/javascript" src="//cdn.plu.mx/widget-popup.js"></script>')}
