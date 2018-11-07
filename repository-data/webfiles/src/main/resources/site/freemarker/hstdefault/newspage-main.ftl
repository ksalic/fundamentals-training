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

              <#-- TODO 1: remove the fixed title and insert it dynamically -->
              <h2>GoGreen Nominated for Award (Static Text)</h2>

              <#-- TODO 2: remove the fixed introduction and insert it dynamically. -->
              <p>GoGreen is Pleased to Announce its Nomination for a UNEF Sustainable Business Award.</p>

              <#-- TODO 3: remove the fixed content and insert it dynamically. Use the hst.html tag for that. -->
              <div class="blog-post-body">
                <p>New York-Nairobi. GoGreen is among 10 global businesses recognized by the United Nations
                  Environmental Fund with a nomination for the prestigious Sustainable Business Award.
                  According to
                  the Sustainable Business Awards announcement, GoGreen has been nominated for its
                  &ldquo;outstanding contributions to fighting climate change with its global corporate
                  social
                  responsibility strategy.&rdquo;</p>

                <p>&ldquo;We&rsquo;re thrilled to be nominated for Sustainable Business Award&rdquo; notes
                  GoGreen&rsquo;s CEO Robert Greene, &ldquo;we thoroughly respect the work of the UNEF and
                  are proud
                  to be listed among such visionary companies.&rdquo; Winners of the Sustainable Business
                  Award will
                  be announced at a ceremony in Nairobi this December.</p>
              </div>

              <div class="blog-post-details">
              <#-- TODO 4: show the date from the current item. Copy it from the newslist-main-newslist.ftl -->
                <div class="blog-post-details-item blog-post-details-item-left icon-calendar">
                  <span class="date">22 October, 2015</span>
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

