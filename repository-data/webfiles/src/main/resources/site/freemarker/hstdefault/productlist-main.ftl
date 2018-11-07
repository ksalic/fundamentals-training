<#include "../include/imports.ftl">
<#--
  Copyright 2016-2017 Hippo B.V. (http://www.onehippo.com)
  Usage is prohibited except for people attending a training given or authorised by Hippo B.V., and only for that purpose.
-->
<#-- @ftlvariable name="item" type="org.example.beans.Product" -->
<#-- @ftlvariable name="pageable" type="org.onehippo.cms7.essentials.components.paging.Pageable" -->
<div>
  <#if pageable?? && pageable.items?has_content>
    <#list pageable.items as item>
      <@hst.link var="link" hippobean=item />
      <article class="has-edit-button">
        <@hst.manageContent hippobean=item/>
        <#if item.title??>
          <h3><a href="${link}">${item.title?html}</a></h3>
        </#if>
        <#if (item.date.time)??>
          <p><@fmt.formatDate value=item.date.time type="both" dateStyle="medium" timeStyle="short"/></p>
        </#if>
        <#if item.introduction??>
          <p>${item.introduction?html}</p>
        </#if>
        <p>
          <#if item.price??>Price: ${item.price}.</#if>
          <#if item.rating??>Rating: ${item.rating}.</#if>
          <#if item.instock??>Available: ${item.instock}</#if>
        </p>
      </article>
    </#list>
    <#if cparam.showPagination>
    <#include "../include/pagination.ftl">
    </#if>
  <#-- @ftlvariable name="editMode" type="java.lang.Boolean"-->
  <#elseif editMode>
    <img src="<@hst.link path='/images/catalog-component-icons/product-list.png'/>"> Click to edit Product List
  </#if>
</div>

