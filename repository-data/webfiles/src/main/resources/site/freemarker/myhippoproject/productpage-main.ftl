<#include "../include/imports.ftl">
<#--
  Copyright 2016-2018 Hippo B.V. (http://www.onehippo.com)
  Usage is prohibited except for people attending a training given or authorised by Hippo B.V., and only for that purpose.
-->

<#-- @ftlvariable name="document" type="org.example.beans.Product" -->
<#if document??>
  <article class="has-edit-button">
    <@hst.manageContent hippobean=document/>
    <h1>${document.title?html}</h1>
    <#if document.introduction??>
      <div class="well">
        <p>${document.introduction?html}</p>
      </div>
    </#if>
    <div class="row">
      <div class="col-sm-10">
        <@hst.html hippohtml=document.description/>
      </div>
      <div class="col-sm-2">
        <ul class="list-group">
          <#if document.price??>
            <li class="list-group-item active">Buy it for: <@fmt.formatNumber value=document.price type="currency" /></li>
          </#if>
          <#if document.instock??>
            <li class="list-group-item">Available: ${document.instock}</li>
          </#if>
          <#if document.rating??>
            <li class="list-group-item">Rating: ${document.rating}</li>
          </#if>
          <li class="list-group-item">
            Categories:
            <#list document.categories as category>
              ${categoriesMap[category]?html}<#sep>,
            </#list>
          </li>
        </ul>
      </div>
    </div>
  </article>
</#if>