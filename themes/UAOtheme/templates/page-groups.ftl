
<section class="hero-section">

<div class="breadcrumb-desktop">
<a href="${urls.base}/">Inicio</a>
</div>
<div class="breadcrumb-mobile">
<a href="https://www.uao.edu.co/investigacion/">
<span class="icon icon-angle-left"></span>
<span>
Investigación </span>
</a>
</div>
<div class="hhs-container with-temporary-notice hhs-top">
<div class="hhsc-left">

<div class="hero-title">
<a href="${urls.base}/" class="category-tag">
Investigación </a>
<h1>
Grupos de Investigación </h1>
</div>
</div>
<div class="hhsc-right">
<figure>
<img width="1490" height="820" src="https://www.uao.edu.co/wp-content/uploads/2020/05/LABORATORIO-UAO.jpg" class="attachment-post-thumbnail size-post-thumbnail wp-post-image" alt="La investigación en la universidad Autónoma de Occidente" loading="lazy" srcset="https://www.uao.edu.co/wp-content/uploads/2020/05/LABORATORIO-UAO-745x410@2x.jpg 1490w, https://www.uao.edu.co/wp-content/uploads/2020/05/LABORATORIO-UAO-335x184.jpg 335w, https://www.uao.edu.co/wp-content/uploads/2020/05/LABORATORIO-UAO-745x410.jpg 745w, https://www.uao.edu.co/wp-content/uploads/2020/05/LABORATORIO-UAO-190x105.jpg 190w, https://www.uao.edu.co/wp-content/uploads/2020/05/LABORATORIO-UAO-580x319.jpg 580w, https://www.uao.edu.co/wp-content/uploads/2020/05/LABORATORIO-UAO-335x184@2x.jpg 670w, https://www.uao.edu.co/wp-content/uploads/2020/05/LABORATORIO-UAO-580x319@2x.jpg 1160w" sizes="(max-width: 1490px) 100vw, 1490px"> </figure>
</div>
</div>
</section>

<article class="section-text-content">
    <p>La UAO cuenta con 24 grupos de investigación que han sido categorizados por MinCiencias, <a rel="noreferrer noopener" aria-label=" (se abre en una nueva pestaña)" href="https://minciencias.gov.co/sites/default/files/listado_resultados_finales_-_833_de_2018_-_grupos_-_consulta.pdf" target="_blank">convocatoria No. 823 de 2018</a>, de acuerdo al <a rel="noreferrer noopener" aria-label=" (se abre en una nueva pestaña)" href="https://minciencias.gov.co/sites/default/files/upload/convocatoria/4._anexo_1._documento_conceptual_del_modelo_de_reconocimiento_y_medicion_de_grupos_de_investigacion_2018.pdf" target="_blank">Modelo de medición </a>de grupos del Sistema Nacional de Ciencia, Tecnología e Innovación, Sncti.&nbsp;</p>
    <p><strong>La medición de los grupos de investigación se basa en cuatro tipos de productos fundamentales reconocidos en el Sncti:</strong></p>
    <ol><li>Productos de nuevo conocimiento. </li><li>Productos de desarrollo tecnológico e innovación.</li><li>Productos de apropiación social del conocimiento, congresos, talleres, reconocimientos y otras prácticas de construcción y circulación colectiva del conocimiento. </li><li>Productos de actividades relacionadas con la formación de talento humano para la CTI.</li></ol>
    <p>Cada grupo de investigación cuenta con un coordinador y desde la Vicerrectoría de Investigaciones, Innovación y Emprendimiento recibe apoyo para realizar las diferentes actividades de investigación, los procesos de protección de los resultados, la difusión y la transferencia de conocimiento a los actores externos, organizaciones/entidades, comunidades, etc.</p>
    <p></p>
</article>

<section class="grey-image-links">
    <div class="grid-container">
    <#list facultades as result>

        <a class="link-image-button" href='${urls.base}/individual${result.individualURI?substring(result.individualURI?last_index_of("/"))}'> 
            <figure> 
                <#if result.dl?has_content>
                <img  src= '${urls.base}/individual${result.dl?substring(result.dl?last_index_of("/"))}'> 
                </#if>
            </figure> 
            <div>
            ${result.gname}
            </div>
        
        </a>

    </#list>

    </div>
 </section>