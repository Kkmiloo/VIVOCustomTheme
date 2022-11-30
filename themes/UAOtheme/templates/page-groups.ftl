<section class="grey-image-links">
<div class="grid-container">
 <#list facultades as result>

    <a class="link-image-button" href='${urls.base}/individual${result.individualURI?substring(result.individualURI?last_index_of("/"))}'> 
        <figure> 
            <#if result.dl?has_content>
            <img  src= '${urls.base}/individual${result.dl?substring(result.dl?last_index_of("/"))}'> 
            </#if>
        </figure> 
        <div>
        ${result.gname}
        </div>
    
    </a>

 </#list>

 </div>
 </section>