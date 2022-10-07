<#import "lib-properties.ftl" as p>
<#import "lib-datetime.ftl" as dt>
 
<li  role="listitem" class="article-sw browse-margin" role="navigation">

                <a href="${individual.profileUrl}" class="article-title" title="${individual.name}">
               ${individual.name}  </a>
                    <@p.mostSpecificTypes individual />
                <ul class="sw-authors ts-6"> 
                                      
                    <#list detailsAuthor as resultRow>  
                    <li class="ts-6">
                    <a href='${urls.base}/individual${resultRow["author"]?substring(resultRow["author"]?last_index_of("/"))}'> ${resultRow["name"]}</a>
                    
                    </li>
                    <li class="separator">
                    </li>
                    </#list>
                </ul>

        <#if (abstractDetail[0].abstract)??>

        <span class="ts-2">  ${abstractDetail[0].abstract}</span> 
           
        </#if>

               

       
</li>