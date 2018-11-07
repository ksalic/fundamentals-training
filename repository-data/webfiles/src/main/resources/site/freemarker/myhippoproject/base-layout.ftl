<#include "../include/imports.ftl">
<#--
  Copyright 2015-2017 Hippo B.V. (http://www.onehippo.com)
  Usage is prohibited except for people attending a training given or authorised by Hippo B.V., and only for that purpose.
-->
<!doctype html>
<html class="no-js" lang="en">
  <head>
    <title>Hippo Go Green - Home</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <@hst.webfile path="css/bootstrap.css" var="link" />
    <link rel="stylesheet" href="${link}">

    <@hst.webfile path="css/font-awesome.css" var="link" />
    <link rel="stylesheet" href="${link}">

    <@hst.webfile path="css/style.css" var="link" />
    <link rel='stylesheet' type='text/css' href="${link}">

    <@hst.webfile path="css/responsive.css" var="link" />
    <link rel='stylesheet' type='text/css' href="${link}">

    <@hst.webfile path="css/hippo-green.css" var="link" />
    <link rel="stylesheet" media="screen" type="text/css" href="${link}"/>

    <!-- Fonts -->
    <@hst.webfile path="fonts/open-sans.css" var="link" />
    <link rel='stylesheet' type='text/css' href="${link}">

    <@hst.webfile path="fonts/raleway.css" var="link" />
    <link rel='stylesheet' type='text/css' href="${link}">

    <!-- javascript. suggested alternative example -->
    <#--<#assign jsFiles = ['js/jquery-2.1.0.min.js', 'js/kanzi-menu.js']>-->
    <#--<#list jsFiles as file>-->
      <#--<script type="text/javascript" src="<@hst.webfile path=file />"></script>-->
    <#--</#list>-->

    <@hst.headContributions categoryExcludes="htmlBodyEnd" xhtml=true/>

  </head>
  <body class="bgpattern-neutral">

    <div id="wrapper" class="boxed">
      <div class="top_wrapper">

        <div class="top-bar">
          <div class="container">
            <div class="row">
              <!-- lang navigation -->
              <div class="col-sm-7 langnav">
                <nav>
                  <ul class="" id="language">

                    <li class="active"><i class="fa fa-ellipsis-h"></i> <span>United States</span>
                      <ul>
                        <li><a href="fr.html">France</a></li>
                      </ul>
                    </li>

                  </ul>
                </nav>
              </div>
              <div class="col-sm-5" id="top-search">

                <div class="searchbox">
                  <form action="search.html" method="get">
                    <input type="text" class="searchbox-inputtext" id="searchbox-inputtext" name="query"
                           placeholder="Search"/> <label class="searchbox-icon" for="searchbox-inputtext"></label>
                    <input
                      type="submit" class="searchbox-submit" value="Search"/>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- Header -->
        <header id="header">
          <div class="container">

            <div class="row header">

              <!-- Logo -->
              <div class="col-xs-2 logo">
                <@hst.webfile path="images/gogreenlogo2.png" var="link"/>
                <a href="index.html"><img src="${link}" alt="" height="107"/></a>
              </div>
              <!-- //Logo// -->

              <!-- Main navigation -->
              <!-- Navigation File -->
              <div class="col-md-12">

                <!-- Mobile Button Menu -->
                <div class="mobile-menu-button">
                  <i class="fa fa-list-ul"></i>
                </div>
                <!-- //Mobile Button Menu// -->
                <@hst.include ref="menu"/>

                <!-- Mobile Nav. Container -->
                <ul class="mobile-nav">
                  <li class="responsive-searchbox">
                    <!-- Responsive Nave -->
                    <form action="index.html#" method="get">
                      <input type="text" class="searchbox-inputtext" id="searchbox-inputtext-mobile" name="s"/>
                      <button class="icon-search"></button>
                    </form>
                    <!-- //Responsive Nave// -->
                  </li>
                </ul>
                <!-- //Mobile Nav. Container// -->
              </div>
              <!-- //Main navigation// -->
            </div>
          </div>
        </header>
        <!-- //Header// -->
      </div>

      <!-- body / main -->

      <div class="content-wrapper">
        <div class="top-title-wrapper">
          <div class="container">
            <div class="row">
              <div class="col-md-12 col-sm-12">
                <div class="page-info">
                </div>
              </div>
            </div>
          </div>
        </div>
        <div>
          <@hst.include ref="main"/>
        </div>
      </div>

      <!-- footer -->
      <@hst.include ref="footer"/>
    </div>

    <@hst.headContributions categoryIncludes="htmlBodyEnd" xhtml=true/>
  </body>
</html>

