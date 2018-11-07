<#include "../include/imports.ftl">
<#--
  Copyright 2015-2016 Hippo B.V. (http://www.onehippo.com)
  Usage is prohibited except for people attending a training given or authorised by Hippo B.V., and only for that purpose.
-->

<#-- @ftlvariable name="document" type="org.example.beans.NewsDocument" -->
<#if document??>
  <div class="body-wrapper">
    <div class="container">
      <div class="row">
        <div class="col-md-9 col-sm-9">
          <div class="blog-post">

            <div class="blog-post-type">
              <i class="icon-news"> </i>
            </div>

            <div class="blog-span">

              <#if (document.image.featured)??>
                  <@hst.link var="imgLink" hippobean=document.image.featured />
                <div class="blog-post-featured-img">
                  <img src="${imgLink}"/>
                </div>
              </#if>

            <#-- TODO 1: remove the fixed title and insert it dynamically -->
              <h2>${document.title}</h2>

            <#-- TODO 2: remove the fixed introduction and insert it dynamically. -->
              <p>${document.introduction}</p>

            <#-- TODO 3: remove the fixed content and insert it dynamically. Use the hst.html tag for that. -->
              <div class="blog-post-body">
                <@hst.html hippohtml=document.content />
              </div>

              <div class="blog-post-details">
              <#-- TODO 4: show the date from the current item. Copy it from the newslist-main-newslist.ftl -->
                <div class="blog-post-details-item blog-post-details-item-left icon-calendar">
                  <#if document.date??>
                    <span class="date">
                      <@fmt.formatDate value=document.date.time type="both" dateStyle="medium" timeStyle="short"/>
                    </span>
                  </#if>
                </div>

              </div>
            </div>
          </div>

        </div>

        <div class="col-md-3 col-sm-3">
          <div class="hst-container">
            <div class="hst-container-item">
              <div class="sidebar-block">
                <h3 class="h3-sidebar-title sidebar-title">Related News</h3>

                <div class="sidebar-content">
                  <ul>
                    <li>
                      <a href="news-detail.html">Sonja Verde Joins GoGreen as VP of Marketing</a>
                    </li>
                    <li>
                      <a href="news-facet.html">GoGreen Announces record growth in H1</a>
                    </li>
                    <li>
                      <a href="news-facet.html">Hippo and GoGreen Collaborate to Launch a
                        Comprehensive Website Redesign</a>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>

        </div>
      </div>
    </div>
  </div>
</#if>

