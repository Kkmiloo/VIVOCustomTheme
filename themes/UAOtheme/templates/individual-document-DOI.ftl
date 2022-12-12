<#if DOIResults?has_content> 
        <#list DOIResults as resultRow>                        
            <time class="date-text line-separator">${resultRow["doi"]}</time>
        </#list>  
</#if>