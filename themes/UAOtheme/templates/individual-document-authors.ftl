<#if authorsResults?has_content>
    <ul id="individual-hasResearchArea" role="list">
        <#list authorsResults as resultRow>     
                    ${resultRow["fullName"]}
                    ${resultRow["person"]}
                    ${resultRow["titleLabel"]}
                    ${resultRow["imgPath"]}

            </li>
        </#list>
    </ul>   
</#if>