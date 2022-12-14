<#if recentPubDG?hasContent> 
<div class="btnslist">
    <#list recentPubDG as resultRow>
        <a class="primary-btn  white" href=${urls.base}/research#${resultRow["type"]}>
        ${resultRow["LABEL"]}
        </a>
    </#list>
</div>
</#if>
