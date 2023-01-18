<#-- $This file is distributed under the terms of the license in LICENSE$ -->

<#-- Template for displaying search error message -->

<div id="wrapper-content"> 
<#if title??>
<div class="virtual-category-title">
    <h1 class="searchResultsHeader">${title?html}</h1>
    </div>
</#if>


    <div class="con row">
    <div class="details"> 
    <h2>
${message?html}
</h2>
        <div class="con-tooltip right">
                        <span class="icon icon-question-circle" style="font-size: 30px; "></span>
                        <div class="tooltip"> 
      <#include "search-help.ftl" >

                        </div>
                        </div>
                    </div>
 </div>
    </div>
</div>