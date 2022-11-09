<#-- $This file is distributed under the terms of the license in LICENSE$ -->

<#-- Template for browsing individuals in class groups for menupages -->

<#import "lib-string.ftl" as str>
<noscript>
<p style="padding: 20px 20px 20px 20px;background-color:#f8ffb7">${i18n().browse_page_javascript_one} <a href="${urls.base}/browse" title="${i18n().index_page}">${i18n().index_page}</a> ${i18n().browse_page_javascript_two}</p>
</noscript>

<section id="noJavascriptContainer" class="hidden" style="display:flex">

    <#assign displayNone= ''>
<#if currentServlet=='people' >
    <#assign displayNone= 'display: none'>
</#if >
    <div class="virtual-search-deploy-filter" style='${displayNone}'>
            <div class="virtual-mobile-title">
            <h2>Filtrar programas</h2>
            <a href="" class="close-button"
                ><span class="icon icon-close"></span>Cerrar</a
            >
            </div>
            <div class="vsdf-container">
            <div class="vsdf-title">
                <h2>Filtrar</h2>
            </div>

            <div id="browse-classes" class="vsdf-filter-wrap">
                <h5>Tipo</h5>
                    <#list vClassGroup?sort_by("displayRank") as vClass>
                    <#------------------------------------------------------------
                    Need to replace vClassCamel with full URL that allows function
                    to degrade gracefully in absence of JavaScript. Something
                    similar to what Brian had setup with widget-browse.ftl
                    ------------------------------------------------------------->
                    <#assign vClassCamel = str.camelCase(vClass.name) />
                    <#-- Only display vClasses with individuals -->
                    <#if (vClass.entityCount > 0)>
                    <label > 
                    <li id="${vClassCamel}">
                    <a class="cb-container r-container" href="#${vClassCamel}" title="${i18n().browse_all_in_class}" data-uri="${vClass.URI}">
                    <span class="wpcf7-form-control-wrap aceptar-terminos">
                        <span class="wpcf7-form-control wpcf7-acceptance">
                        <span class="wpcf7-list-item">
                            <input type="radio" name="radio" />
                        </span>
                        </span>
                        </span>
                        
                        <span class="icon icon-radio-button-no-check"></span>
                    <span class="count-classes"> ${vClass.name}  (${vClass.entityCount})</span>
                    </a>
                    
                
                    
                    </li>
                        </label>
                </#if>
                </#list>
            </div>
            </div>

    </div>

<section id="browse-by" role="region">
    <nav role="navigation">
       
        <nav id="alpha-browse-container" class="letters" role="navigation">
<#--              <h3 class="selected-class"></h3>  -->
            <#assign alphabet = ["A", "B", "C", "D", "E", "F", "G" "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"] />
            <ul id="alpha-browse-individuals">
                <li><a href="#" class="selected" data-alpha="all" title="${i18n().select_all}">${i18n().all}</a></li>
                <#list alphabet as letter>
                    <li><a href="#" data-alpha="${letter?lower_case}" title="${i18n().browse_all_starts_with(letter)}">${letter}</a></li>
                </#list>
            </ul>
        </nav>
    </nav>


<#if currentServlet=="people"  >
    <section id="individuals-in-class" class="${currentServlet} " role="region">
        <ul role="list"  class="list" >
       
            <#-- Will be populated dynamically via AJAX request -->
        </ul>
    </section>
<#elseif currentServlet!="organizations" >
    <section id="individuals-in-class" class="${currentServlet}" role="region">
        <ul role="list">
       

     

            <#-- Will be populated dynamically via AJAX request -->
        </ul>
    </section>

<#else>
    <section id="individuals-in-class" class="${currentServlet} grey-image-links" role="region">
        
        <ul role="list" class="grid-container">
       

     

            <#-- Will be populated dynamically via AJAX request -->
        </ul>
        </div>
    </section>
</#if>

</section>
</section>
<script type="text/javascript">
    $('section#noJavascriptContainer').removeClass('hidden');

    const options = document.querySelectorAll(".cb-container");

    options.forEach((option) => {
      option.addEventListener("click", changeState);
    });

    function changeState(e) {
      e.preventDefault();
      clearClass();
      const parentLabel = e.target;
      parentLabel.classList.add("checked-acceptance");
        console.log(parentLabel);
    }

    function clearClass() {
      options.forEach((option) => {
        
        if (option.classList.contains("checked-acceptance")) {
            console.log(option);
          option.classList.remove("checked-acceptance");
          return;
        }
      });
    }

</script>
