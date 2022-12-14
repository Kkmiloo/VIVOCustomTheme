<#import "lib-properties.ftl" as p>
<#import "lib-datetime.ftl" as dt>
 

    <div class="article-sw browse-margin" role="navigation">
        <a class="card-display" href="${individual.profileUrl}">  
            <div>

                        <@p.mostSpecificTypes individual />
                        <h6  class="article-title" title="${individual.name}">
                        ${individual.name}  </h6>
                            
                        <ul class="sw-authors"> 
                                            
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
            </div>
  </a>
    </div>
