<#include "../include/imports.ftl">
<#--
  Copyright 2016-2017 Hippo B.V. (http://www.onehippo.com)
  Usage is prohibited except for people attending a training given or authorised by Hippo B.V., and only for that purpose.
-->
<!doctype html>
<html class="no-js" lang="en">
<head>
  <title>Hippo Go Green - Home</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <link rel="stylesheet" href="css/bootstrap.css">
  <link rel="stylesheet" href="css/font-awesome.css">

  <link href='css/style.css' rel='stylesheet' type='text/css'>
  <link href='css/responsive.css' rel='stylesheet' type='text/css'>

  <link rel="stylesheet" media="screen" type="text/css" href="css/hippo-green.css" />

  <!-- Fonts -->
  <link href="fonts/open-sans.css" rel='stylesheet' type='text/css'>
  <link href="fonts/raleway.css" rel='stylesheet' type='text/css'>

  <!-- javascript -->
  <script type="text/javascript" src="js/jquery-2.1.0.min.js"></script>
  <script type="text/javascript" src="js/kanzi-menu.js"></script>

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
            <a href="index.html"><img src="images/gogreenlogo2.png" alt="" height="107" /></a>
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
      TODO: Main Content must be shown here.
    </div>
  </div>

  <!-- footer -->
  <footer>
    <div class="footer">

      <div class="container">
        <div class="footer-wrapper">
          <div class="row">

            <!-- Footer Col. -->
            <div class="col-md-3 col-sm-3 footer-col">
              <div class="footer-content">
                <div class="footer-content-logo">
                  <a href="http://www.onehippo.com" target="_blank">
                    <img src="images/logo-hippo.png" alt="onehippo.com" />
                  </a>
                </div>
              </div>
            </div>
            <!-- //Footer Col.// -->

            <!-- Footer Col. -->
            <div class="col-md-3 col-sm-3 footer-col">
              <div class="footer-title">SERVICE</div>
              <div class="footer-content footer-recent-tweets-container">
                <ul class="footer-category-list">
                  <li><a href="rss">RSS</a></li>
                </ul>
              </div>
            </div>
            <!-- //Footer Col.// -->

            <!-- Footer Col. -->
            <div class="col-md-3 col-sm-3 footer-col">
              <div class="footer-title">SECTIONS</div>
              <div class="footer-content">
                <ul class="footer-category-list">
                  <li><a href="news.html">News</a></li>
                  <li><a href="events.html">Events</a></li>
                  <li><a href="blogs.html">Blogs</a></li>
                  <li><a href="products.html">Products</a></li>
                  <li><a href="about.html">About</a></li>
                </ul>
              </div>
            </div>
            <!-- //Footer Col.// -->

            <!-- Footer Col. -->
          </div>
        </div>

      </div>
      <div class="copyright">
        <div class="container">
          <div class="row">
            <div class="col-md-12 col-sm-12 center-text">
              <div class="copyright-text">Hippo &copy; 2010-2017</div>
            </div>

          </div>
        </div>
      </div>
    </div>
  </footer>
</div>

</body>
</html>

