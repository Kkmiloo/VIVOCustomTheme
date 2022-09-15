<#if dateTimeResults?has_content>
    <h2 id="facultyResearchAreas" class="mainPropGroup">
        Faculty Research Areas}
    </h2>
    <ul id="individual-hasResearchArea" role="list">
        <#list dateTimeResults as resultRow>
            <li class="raLink">
                <a >
                    ${resultRow["displayDate"]}
                    ${resultRow["dateTime"]}
                </a>
            </li>
        </#list>
    </ul>   
</#if>