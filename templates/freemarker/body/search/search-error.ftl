<#-- $This file is distributed under the terms of the license in LICENSE$ -->

<#-- Template for displaying search error message -->

<#if title??>
    <h2>${title?html}</h2>
</#if>

<p>
${message?html}
</p>
    <div class="con">
        <div class="con-tooltip right">
                        <span class="icon icon-question-circle" style="font-size: 30px; "></span>
                        <div class="tooltip"> 
      <#include "search-help.ftl" >

                        </div>
                        </div>
                    </div>

    </div>
