<#include "../include/imports.ftl">
<#--
  Copyright 2015-2017 Hippo B.V. (http://www.onehippo.com)
  Usage is prohibited except for people attending a training given or authorised by Hippo B.V., and only for that purpose.
-->

<#-- @ftlvariable name="facets" type="org.hippoecm.hst.content.beans.standard.HippoFacetNavigationBean" -->

<#if facets??>
<div class="row">
  <h4>Use the filters to refine the results:</h4>

  <#-- TODO Add the first level of iteration. Use as item name "facet". -->
  <#list facets.folders as facet>
    <nav class="navbar navbar-default">
      <div class="container">
        <div class="navbar-header">
          <span class="navbar-brand">${facet.name?html}</span>
        </div>
        <div class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <#-- TODO Add the second level of iteration. Use as item name "value". -->
            <#list facet.folders as value>
               <#if value.count &gt; 0>
                  <#if value.leaf>
                    <@hst.facetnavigationlink var="link" remove=value current=facets />
                    <li><a class="btn-lg" href="${link}"><span class="label label-success">${value.name?html}
                      <span class="glyphicon glyphicon-remove" aria-hidden="true"></span></span></a></li>
                  <#else>
                    <#-- TODO Create the link to the facet value. Use as variable name "link". -->
                    <@hst.link var="link" hippobean=value />
                    <li><a class="btn-lg" href="${link}">
                      <span class="label label-info">${value.name?html}</span>
                      <span class="badge">${value.count}</span></a>
                    </li>
                  </#if>
               </#if>
            </#list>
          </ul>
        </div>
      </div>
    </nav>
  </#list>
</div>
</#if>
