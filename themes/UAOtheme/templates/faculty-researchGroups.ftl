
<section class="grey-image-links"> 
<div class="grid-container"> 
<#if researchGroupsResults?has_content>

    <#list researchGroupsResults as resultRow> 

<a class="link-image-button " href='${urls.base}/individual${resultRow["facultyLink"]?substring(resultRow["facultyLink"]?last_index_of("/"))}'>
    <figure>
     <img loading="lazy" src="https://www.uao.edu.co/wp-content/uploads/2021/10/grupo-de-investigacion-conflictos-organizaciones-745x552@2x-335x248.png" srcset="https://www.uao.edu.co/wp-content/uploads/2021/10/grupo-de-investigacion-conflictos-organizaciones-745x552@2x-335x248.png 335w, https://www.uao.edu.co/wp-content/uploads/2021/10/grupo-de-investigacion-conflictos-organizaciones-745x552@2x-745x552.png 745w, https://www.uao.edu.co/wp-content/uploads/2021/10/grupo-de-investigacion-conflictos-organizaciones-745x552@2x-190x141.png 190w, https://www.uao.edu.co/wp-content/uploads/2021/10/grupo-de-investigacion-conflictos-organizaciones-745x552@2x-580x429.png 580w, https://www.uao.edu.co/wp-content/uploads/2021/10/grupo-de-investigacion-conflictos-organizaciones-745x552@2x.png 1490w" alt=""> </figure>
    <div>
    ${resultRow["facultyName"]}
     </div>
</a>
       
    </#list>
</#if> 
</div>
</section>