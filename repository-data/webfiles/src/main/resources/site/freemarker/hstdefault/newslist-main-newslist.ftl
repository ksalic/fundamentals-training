<#include "../include/imports.ftl">
<#--
  Copyright 2015-2017 Hippo B.V. (http://www.onehippo.com)
  Usage is prohibited except for people attending a training given or authorised by Hippo B.V., and only for that purpose.
-->

<#-- @ftlvariable name="item" type="org.example.beans.NewsDocument" -->
<#-- @ftlvariable name="pageable" type="org.onehippo.cms7.essentials.components.paging.Pageable" -->
<#if pageable?? && pageable.items?has_content>
<div class="body-wrapper">
  <div class="container">
    <div class="row">
      <div class="col-md-9 col-sm-9">
        <div class="news-overview">

        <#-- TODO 1: Add a list iterator around the blog-post div to iterate over the pageable.items -->
        <#list pageable.items as item>
          <div class="blog-post">
            <@hst.manageContent hippobean=item/>
          <#-- TODO 2: Create a link to the current item and store it a variable.
                       Use this variable down the code at the appropriate places. -->
            <@hst.link var="link" hippobean=item />

            <div class="blog-post-type">
              <i class="icon-news"> </i>
            </div>

            <div class="blog-span">
            <#-- TODO 3: Show the title of the current item. -->
              <h2>
                <a href="${link}">${item.title?html}</a>
              </h2>

            <#-- TODO 4: Show the introduction of the current item. -->
              <div class="blog-post-body">
                <p>${item.introduction?html}</p>
              </div>

              <div class="blog-post-details">
              <#-- TODO 5: remove the fixed date and use item.date.time to insert it dynamically.
                         You may want to use the <@fmt.formatDate> tag for formatting. -->
                <div class="blog-post-details-item blog-post-details-item-left icon-calendar">
                  <#if (item.date.time)??>
                    <p><@fmt.formatDate value=item.date.time type="both" dateStyle="medium" timeStyle="short"/></p>
                  </#if>
                </div>

                <div class="blog-post-details-item blog-post-details-item-right">
                  <a href="${link}"> Read more<i class="fa fa-chevron-right"></i>
                  </a>
                </div>
              </div>
            </div>
          </div>
        </#list>

            <#if cparam.showPagination>
              <#include "../include/pagination.ftl">
            </#if>
        </div>
      </div>

      <div class="col-md-3 col-sm-3">
        <div class="hst-container">
          <div class="hst-container-item">
            <div class="sidebar-block">
              <h3 class="h3-sidebar-title sidebar-title">Category</h3>

              <div class="sidebar-content tags">
                <a href="news-facet.html">Solar&nbsp;(23)</a> <a
                href="news-facet.html">Global Warming&nbsp;(13)</a> <a
                href="news-facet.html">Energy&nbsp;(9)</a> <a
                href="news-facet.html">Office&nbsp;(4)</a> <a
                href="news-facet.html">Home&nbsp;(3)</a> <a
                href="news-facet.html">School&nbsp;(3)</a> <a
                href="news-facet.html">Family&nbsp;(2)</a> <a
                href="news-facet.html">Recycling&nbsp;(2)</a> <a
                href="news-facet.html">Animal &amp; Garden&nbsp;(1)</a> <a
                href="news-facet.html">Gadgets&nbsp;(1)</a>
              </div>
            </div>
            <div class="sidebar-block">
              <h3 class="h3-sidebar-title sidebar-title">Archive</h3>

              <div class="sidebar-content tags">
                <a href="news-facet.html">2015&nbsp;(3)</a>
                <a href="news-facet.html">2014&nbsp;(1)</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

<#-- @ftlvariable id="editMode" type="java.lang.Boolean"-->
<#elseif editMode>
  <div>
    <img src="<@hst.link path='/images/essentials/catalog-component-icons/news-list.png'/>"> Click to edit News List
  </div>
</#if>
