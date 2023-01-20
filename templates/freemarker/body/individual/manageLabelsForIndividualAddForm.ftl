<#-- $This file is distributed under the terms of the license in LICENSE$ -->
<#-- Custom form for managing labels for individuals - specific to VIVO which handles people as well -->
<#assign isPersonType = "false"/>
<#if editConfiguration.pageData.isPersonType?has_content>
	<#assign isPersonType = editConfiguration.pageData.isPersonType />
</#if>
<form id="addLabelForm" name="addLabelForm" class="customForm" action="${submitUrl}">
           <h2>${i18n().add_label}</h2>
           <#if isPersonType?has_content && isPersonType = "true">
	        <div class="d-flex form-group">
				<div class="form-label">

	            <label for="firstName">${i18n().first_name} ${requiredHint}</label>
				</div>

				<div class="form-input">

	            <input size="30"  type="text" id="firstName" name="firstName" value="${firstNameValue}" />
				</div>
	        </div>
			<#--TODO: With ISF changes, add middle name input-->

			<div class="form-group d-flex">
							<div class="form-label">

	            <label for="middleName">${i18n().middle_name} </label>
				</div>
				<div class="form-input">

	            <input size="30"  type="text" id="middleName" name="middleName" value="${middleNameValue}" />
				</div>

	        </div>

	        <div class="form-group d-flex">
							<div class="form-label">

	            <label for="lastName">${i18n().last_name} ${requiredHint}</label>
				</div>

				<div class="form-input">

	            <input size="30"  type="text" id="lastName" name="lastName" value="${lastNameValue}" />
				</div>
	        </div>
	    <#else>
	        <div class="form-group d-flex">
							<div class="form-label">

	            <label for="name">${i18n().name_capitalized} ${requiredHint}</label>
				</div>

				<div class="form-input">

	            <input size="30"  type="text" id="label" name="label" value="${labelValue}" />
				</div>
	        </div>
	    </#if>

			<div class="form-group d-flex">
							<div class="form-label">

				</div>

				<div class="form-input">

 			<input type="hidden" name="editKey" id="editKey" value="${editKey}"/>
        	<input type="submit" class="submit" id="submit" value="${i18n().save_button}" role="button" role="input" />
			${i18n().or}
			<a href="${urls.referringPage}" class="cancel" title="${i18n().cancel_title}" >${i18n().cancel_link}</a>
				</div> 


            <p id="requiredLegend" class="requiredHint">* ${i18n().required_fields}</p>
            </form>
