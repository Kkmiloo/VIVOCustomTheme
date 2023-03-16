<#import "lib-home-page.ftl" as lh>

                    <div class="library-hero">
                        <h1>CRIS UAO</h1>
                        <#if homeHeroCountResults?has_content> 
                        
                            
                     
                        <p style= "color:white"> ${i18n().hero_description_1} ${homeHeroCountResults[0].facultyCount} ${i18n().hero_researcher} ${homeHeroCountResults[0].documentCount} ${i18n().hero_publication} ${homeHeroCountResults[0].groupCount} ${i18n().hero_group}</p>
                        </#if>
                        <div class="hero-container">
                            <form id="search-homepage" action="${urls.search}" name="search-home" role="search" method="post" class="form-search">
                            <div id="search-home-field" class="input-form-search">
                                <input
                                id="search-module-input"
                                type="search"
                                required="required"
                                name="querytext" class="search-homepage"
                                />
                                <label for="search-module-input"> ${i18n().search_placeholder}</label>
                            </div>
                            <button id="search-module-submit" type="submit" value="${i18n().search_button}" class="search">
                                <span class="icon icon-search"></span>
                            </button>
                            </form>
                            <h2>${i18n().search_hero}</h2>

                            <#--  <#include "researchClasses.ftl">  -->
                           <@lh.researchClasses />
                          
                        </div>
                    </div>