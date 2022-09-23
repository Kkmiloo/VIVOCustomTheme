<#if coordinatorResults?has_content>

    <#list coordinatorResults as resultRow> 
        <div class="contact-info">
                <h4>Coordinador</h4>
                <div class="margin-profile-card">
                  <article class="profile-card-container">
                    <a href='${urls.base}/individual${resultRow["person"]?substring(resultRow["person"]?last_index_of("/"))}'>
                      <div class="pc-top">
                        <figure class="pc-figure">
                <#if resultRow["imgPath"]??>
                    <img
                    src = '${urls.base}/individual${resultRow["imgPath"]?substring(resultRow["imgPath"]?last_index_of("/"))}'
                    alt='imagen de perfil de ${resultRow["fullName"]} '
                    />
                <#else>
                        <img
                    src = '/images/placeholders/person.thumbnail.jpg'
                    />
                </#if> 
                        </figure>
                        <div>
                            <div class="pc-name">${resultRow["fullName"]}</div>
                            <div class="pc-occupation">Docente Investigador</div>
                        </div>
                      </div>
                    </a>
                  </article>
                </div>
                <div class="tel-email">
                  <h6 class="contact-title">correo</h6>
                  <span>${resultRow["email"]}</span>
                  <h6 class="contact-title">telefono</h6>
                  <span>${resultRow["tel"]}</span>
                </div>
            </div>


    </#list> 
</#if>