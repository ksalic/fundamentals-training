<#include "../include/imports.ftl">
<#--
  Copyright 2015-2017 Hippo B.V. (http://www.onehippo.com)
  Usage is prohibited except for people attending a training given or authorised by Hippo B.V., and only for that purpose.
-->

<#-- @ftlvariable name="menu" type="org.hippoecm.hst.core.sitemenu.HstSiteMenu" -->
<#-- @ftlvariable name="editMode" type="java.lang.Boolean"-->
<#if menu??>
<div class="has-edit-button">
  <#if menu.siteMenuItems??>
    <ul class="navigation" id="main-navigation">
      <#list menu.siteMenuItems as item>
        <#if !item.hstLink?? && !item.externalLink??>
            <#if item.selected || item.expanded>
            <li class="active"><div style="padding: 10px 15px;">${item.name?html}</div></li>
            <#else>
            <li><div style="padding: 10px 15px;">${item.name?html}</div></li>
            </#if>
        <#else>
            <#if item.hstLink??>
                <#assign href><@hst.link link=item.hstLink/></#assign>
            <#elseif item.externalLink??>
                <#assign href>${item.externalLink?replace("\"", "")}</#assign>
            </#if>
            <#if  item.selected || item.expanded>
            <li><a href="${href}" class="activelink"><span class="label-nav">${item.name?html}</span></a></li>
            <#else>
            <li><a href="${href}"><span class="label-nav">${item.name?html}</span></a></li>
            </#if>
        </#if>
      </#list>
    </ul>
  </#if>
  <@hst.cmseditmenu menu=menu/>
</div>
</#if>

<#--
<nav>
  <ul class="navigation" id="main-navigation">
    <li><a href="index.html" class="activelink"><span class="label-nav">Home</span> </a></li>
    <li><a href="news.html"><span class="label-nav">News</span></a></li>
    <li><a href="blogs.html"><span class="label-nav">Blogs</span></a></li>
    <li><a href="events.html"><span class="label-nav">Events</span></a></li>
    <li><a href="products.html"><span class="label-nav">Products</span></a></li>
    <li><a href="about.html"><span class="label-nav">About</span></a></li>
  </ul>
</nav>
-->