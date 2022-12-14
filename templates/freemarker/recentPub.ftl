<#import "lib-datetime.ftl" as dt>

<#if recentPubDG?has_content>

    <#list recentPubDG as resultRow>
        <#assign uri = resultRow["theURI"] />
        <#assign label = resultRow["name"] />
        <#assign dateTime = resultRow["dt"] />
        <#assign datePrecision = resultRow["dtp"] />
        <#assign authors = resultRow["authors"] />

        <#if resultRow?index == 4>
            <#break>
        </#if> 
        <div class="slide swiper-slide">    
              <ul class="subclass-property-list">
                <li role="listitem">
                  <h5 href='${urls.base}/individual${uri?substring(uri?last_index_of("/"))}' title="resource name">
                        ${label}
                  </h5>       
              <span class="listDateTime">${dt.formatXsdDateTimeLong(dateTime, datePrecision)}</span>

                </li>
              </ul>
              <ul
                class="property-list"
                role="list"
                id="relatedBy-Authorship-List"
                displaylimit="5"
              >

                    <p>  ${authors}</p>

              </ul>
              <a class="primary-btn" href='${urls.base}/individual${uri?substring(uri?last_index_of("/"))}'> ${i18n().more_btn}</a>
        </div>



    </#list>
</#if>



<#--  <script>
var recentPublications = [ 
<#if recentPubDG?has_content>
    <#list recentPubDG as resultRow>
        <#assign uri = resultRow["uri"] />
        <#assign label = resultRow["title"] />
        <#assign date = resultRow["dt"] />
        <#assign datePrecision = resultRow["dtp"] />
        { "name": "${label}" , "date" : "${date}"  , "datePrecicion" : "${datePrecision}"}<#if (resultRow_has_next)>,</#if>
    </#list>
</#if>
];

console.log(recentPublications)
</>  -->




