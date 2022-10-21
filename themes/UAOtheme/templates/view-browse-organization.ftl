


  <a class="link-image-button " href="${individual.profileUrl}">
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
     ${individual.name}
    </div>
  </a>


  </article>


