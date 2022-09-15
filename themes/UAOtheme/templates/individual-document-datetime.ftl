<#import "lib-datetime.ftl" as dt>

<#if dateTimeResults?has_content>
    <ul id="individual-hasResearchArea" role="list">
        <#list dateTimeResults as resultRow>     
                    ${dt.formatXsdDateTimeLong(resultRow["dateTime"], resultRow["dtp"])}
            </li>
        </#list>
    </ul>   
</#if>