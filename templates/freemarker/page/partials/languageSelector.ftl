<#-- $This file is distributed under the terms of the license in LICENSE$ -->

<#-- This is included by identity.ftl  -->
<#if selectLocale??>
        <ul class="hmdt-language">
        <#list selectLocale.locales as locale>

                <li <#if locale.selected>status="selected" class="active"</#if>>
                        <a href="${selectLocale.selectLocaleUrl}?selection=${locale.code}" title="${i18n().select_locale} -- ${locale.label}">${locale.label?capitalize}<#if locale.country?has_content> (${locale.country})</#if></a>
                </li>
        </#list>
        </ul>
</#if>

<#--
 * selectLocale
 * -- selectLocaleUrl
 * -- locales [list of locales with country]
 *    -- [locale with country]
 *       -- code
 *       -- label (tooltip displayed in original locale, not current locale)
 *       -- country (displayed in original locale, not current locale)
 *       -- selected (boolean)
-->
<script type="text/javascript">
var i18nStringsLangMenu = {
    selectLanguage: "${i18n().select_a_language?js_string}"
};
</script>

${scripts.add('<script type="text/javascript" src="${urls.base}/js/languageMenuUtils.js"></script>')}
