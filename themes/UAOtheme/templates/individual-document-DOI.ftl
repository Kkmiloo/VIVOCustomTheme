<#if DOIResults?has_content> 
        <#list DOIResults as resultRow>    
        <div style="display: flex ;    z-index: 2;
    position: relative; margin-bottom: 1rem  ">                    
             <p> DOI: </p> <a style="text-decoration: underline; margin-left: 1rem" target="_blank" href=' https://doi.org/${resultRow["doi"]}' class="date-text ">${resultRow["doi"]}</a>
        </div>
        </#list>  
</#if>