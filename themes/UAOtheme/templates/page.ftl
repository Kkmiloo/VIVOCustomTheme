<#-- $This file is distributed under the terms of the license in LICENSE$ -->

<#import "lib-list.ftl" as l>

<!DOCTYPE html>
<html lang="${country}">
    <head>
        <#include "head.ftl">
    </head>

    <body class="${bodyClasses!}" onload="${bodyOnload!}">
       <#--   <#include "identity.ftl">  -->
       <#--   <#include "search.ftl" >  -->
        <#include "headerMenu.ftl">

		<#-- VIVO OpenSocial Extension by UCSF -->
        <article  class="main-detail-container header-margin" role="main">
		<#if openSocial??>
			<#if openSocial.visible>
            	<div id="gadgets-tools" class="gadgets-gadget-parent"></div>
            </#if>
		</#if>

        ${body}
        </article>
        <#include "footer.ftl">
    </body>
</html>
