<#-- $This file is distributed under the terms of the license in LICENSE$ -->

<#-- Login widget -->

<#macro assets>
    <#-- RY This test should be replaced by login widget controller logic which displays different assets macros depending
         on login status, but currently there's no widget-specific doAssets() method. See NIHVIVO-1357. The test doesn't work
         because we don't have the user in the template data model when we generate the assets. This can also be fixed by
         NIHVIVO-1357.
    <#if ! user.loggedIn> -->
        ${stylesheets.add('<link rel="stylesheet" href="${urls.base}/css/login.css" />')}
        <#-- ${scripts.add("")} -->
        ${scripts.add('<script async type="text/javascript" src="${urls.base}/js/login/loginUtils.js"></script>')}
    <#-- </#if> -->
</#macro>

<#macro loginForm>
    <#assign infoClassHide = ''/>
    <#assign infoClassShow = ''/>

    <#-- Don't display the JavaScript required to edit message on the home page even if JavaScript is unavailable -->
    <#if currentServlet != 'home'>
        <noscript>
            <section id="error-alert">
                <img src="${urls.images}/iconAlertBig.png" alt="${i18n().alert_icon}"/>
                <p>${i18n().javascript_require_to_edit} <a href="http://www.enable-javascript.com" title="${i18n().javascript_instructions}">${i18n().to_enable_javascript}</a>.</p>
            </section>
        </noscript>
    </#if>



    <section id="login" class="container-log hidden">
      <#--        <#if infoMessage??>
            <h3>${infoMessage}</h3>
        </#if>

        <#if errorMessage??>
            <#assign infoClassShow = ' id="vivoAccountError"'/>

            <section id="error-alert" role="alert"><img src="${urls.images}/iconAlert.png" alt="${i18n().error_alert_icon}" />
                <p class="login-alert">${errorMessage}</p>
            </section>
        </#if>

        <form role="form" id="login-form" action="${formAction}" method="post" name="login-form" />
            <#if externalAuthUrl??>
                <#assign infoClassHide = 'class="vivoAccount"'/>

                <p class="external-auth"><a class="blue button" href="${externalAuthUrl}" title="${i18n().external_auth_name}">${i18n().external_login_text}</a></p>
                <!--<p class="or-auth">or</p>
                <h3 class="internal-auth"><!--Log in using your <b>${i18n().or}</b> ${siteName} ${i18n().account}</h3>

            </#if>

            <div ${infoClassHide} ${infoClassShow}>
            </div>  -->
        
        <form role="form" id="login-form" action="${formAction}"   method="post" name="login-form" class="login-form">

            <h2 class="o-h2">Inicio de sesión</h2>


            <#if infoMessage??>
            <h3>${infoMessage}</h3>
            </#if>

            <#if errorMessage??>
            <#assign infoClassShow = ' id="vivoAccountError"'/>

            <section id="error-alert" role="alert"><img src="${urls.images}/iconAlert.png" alt="${i18n().error_alert_icon}" />
                <p class="login-alert">${errorMessage}</p>
            </section>
            </#if>  
                

                <div class="form-group"> 
                    <span class="fa icon icon-user" data-range=""> </span>
                    <input class="flex-input input-login ts-6" type="text" name="loginName" id="loginName"
                    placeholder="Correo institucional, usuario ó documento" value="${loginName!}" required autofocus />

                </div>

                <div class="form-group"> 
                <span class="fa icon icon-lock" data-range=""> </span>
                    <input class="flex-input input-login ts-6" type="password" name="loginPassword" id="loginPassword" placeholder="Contraseña"/>
                </div>


                <div class="column"> 
                <#--                  <a class="ts-6" href="">No puedes acceder a la cuenta?</a>  -->
                    <input name="loginForm" type="submit" value="Acceder" value="${i18n().login_button}" class="btn btn-primary btn-block mt-1"> 
                </div>



        </form>

    </section>



</#macro>

<#macro forcePasswordChange>
    <section id="login" class="container-log">
            <form role="form" id="login-form" action="${formAction}" method="post" name="login-form" />
                <h2>${i18n().change_password_to_login}</h2>

            <#if errorMessage??>
                <div id="error-alert" role="alert"><img src="${urls.images}/iconAlert.png" width="24" height="24" alt="${i18n().error_alert_icon}"/>
                    <p>${errorMessage}</p>
                </div>
            </#if>

                <label for="newPassword">${i18n().new_password_capitalized}</label>
                <input id="newPassword" name="newPassword" class="text-field focus" type="password" required autofocus/>

                <p class="password-note">${i18n().minimum_password_length(minimumPasswordLength, maximumPasswordLength)}</p>

                <label for="confirmPassword">${i18n().confirm_password_capitalized}</label>
                <input id="confirmPassword" name="confirmPassword" class="text-field" type="password" required />

                 <p class="submit-password"><input name="passwordChangeForm" class="green button" type="submit" value="${i18n().login_button}"/> <span class="or">or <a class="cancel" href="${cancelUrl}" title="${i18n().cancel_title}">${i18n().cancel_link}</a></span></p>
            </form>
    </section>
</#macro>

<#macro alreadyLoggedIn>
    <h2>${i18n().login_button}</h2>
    <p>${i18n().already_logged_in}</p>
</#macro>

<#macro error>
    <p>${i18n().we_have_an_error}</p>
</#macro>
