
<#-- $This file is distributed under the terms of the license in LICENSE$ -->
		<nav class="navbar sticky-top navbar-light uao-back-navbar" id="uao-back-nav" style="display: flex; margin-bottom: 3rem; padding: 0.5rem 0rem;"><a id="buttonsection-uao-3" href="javascript:window.history.back()" class="btn btn-secondary btn-sm" onclick="">Regresar</a></nav>

${jspBody!}



<#if jspScripts??>
    ${headScripts.add(jspScripts)}
</#if>
