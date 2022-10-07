<#import "lib-properties.ftl" as p>
 
<article class="profile-card">
<a href="${individual.profileUrl}">
<div class="pc-top">
    <figure>
                                <#if (individual.thumbUrl)??>
                                    <img src="${individual.thumbUrl}" width="90" alt="${individual.name}" />
                                                    <#else>
                                    <img
                                src = '/images/placeholders/person.thumbnail.jpg'
                                alt='${individual.name}'
                                />
                        
                            </#if> 
    </figure>
    <div>
    <span class="pc-name">${individual.name}</span>
    <span class="pc-occupation">Docente-investigador</span>
    </div>
</div>

</a>


</article>


<#--  <li  role="listitem" class="browse-margin" role="navigation">

    <article class="profile-card-container">
                <a href="${individual.profileUrl}" title="View the profile page for
                                    ${individual.name}">
                    <div class="pc-top">
                        <figure class="pc-figure">
                            <#if (individual.thumbUrl)??>
                                <img src="${individual.thumbUrl}" width="90" alt="${individual.name}" />
                                                   <#else>
                                <img
                            src = '/images/placeholders/person.thumbnail.jpg'
                            alt='${individual.name}'
                            />
                    
                        </#if> 
                        
                        </figure>
                        <div>
                            <div class="pc-name">${individual.name}</div>
                            <div class="pc-occupation">${individual.name}</div>
                        </div>
                    </div>
                </a>
    </article>
       
</li>  -->
