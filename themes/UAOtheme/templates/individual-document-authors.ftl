<#if authorsInfoResults?has_content>
    <h4>Autores</h4>
    <ul id="pca-list" role="list">
        <#list authorsInfoResults as resultRow>  
              <li>
                  <article class="profile-card-article">
                    <a href='${urls.base}/individual${resultRow["person"]?substring(resultRow["person"]?last_index_of("/"))}'>
                      <div class="pca-top">
                        <figure class="pca-figure">
                        <#if resultRow["imgPath"]??>
                            <img
                            src = '${urls.base}/individual${resultRow["imgPath"]?substring(resultRow["imgPath"]?last_index_of("/"))}'
                            alt='imagen de perfil de ${resultRow["fullName"]} '
                            />
                        <#else>
                                <img
                            src = '/images/placeholders/person.thumbnail.jpg'
                            alt='imagen de perfil de ${resultRow["fullName"]} '
                            />
                    
                        </#if> 
                         
                        </figure>
                        <div>
                          <div class="pca-name">${resultRow["fullName"]}</div>
                          <div class="pca-occupation">Docente Investigador</div>
                        </div>
                      </div>
                    </a>
                  </article>
                </li>
        </#list>
    </ul> 
    <#else> 
    <h2> no </h2>  
</#if>

