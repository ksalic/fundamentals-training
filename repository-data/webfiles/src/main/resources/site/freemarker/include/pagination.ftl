<#include "../include/imports.ftl">
<#--
  Copyright 2015 Hippo B.V. (http://www.onehippo.com)
  Usage is prohibited except for people attending a training given or authorised by Hippo B.V., and only for that purpose.
-->
<#-- @ftlvariable name="pageable" type="org.onehippo.cms7.essentials.components.paging.Pageable" -->

<#if pageable??>
  <div class="pagination-container">
    <ul class="pagination">
      <#if pageable.totalPages gt 1>
        <#list pageable.pageNumbersArray as pageNr>
          <@hst.renderURL var="pageUrl">
            <@hst.param name="page" value="${pageNr}"/>
            <@hst.param name="pageSize" value="${pageable.pageSize}"/>
          </@hst.renderURL>
          <#if pageNr_index==0>
            <#if pageable.previous>
              <@hst.renderURL var="pageUrlPrevious">
                <@hst.param name="page" value="${pageable.previousPage}"/>
                <@hst.param name="pageSize" value="${pageable.pageSize}"/>
              </@hst.renderURL>
              <li><a class="next" href="${pageUrlPrevious}">Previous</a></li><#else>
              <li class="disabled"><span class="prev">Previous</span></li>
            </#if>
          </#if>
          <#if pageable.currentPage == pageNr>
            <li><span class="current">${pageNr}</span></li>
          <#else >
            <li><a href="${pageUrl}">${pageNr}</a></li>
          </#if>
          <#if !pageNr_has_next>
            <#if pageable.next>
              <@hst.renderURL var="pageUrlNext">
                <@hst.param name="page" value="${pageable.nextPage}"/>
                <@hst.param name="pageSize" value="${pageable.pageSize}"/>
              </@hst.renderURL>
              <li><a class="next" href="${pageUrlNext}">Next</a></li>
            <#else>
              <li class="disabled"><span class="next">Next</span></li>
            </#if>
          </#if>
        </#list>
      </#if>
    </ul>
  </div>
</#if>
