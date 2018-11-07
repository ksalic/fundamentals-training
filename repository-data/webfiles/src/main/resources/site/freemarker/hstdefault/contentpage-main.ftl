<#include "../include/imports.ftl">
<#--
  Copyright 2015-2017 Hippo B.V. (http://www.onehippo.com)
  Usage is prohibited except for people attending a training given or authorised by Hippo B.V., and only for that purpose.
-->
<#-- @ftlvariable name="document" type="org.example.beans.ContentDocument" -->
<div class="body-wrapper">
  <div class="container">
    <div class="row">
      <#if document??>

        <#-- TODO replace the static title, introduction and content with dynamic markers -->

        <div class="col-md-9 col-sm-9">
          <h2>Lorem Ipsum (Static Text)</h2>
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
          <p>
            Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
          </p>
        </div>
      <#elseif editMode>
        <div>
          <img src="<@hst.link path="/images/essentials/catalog-component-icons/simple-content.png" />"> Click to edit Simple Content
        </div>
      </#if>
    </div>
  </div>
</div>
