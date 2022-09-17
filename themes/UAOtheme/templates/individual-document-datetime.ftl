<#import "lib-datetime.ftl" as dt>

<#if dateTimeResults?has_content> 
        <#list dateTimeResults as resultRow>                        
            <time class="date-text date-article">${dt.formatXsdDateTimeLong(resultRow["dateTime"], resultRow["dtp"])}</time>
        </#list>  
</#if>