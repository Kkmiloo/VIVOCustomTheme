<#-- $This file is distributed under the terms of the license in LICENSE$ -->

<#-- Default individual search view -->

<#import "lib-vivo-properties.ftl" as p>
<a class="results-card" href="${individual.profileUrl}">
    <div>
    <@p.displayTitle individual />
        <h6  title="${i18n().individual_name}">${individual.name}</h6>


        <p class="ts-4">${individual.snippet}</p>
    </div>
</a>