<#if DOIResults?has_content> 
        <#list DOIResults as resultRow>    
        <div style="display: flex ; ">                    
             <p> DOI: </p> <a style="text-decoration: underline; margin-left: 1rem" target="_blank" href='${resultRow["doi"]}' class="date-text ">${resultRow["doi"]}</a>
        </div>
        </#list>  
</#if>