<#-- $This file is distributed under the terms of the license in LICENSE$ -->

<#--Breaking this out so this can be utilized by other pages such as the jsp advanced tools pages-->

<div class="nav-search">
                        <form id="search-homepage" action="${urls.search}" name="search-home" role="search" method="post" class="form-search">
                        <div id="search-home-field" class="input-form-search">
                            <input
                            id="search-module-input"
                            type="search"
                            required="required"
                            name="querytext" class="search-homepage"
                            />
                            <label for="search-module-input"> ${i18n().search } </label>
                        </div>
                        <button id="search-module-submit" type="submit" value="${i18n().search_button}" class="search">
                            <span class="icon icon-search"></span>
                        </button>
                        </form>
</div>
