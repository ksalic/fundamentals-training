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

          <div class="blog-post">
            <@hst.manageContent hippobean=item/>
          <#-- TODO 2: Create a link to the current item and store it a variable.
                       Use this variable down the code at the appropriate places. -->

            <div class="blog-post-type">
              <i class="icon-news"> </i>
            </div>

            <div class="blog-span">
            <#-- TODO 3: Show the title of the current item. -->
              <h2>
                <a href="news-detail.html">GoGreen Nominated for Award (Static Text)</a>
              </h2>

            <#-- TODO 4: Show the introduction of the current item. -->
              <div class="blog-post-body">
                <p>GoGreen is Pleased to Announce its Nomination for a UNEF Sustainable Business Award</p>
                <p>
                <p>New York-Nairobi. GoGreen is among 10 global businesses recognized by the United Nations
                  Environmental Fund with a nomination for the prestigious Sustainable Business Award. According
                  to the Sustainable Business Awards announcement, GoGreen has been nominated for its
                  &ldquo;outstanding contributions to fighting climate change with its global corporate social
                  responsibility strategy.&rdquo;</p>
                <p>&ldquo;We&rsquo;re thrilled to be nominated for Sustainable Business Award&rdquo; notes
                  GoGreen&rsquo;s CEO Robert Greene, &ldquo;we thoroughly respect the work of the UNEF and are
                  proud to be listed among such visionary companies.&rdquo; Winners of the Sustainable Business
                  Award will be announced at a ceremony in Nairobi this December.</p>
                </p>
              </div>

              <div class="blog-post-details">
                <#-- TODO 5: remove the fixed date and use item.date.time to insert it dynamically.
                           You may want to use the <@fmt.formatDate> tag for formatting. -->
                <div class="blog-post-details-item blog-post-details-item-left icon-calendar">22 October, 2015</div>

                <div class="blog-post-details-item blog-post-details-item-right">
                  <a href="news-detail.html"> Read more<i class="fa fa-chevron-right"></i>
                  </a>
                </div>
              </div>
            </div>
          </div>

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
