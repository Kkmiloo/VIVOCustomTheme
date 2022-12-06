<#-- $This file is distributed under the terms of the license in LICENSE$  -->

<@widget name="login" include="assets" />

<#--
        With release 1.6, the home page no longer uses the "browse by" class group/classes display.
        If you prefer to use the "browse by" display, replace the import statement below with the
        following include statement:

            <#include "browse-classgroups.ftl">

        Also ensure that the homePage.geoFocusMaps flag in the runtime.properties file is commented
        out.
-->
<#import "lib-home-page.ftl" as lh>

<!DOCTYPE html>
<html lang="${country}">
    <head>
        <#include "head.ftl">
        <#if geoFocusMapsEnabled >
            <#include "geoFocusMapScripts.ftl">
        </#if>
        <script async type="text/javascript" src="${urls.base}/js/homePageUtils.js?version=x"></script>
    </head>

    <body class="${bodyClasses!}" onload="${bodyOnload!}">
    <#-- supplies the faculty count to the js function that generates a random row number for the search query -->
        <@lh.facultyMemberCount  vClassGroups! />
        <#--  <#include "identity.ftl">  -->

         <#include "headerMenu.ftl">
        <article  class="main-detail-container header-margin" role="main">
            <section id="intro" role="region">
    <#--              <h2>${i18n().intro_title}</h2>

                <p>${i18n().intro_para1}</p>
                <p>${i18n().intro_para2}</p>  -->

                    <div class="library-hero">
                    <h1>CRIS UAO</h1>
                        <div class="hero-container">
                            <form id="search-homepage" action="${urls.search}" name="search-home" role="search" method="post" class="form-search">
                            <div id="search-home-field" class="input-form-search">
                                <input
                                id="search-module-input"
                                type="search"
                                required="required"
                                name="querytext" class="search-homepage"
                                />
                                <label for="search-module-input"> Buscar artículos, libros, conferencias... </label>
                            </div>
                            <button id="search-module-submit" type="submit" value="${i18n().search_button}" class="search">
                                <span class="icon icon-search"></span>
                            </button>
                            </form>
                            <h2>¿Qué estás buscando?</h2>
                            <div class="btnslist">
                                <a class="primary-btn  white" href="${urls.base}/research#http://purl.org/ontology/bibo/Article">
                                Article
                                </a>
                                
                                <a class="primary-btn  white" href="${urls.base}/research#http://purl.org/ontology/bibo/Book%20">
                                Book
                                </a>
                                
                                <a class="primary-btn  white" href="${urls.base}/research#http://purl.org/ontology/bibo/Chapter%20">
                                Chapter
                                </a>
                                
                                <a class="primary-btn  white" href="${urls.base}/research#http://vivoweb.org/ontology/core#ConferencePaper%20">
                                Conference Paper
                                </a>
                                
                                <a class="primary-btn  white" href="${urls.base}/research#http://purl.org/ontology/bibo/Thesis%20">
                                Thesis
                                </a>
                            </div>
                        </div>
                    </div>


        </section> <!-- #intro -->

    <section class="container">
        <h2>Publicaciones recientes</h2>
        <div class="testimonial mySwiper">
            <div class="testi-content swiper-wrapper">
            <#include "recentPub.ftl">

            </div>
            <!--next-->
          <div class="swiper-button-next nav-btn"></div>
          <!--prev-->
          <div class="swiper-button-prev nav-btn"></div>
          <!---->
          <div class="swiper-pagination"></div>
        </div>
         
    </section>
    

      <#--    <@lh.facultyMbrHtml />  -->
        <@lh.allClassGroups vClassGroups! />

        
        <#-- builds a json object that is used by js to render the academic departments section -->
         <#--  <@lh.listAcademicDepartments />   -->

        <@lh.researchClasses />
    </article>
        <#include "footer.ftl">

      <!-- SLIDER Swiper JS -->
    <script src="${urls.base}/js/swiper-bundle.min.js"></script>
    <!--SLIDER JavaScript -->
    <script src="${urls.base}/js/script.js"></script>
    <script>
        var i18nStrings = {
            researcherString: '${i18n().researcher?js_string}',
            researchersString: '${i18n().researchers?js_string}',
            currentlyNoResearchers: '${i18n().currently_no_researchers?js_string}',
            countriesAndRegions: '${i18n().countries_and_regions?js_string}',
            countriesString: '${i18n().countries?js_string}',
            regionsString: '${i18n().regions?js_string}',
            statesString: '${i18n().map_states_string?js_string}',
            stateString: '${i18n().map_state_string?js_string}',
            statewideLocations: '${i18n().statewide_locations?js_string}',
            researchersInString: '${i18n().researchers_in?js_string}',
            inString: '${i18n().in?js_string}',
            noFacultyFound: '${i18n().no_faculty_found?js_string}',
            placeholderImage: '${i18n().placeholder_image?js_string}',
            viewAllFaculty: '${i18n().view_all_faculty?js_string}',
            viewAllString: '${i18n().view_all?js_string}',
            viewAllDepartments: '${i18n().view_all_departments?js_string}',
            noDepartmentsFound: '${i18n().no_departments_found?js_string}'
        };
        // set the 'limmit search' text and alignment
        if  ( $('input.search-homepage').css('text-align') == "right" ) {
             $('input.search-homepage').attr("value","${i18n().limit_search} \u2192");
        }
    </script>
    </body>
</html>
