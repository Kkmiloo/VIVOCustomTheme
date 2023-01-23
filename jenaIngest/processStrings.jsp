<%-- $This file is distributed under the terms of the license in LICENSE$ --%>

<%@ page import="org.apache.jena.ontology.Individual" %>
<%@ page import="org.apache.jena.ontology.OntModel" %>
<%@ page import="org.apache.jena.rdf.model.ModelMaker" %>
<%@ page import="org.apache.jena.shared.Lock" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="java.util.List" %>
<%@ page import="java.net.URLEncoder" %>

<%@taglib prefix="vitro" uri="/WEB-INF/tlds/VitroUtils.tld" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="edu.cornell.mannlib.vitro.webapp.auth.permissions.SimplePermission" %>
<% request.setAttribute("requestedActions", SimplePermission.USE_ADVANCED_DATA_TOOLS_PAGES.ACTION); %>
<vitro:confirmAuthorization />

    <h2><a class="ingestMenu" href="ingest">Ingest Menu</a> > Process Property Value Strings</h2>

    <form action="ingest" method="get"i>
        <div class="d-flex form-group">
            <div class="form-label">

                <p>String processor class</p>
            </div>
            <div class="form-input">


                <input type="hidden" name="action" value="processStrings"/>
                <input type="text" style="width:80%;" name="className"/>
            </div>
        </div>
        <div class="d-flex form-group">

            <div class="form-label">
                
                <p>String processor method</p>
            </div>
            
            <div class="form-input">
                <input type="text" name="methodName"/>
                
            </div>
        </div>

        <div class="d-flex form-group">

            <div class="form-label">

                <p>Property URI</p>
            </div>

            <div class="form-input">

                <input type="text" name="propertyName"/>
            </div>
        </div>
    
    
        <div class="form-group d-flex">

            <div class="form-label">

                <p>New Property URI</p>
            </div>
            <div class="form-input">

                <input type="text" name="newPropertyName"/>
            </div>
        </div>

        <div class="d-flex form-group">

            <div class="form-label">

                <p>model to use</p>
            </div>
            
            <div class="form-input">

                <select name="destinationModelName">
                    <c:forEach var="modelName" items="${modelName}">
                        <option value="${modelName}"/>${modelName}</option>
                    </c:forEach>
                </select>
                <input type="checkbox" name="processModel" value="TRUE"/> apply changes directly to this model
            </div>
        </div>
    
        <div class="form-group d-flex">

            <div class="form-label">

                <p>model in which to save added statements</p>
            </div>

            <div class="form-input">

                <select name="additionsModel">
                    <option value="">none</option>
                    <forEach var="modelName" items="${modelNames}">
                        <option value="${modelName}">${modelName}</option>
                    </forEach>
                </select>
            </div>
        </div>
            
        <div class="d-flex form-group">

            <div class="form-label">
                <p>model in which to save retracted statements</p>

            </div>

            <div class="form-input">

                <select name="retractionsModel">
                    <option value="">none</option>
                    <c:forEach var="modelName" items="${modelNames}">
                        <option value="${modelName}">${modelName}</option>
                    </c:forEach>
                </select>
            </div>
        </div>

        <div class="d-flex form-group">
            <div class="form-label"></div>
            <div class="form-input">

                <input class="submit" type="submit" value="Process property values"/>
            </div>
        </div>

    