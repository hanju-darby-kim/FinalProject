
<!DOCTYPE html>
<html lang="en">

<head>
	<title>Buttons | Repute - Responsive Multipurpose Bootstrap Theme</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="Responsive Multipurpose Bootstrap Theme">
	<meta name="author" content="The Develovers">
	<!-- CSS -->
	<link href="${pageContext.request.contextPath}/css/bootstrap.css" rel="stylesheet" type="text/css">
	<link href="${pageContext.request.contextPath}/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link href="${pageContext.request.contextPath}/css/main.css" rel="stylesheet" type="text/css">
	<link href="${pageContext.request.contextPath}/css/my-custom-styles.css" rel="stylesheet" type="text/css">
	
	<!-- IE 9 Fallback-->
	<!--[if IE 9]>
		<link href="${pageContext.request.contextPath}/css/ie.css" rel="stylesheet">
	<![endif]-->
	<!-- GOOGLE FONTS -->
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:300,400italic,400,600,700' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:300,300italic,400italic,700,400,300' rel='stylesheet' type='text/css'>
	<!-- FAVICONS -->
	<link rel="apple-touch-icon-precomposed" sizes="144x144" href="${pageContext.request.contextPath}/ico/repute144x144.png">
	<link rel="apple-touch-icon-precomposed" sizes="114x114" href="${pageContext.request.contextPath}/ico/repute114x114.png">
	<link rel="apple-touch-icon-precomposed" sizes="72x72" href="${pageContext.request.contextPath}/ico/repute72x72.png">
	<link rel="apple-touch-icon-precomposed" href="${pageContext.request.contextPath}/ico/repute57x57.png">
	<link rel="shortcut icon" href="${pageContext.request.contextPath}/ico/favicon.png">
</head>

<body>
	<!-- WRAPPER -->
	<div class="wrapper">
		<!-- NAVBAR -->
		<nav class="navbar navbar-default " role="navigation">
			<div class="container">
				<!-- TOPBAR -->
				<div class="topbar">
					<ul class="list-inline top-nav">
						<li>
							<div class="btn-group">
								<button type="button" class="btn btn-link dropdown-toggle btn-xs" data-toggle="dropdown"><img src="${pageContext.request.contextPath}/img/flags/United-Kingdom.png" alt="United Kingdom"> United Kingdom <span class="caret"></span></button>
								<ul class="dropdown-menu dropdown-menu-right country-selector" role="menu">
									<li>
										<a href="#"><img src="${pageContext.request.contextPath}/img/flags/United-Kingdom.png" alt="United Kingdom"> United Kingdom</a>
									</li>
									<li>
										<a href="#"><img src="${pageContext.request.contextPath}/img/flags/Japan.png" alt="Japan"> Japan</a>
									</li>
									<li>
										<a href="#"><img src="${pageContext.request.contextPath}/img/flags/China.png" alt="China"> China</a>
									</li>
									<li>
										<a href="#"><img src="${pageContext.request.contextPath}/img/flags/Germany.png" alt="Germany"> Germany</a>
									</li>
								</ul>
							</div>
						</li>
						<li><a href="#">Help</a></li>
						<li><a href="#">Support</a></li>
					</ul>
					<div class="searchbox">
						<form method="post">
							<div class="input-group input-group-sm">
								<input type="text" class="form-control" placeholder="search ...">
								<span class="input-group-btn">
									<button class="btn btn-default" type="button"><i class="fa fa-search"></i></button>
								</span>
							</div>
						</form>
					</div>
				</div>
				<!-- END TOPBAR -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#main-nav">
						<span class="sr-only">Toggle Navigation</span>
						<i class="fa fa-bars"></i>
					</button>
					<a href="index.html" class="navbar-brand navbar-logo navbar-logo-bigger">
						<img src="${pageContext.request.contextPath}/img/logo/repute-logo-nav.png" alt="Repute - Responsive Multipurpose Bootstrap Theme">
					</a>
				</div>
				<!-- MAIN NAVIGATION -->
				<div id="main-nav" class="navbar-collapse collapse navbar-mega-menu">
					<ul class="nav navbar-nav navbar-right">
						<li class="dropdown ">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">HOME <i class="fa fa-angle-down"></i></a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="index.html">Home v1</a></li>
								<li><a href="index-v1_dark-header.html">Home v1 Dark Header</a></li>
								<li><a href="index-v1_light-footer.html">Home v1 Light Footer</a></li>
								<li><a href="index-v2.html">Home v2</a></li>
								<li><a href="index-v2_dark-header.html">Home v2 Dark Header</a></li>
								<li><a href="index-v3.html">Home v3</a></li>
								<li><a href="index-v4_fullscreen.html">Home v4 Fullscreen</a></li>
								<li><a href="index-v5_fullscreen_slider.html">Home v5 Fullscreen Slider</a></li>
								<li class="dropdown ">
									<a href="#">Blog Home <span class="label label-danger label-main-nav">NEW</span> <i class="fa fa-angle-right"></i></a>
									<ul class="dropdown-menu" role="menu">
										<li><a href="blog/index-blog-v1.html">Blog Home v1</a></li>
										<li><a href="blog/index-blog-v2.html">Blog Home v2</a></li>
									</ul>
								</li>
								<li><a href="one-page/index.html">One Page</a></li>
							</ul>
						</li>
						<li class="dropdown ">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">FEATURES  <span class="label label-danger label-main-nav">NEW</span> <i class="fa fa-angle-down"></i></a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="feature-navigation-menu.html">Navigation Menus</a></li>
								<li><a href="feature-hero-unit.html">Hero Units</a></li>
								<li><a href="feature-page-header.html">Page Header</a></li>
								<li><a href="feature-footer.html">Footers</a></li>
								<li class="dropdown ">
									<a href="#">Email Templates <span class="label label-danger label-main-nav">NEW</span> <i class="fa fa-angle-right"></i></a>
									<ul class="dropdown-menu" role="menu">
										<li><a href="email-templates/email-template-v1/email-template-v1.html">Email Template v1</a></li>
										<li><a href="email-templates/email-template-v2/email-template-v2.html">Email Template v2</a></li>
									</ul>
								</li>
							</ul>
						</li>
						<li class="dropdown ">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">PAGES <i class="fa fa-angle-down"></i></a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="page-services.html">Service Page</a></li>
								<li><a href="page-pricing-tables.html">Pricing Tables</a></li>
								<li class="dropdown ">
									<a href="#">Columns <i class="fa fa-angle-right"></i></a>
									<ul class="dropdown-menu" role="menu">
										<li><a href="page-left-sidebar.html">Left Sidebar</a></li>
										<li><a href="page-right-sidebar.html">Right Sidebar</a></li>
										<li><a href="page-double-sidebar.html">Double Sidebar</a></li>
									</ul>
								</li>
								<li><a href="page-search-results.html">Search Result</a></li>
								<li><a href="page-support.html">Support</a></li>
								<li><a href="page-faq.html">FAQ</a></li>
								<li><a href="page-about-us.html">About Us</a></li>
								<li><a href="page-contacts.html">Contact</a></li>
								<li><a href="page-privacy.html">Privacy Policy</a></li>
								<li><a href="page-terms.html">Terms</a></li>
								<li><a href="page-error.html">Error Page</a></li>
								<li class="dropdown ">
									<a href="#">Sub Menu Lvl 1 <i class="fa fa-angle-right"></i></a>
									<ul class="dropdown-menu" role="menu">
										<li class="dropdown ">
											<a href="#">Sub Menu Lvl 2 <i class="fa fa-angle-right"></i></a>
											<ul class="dropdown-menu" role="menu">
												<li><a href="#">Sub Menu Lvl 3</a></li>
												<li><a href="#">Sub Menu Lvl 3</a></li>
											</ul>
										</li>
										<li><a href="#">Sub Menu Lvl 2</a></li>
										<li><a href="#">Sub Menu Lvl 2</a></li>
									</ul>
								</li>
							</ul>
						</li>
						<li class="dropdown mega-menu">
							<a href="#" data-toggle="dropdown">UI ELEMENTS <i class="fa fa-angle-down"></i></a>
							<ul class="dropdown-menu mega-menu-container">
								<li>
									<div class="mega-menu-content">
										<div class="row">
											<div class="col-md-3">
												<h5 class="menu-heading">Buttons &amp; Icons</h5>
												<ul class="list-unstyled list-menu">
													<li class="active"><a href="#"><i class="fa fa-square"></i> General Buttons</a></li>
													<li><a href="ui-button-groups.html"><i class="fa fa-clone"></i> Button Groups</a></li>
													<li><a href="ui-icons.html"><i class="fa fa-asterisk"></i> Icons</a></li>
												</ul>
											</div>
											<div class="col-md-3">
												<h5 class="menu-heading">Forms</h5>
												<ul class="list-unstyled list-menu">
													<li><a href="ui-form-elements-basic.html"><i class="fa fa-check-square"></i> Basic Form Elements</a></li>
													<li><a href="ui-form-elements-advanced.html"><i class="fa fa-plus-square"></i> Advanced Form Elements</a></li>
													<li><a href="ui-form-layouts.html"><i class="fa fa-columns"></i> Form Layouts</a></li>
													<li><a href="ui-form-validation.html"><i class="fa fa-check-circle"></i> Validation</a></li>
												</ul>
											</div>
											<div class="col-md-3">
												<h5 class="menu-heading">Content Elements</h5>
												<ul class="list-unstyled list-menu">
													<li><a href="ui-tabs-accordion.html"><i class="fa fa-list-alt"></i> Tabs &amp; Accordion</a></li>
													<li><a href="ui-boxed-contents.html"><i class="fa fa-suitcase"></i> Boxed Contents</a></li>
													<li><a href="ui-numbers-charts.html"><i class="fa fa-pie-chart"></i> Numbers &amp; Charts</a></li>
													<li><a href="ui-typography.html"><i class="fa fa-font"></i> Typography</a></li>
												</ul>
											</div>
											<div class="col-md-3">
												<h5 class="menu-heading">Components</h5>
												<ul class="list-unstyled list-menu">
													<li><a href="ui-testimonials.html"><i class="fa fa-thumbs-up"></i> Testimonials</a></li>
													<li><a href="ui-maps.html"><i class="fa fa-map"></i> Maps</a></li>
													<li><a href="ui-breadcrumbs.html"><i class="fa fa-angle-right"></i> Breadcrumbs</a></li>
													<li><a href="ui-alerts.html"><i class="fa fa-warning"></i> Alerts</a></li>
													<li><a href="ui-pagination.html"><i class="fa fa-ellipsis-h"></i> Pagination</a></li>
												</ul>
											</div>
										</div>
									</div>
								</li>
							</ul>
						</li>
						<li class="dropdown ">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">PORTFOLIO <i class="fa fa-angle-down"></i></a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="portfolio-4-columns.html">Portfolio 4 Columns</a></li>
								<li><a href="portfolio-3-columns.html">Portfolio 3 Columns</a></li>
								<li><a href="portfolio-2-columns.html">Portfolio 2 Columns</a></li>
								<li><a href="portfolio-single.html">Portfolio Item</a></li>
							</ul>
						</li>
						<li class="dropdown ">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">SHOP <i class="fa fa-angle-down"></i></a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="shop/index.html">Front Page</a></li>
								<li><a href="shop/single-product-page.html">Single Product Page</a></li>
								<li><a href="shop/product-filter-grid.html">Search Result with Filter</a></li>
								<li><a href="shop/checkout.html">Checkout with Validation</a></li>
								<li><a href="shop/shop-login.html">Login</a></li>
								<li><a href="shop/shop-register.html">Register</a></li>
							</ul>
						</li>
						<li class="dropdown ">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">BLOG <i class="fa fa-angle-down"></i></a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="blog-medium-thumbnail.html">Blog Medium Thumbnail</a></li>
								<li><a href="blog-full-thumbnail.html">Blog Full Thumbnail</a></li>
								<li><a href="blog-single.html">Blog Single</a></li>
								<li><a href="blog-single-full.html">Blog Single Full</a></li>
							</ul>
						</li>
					</ul>
				</div>
				<!-- END MAIN NAVIGATION -->
			</div>
		</nav>
		<!-- END NAVBAR -->
		<!-- BREADCRUMBS -->
		<div class="page-header">
			<div class="container">
				<h1 class="page-title pull-left">BUTTONS</h1>
				<ol class="breadcrumb">
					<li><a href="#">Home</a></li>
					<li><a href="#">UI Elements</a></li>
					<li class="active">Buttons</li>
				</ol>
			</div>
		</div>
		<!-- END BREADCRUMBS -->
		<!-- PAGE CONTENT -->
		<div class="page-content">
			<div class="container">
				<div class="row">
					<div class="col-md-3">
						<ul id="sidebar-nav" class="sidebar-nav margin-bottom-30px">
							<li class="list-group-item has-submenu active">
								<a href="#Buttons" class="submenu-toggle" data-toggle="collapse" data-parent="sidebar-nav">Buttons</a>
								<ul id="Buttons" class="list-unstyled collapse submenu in">
									<li class="active"><a href="#">General Buttons</a></li>
									<li><a href="ui-button-groups.html">Button Groups</a></li>
								</ul>
							</li>
							<li class="list-group-item "><a href="ui-tabs-accordion.html">Tabs &amp; Accordion</a></li>
							<li class="list-group-item has-submenu ">
								<a href="#Components" class="submenu-toggle" data-toggle="collapse" data-parent="sidebar-nav">Components</a>
								<ul id="Components" class="list-unstyled collapse submenu ">
									<li><a href="ui-alerts.html">Alerts</a></li>
									<li><a href="ui-breadcrumbs.html">Breadcrumbs</a></li>
									<li><a href="ui-pagination.html">Pagination</a></li>
								</ul>
							</li>
							<li class="list-group-item has-submenu ">
								<a href="#Forms" class="submenu-toggle" data-toggle="collapse" data-parent="sidebar-nav">Forms</a>
								<ul id="Forms" class="list-unstyled collapse submenu ">
									<li><a href="ui-form-elements-basic.html">Basic Form Elements</a></li>
									<li><a href="ui-form-elements-advanced.html">Advanced Form Elements</a></li>
									<li><a href="ui-form-layouts.html">Form Layouts</a></li>
									<li><a href="ui-form-validation.html">Validation</a></li>
								</ul>
							</li>
							<li class="list-group-item "><a href="ui-numbers-charts.html">Numbers &amp; Charts</a></li>
							<li class="list-group-item "><a href="ui-boxed-contents.html">Boxed Contents</a></li>
							<li class="list-group-item "><a href="ui-testimonials.html">Testimonials</a></li>
							<li class="list-group-item "><a href="ui-maps.html">Maps</a></li>
							<li class="list-group-item "><a href="ui-typography.html">Typography</a></li>
							<li class="list-group-item "><a href="ui-icons.html">Icons</a></li>
						</ul>
					</div>
					<div class="col-md-9">
						<!-- BASIC -->
						<h2 class="section-heading">Basic</h2>
						<p>
							<button type="button" class="btn btn-default">Default</button>
							<button type="button" class="btn btn-primary">Primary</button>
							<button type="button" class="btn btn-info">Info</button>
							<button type="button" class="btn btn-success">Success</button>
							<button type="button" class="btn btn-warning">Warning</button>
							<button type="button" class="btn btn-danger">Danger</button>
							<button type="button" class="btn btn-link">Link</button>
						</p>
						<p>
							<button type="button" class="btn btn-default" disabled="disabled">Disabled</button>
							<button type="button" class="btn btn-primary" disabled="disabled">Disabled</button>
							<button type="button" class="btn btn-info" disabled="disabled">Disabled</button>
							<button type="button" class="btn btn-success" disabled="disabled">Disabled</button>
							<button type="button" class="btn btn-warning" disabled="disabled">Disabled</button>
							<button type="button" class="btn btn-danger" disabled="disabled">Disabled</button>
							<button type="button" class="btn btn-link" disabled="disabled">Disabled</button>
						</p>
						<!-- END BASIC -->
						<br>
						<br>
						<!-- OUTLINE BUTTONS -->
						<h2 class="section-heading">Outline Buttons</h2>
						<p>
							<button type="button" class="btn btn-outline btn-default">Default</button>
							<button type="button" class="btn btn-outline btn-primary">Primary</button>
							<button type="button" class="btn btn-outline btn-info">Info</button>
							<button type="button" class="btn btn-outline btn-success">Success</button>
							<button type="button" class="btn btn-outline btn-warning">Warning</button>
							<button type="button" class="btn btn-outline btn-danger">Danger</button>
							<button type="button" class="btn btn-outline btn-outline-disabled" disabled="disabled">Disabled</button>
						</p>
						<!-- END OUTLINE BUTTONS -->
						<br>
						<br>
						<!-- NO TRANSITION BUTTONS -->
						<h2 class="section-heading">No Transition Effect Buttons</h2>
						<p>
							<button type="button" class="btn btn-no-transition btn-default">Default</button>
							<button type="button" class="btn btn-no-transition btn-primary">Primary</button>
							<button type="button" class="btn btn-no-transition btn-info">Info</button>
							<button type="button" class="btn btn-no-transition btn-success">Success</button>
							<button type="button" class="btn btn-no-transition btn-warning">Warning</button>
							<button type="button" class="btn btn-no-transition btn-danger">Danger</button>
							<button type="button" class="btn btn-no-transition btn-link">Link</button>
						</p>
						<p>
							<button type="button" class="btn btn-outline btn-no-transition btn-default">Default</button>
							<button type="button" class="btn btn-outline btn-no-transition btn-primary">Primary</button>
							<button type="button" class="btn btn-outline btn-no-transition btn-info">Info</button>
							<button type="button" class="btn btn-outline btn-no-transition btn-success">Success</button>
							<button type="button" class="btn btn-outline btn-no-transition btn-warning">Warning</button>
							<button type="button" class="btn btn-outline btn-no-transition btn-danger">Danger</button>
						</p>
						<!-- END NO TRANSITION BUTTONS -->
						<br>
						<br>
						<!-- ROUNDED AND NON ROUNDED -->
						<h2 class="section-heading">Rounded &amp; No Rounded Buttons</h2>
						<p>
							<button type="button" class="btn btn-default">Default Rounded</button>
							<button type="button" class="btn btn-rounded-2x btn-primary">Rounded 2x</button>
							<button type="button" class="btn btn-rounded-3x btn-info">Rounded 3x</button>
							<button type="button" class="btn btn-rounded-4x btn-success">Rounded 4x</button>
						</p>
						<p>
							<button type="button" class="btn btn-outline btn-default">Default Rounded</button>
							<button type="button" class="btn btn-rounded-2x btn-outline btn-primary">Rounded 2x</button>
							<button type="button" class="btn btn-rounded-3x btn-outline btn-info">Rounded 3x</button>
							<button type="button" class="btn btn-rounded-4x btn-outline btn-success">Rounded 4x</button>
						</p>
						<p>
							<button type="button" class="btn btn-no-rounded btn-outline btn-warning">No Rounded</button>
							<button type="button" class="btn btn-no-rounded btn-warning">No Rounded</button>
						</p>
						<!-- END ROUNDED AND NON ROUNDED -->
						<br>
						<br>
						<!-- WITH ICON -->
						<h2 class="section-heading">Buttons With Icon</h2>
						<p>
							<button type="button" class="btn btn-default"><i class="fa fa-refresh"></i> Default</button>
							<button type="button" class="btn btn-primary"><i class="fa fa-refresh"></i> Primary</button>
							<button type="button" class="btn btn-info"><i class="fa fa-info-circle"></i> Info</button>
							<button type="button" class="btn btn-success"><i class="fa fa-check"></i> Success</button>
							<button type="button" class="btn btn-warning"><i class="fa fa-warning"></i> Warning</button>
							<button type="button" class="btn btn-danger"><i class="fa fa-close"></i> Danger</button>
						</p>
						<p>
							<button type="button" class="btn btn-outline btn-default"><i class="fa fa-refresh"></i> Default</button>
							<button type="button" class="btn btn-outline btn-primary"><i class="fa fa-refresh"></i> Primary</button>
							<button type="button" class="btn btn-outline btn-info"><i class="fa fa-info-circle"></i> Info</button>
							<button type="button" class="btn btn-outline btn-success"><i class="fa fa-check"></i> Success</button>
							<button type="button" class="btn btn-outline btn-warning"><i class="fa fa-warning"></i> Warning</button>
							<button type="button" class="btn btn-outline btn-danger"><i class="fa fa-close"></i> Danger</button>
						</p>
						<p>
							<button type="button" class="btn btn-default"><i class="fa fa-refresh"></i> Default</button>
							<button type="button" class="btn btn-rounded-2x btn-primary"><i class="fa fa-refresh"></i> Primary</button>
							<button type="button" class="btn btn-rounded-3x btn-info"><i class="fa fa-info-circle"></i> Info</button>
							<button type="button" class="btn btn-rounded-4x btn-success"><i class="fa fa-check"></i> Success</button>
						</p>
						<p>
							<button type="button" class="btn btn-outline btn-default"><i class="fa fa-refresh"></i> Default</button>
							<button type="button" class="btn btn-outline btn-rounded-2x btn-primary"><i class="fa fa-refresh"></i> Primary</button>
							<button type="button" class="btn btn-outline btn-rounded-3x btn-info"><i class="fa fa-info-circle"></i> Info</button>
							<button type="button" class="btn btn-outline btn-rounded-4x btn-success"><i class="fa fa-check"></i> Success</button>
						</p>
						<p>
							<button type="button" class="btn btn-default" title="Refresh"><i class="fa fa-refresh"></i> <span class="sr-only">Refresh</span></button>
							<button type="button" class="btn btn-primary" title="Refresh"><i class="fa fa-refresh"></i> <span class="sr-only">Refresh</span></button>
							<button type="button" class="btn btn-info" title="Info"><i class="fa fa-info-circle"></i> <span class="sr-only">Info</span></button>
							<button type="button" class="btn btn-success" title="Success"><i class="fa fa-check"></i> <span class="sr-only">Success</span></button>
							<button type="button" class="btn btn-outline btn-default" title="Refresh"><i class="fa fa-refresh"></i> <span class="sr-only">Refresh</span></button>
							<button type="button" class="btn btn-outline btn-primary" title="Refresh"><i class="fa fa-refresh"></i> <span class="sr-only">Refresh</span></button>
							<button type="button" class="btn btn-outline btn-info" title="Info"><i class="fa fa-info-circle"></i> <span class="sr-only">Info</span></button>
							<button type="button" class="btn btn-outline btn-success" title="Success"><i class="fa fa-check"></i> <span class="sr-only">Success</span></button>
						</p>
						<!-- END WITH ICON-->
						<div class="clearfix"></div>
						<br>
						<br>
						<!-- SIZING -->
						<h2 class="section-heading">Button Sizing</h2>
						<p>
							<button type="button" class="btn btn-default btn-lg">Large Size</button>
							<button type="button" class="btn btn-primary">Default Size</button>
							<button type="button" class="btn btn-info btn-sm">Small Size</button>
							<button type="button" class="btn btn-success btn-xs">Extra Small Size</button>
						</p>
						<p>
							<button type="button" class="btn btn-default btn-lg"><i class="fa fa-refresh"></i> Large</button>
							<button type="button" class="btn btn-primary"><i class="fa fa-refresh"></i> Default</button>
							<button type="button" class="btn btn-info btn-sm"><i class="fa fa-refresh"></i> Small</button>
							<button type="button" class="btn btn-success btn-xs"><i class="fa fa-refresh"></i> Extra Small</button>
						</p>
						<br>
						<br>
						<p>
							<button type="button" class="btn btn-outline btn-default btn-lg">Large Size</button>
							<button type="button" class="btn btn-outline btn-primary">Default Size</button>
							<button type="button" class="btn btn-outline btn-info btn-sm">Small Size</button>
							<button type="button" class="btn btn-outline btn-success btn-xs">Extra Small Size</button>
						</p>
						<p>
							<button type="button" class="btn btn-default btn-lg">Large Size</button>
							<button type="button" class="btn btn-rounded-2x btn-primary">Default Size</button>
							<button type="button" class="btn btn-rounded-3x btn-info btn-sm">Small Size</button>
							<button type="button" class="btn btn-rounded-4x btn-success btn-xs">Extra Small Size</button>
						</p>
						<hr>
						<div class="row">
							<div class="col-md-6">
								<button type="button" class="btn btn-primary btn-block">Button Block</button>
							</div>
							<div class="col-md-6">
								<button type="button" class="btn btn-warning btn-block">Button Block</button>
							</div>
						</div>
						<!-- END SIZING -->
					</div>
				</div>
			</div>
		</div>
		<!-- END PAGE CONTENT -->
		<!-- FOOTER -->
		<footer>
			<div class="container">
				<div class="row">
					<div class="col-md-4">
						<!-- COLUMN 1 -->
						<h3 class="sr-only">ABOUT US</h3>
						<img src="${pageContext.request.contextPath}/img/logo/repute-logo-light.png" class="logo" alt="Repute">
						<p>Proactively aggregate B2B initiatives before extensive channels. Monotonectally extend interactive methods of empowerment through excellent applications. Rapidiously synergize visionary products with sticky technology.</p>
						<br>
						<address class="margin-bottom-30px">
							<ul class="list-unstyled">
								<li>1234 North Main Street
									<br/> New York, NY 222222</li>
								<li>Phone: (1800) 765 - 4321</li>
								<li>Email: email@yourdomain.com</li>
							</ul>
						</address>
						<!-- END COLUMN 1 -->
					</div>
					<div class="col-md-4">
						<!-- COLUMN 2 -->
						<h3 class="footer-heading">USEFUL LINKS</h3>
						<div class="row margin-bottom-30px">
							<div class="col-xs-6">
								<ul class="list-unstyled footer-nav">
									<li><a href="#">About Us</a></li>
									<li><a href="#">News</a></li>
									<li><a href="#">Community</a></li>
									<li><a href="#">Career</a></li>
									<li><a href="#">Blog</a></li>
								</ul>
							</div>
							<div class="col-xs-6">
								<ul class="list-unstyled footer-nav">
									<li><a href="#">Press Kit</a></li>
									<li><a href="#">FAQ</a></li>
									<li><a href="#">Terms</a></li>
									<li><a href="#">Privacy Policy</a></li>
									<li><a href="#">Contact Us</a></li>
								</ul>
							</div>
						</div>
						<!-- END COLUMN 2 -->
					</div>
					<div class="col-md-4">
						<!-- COLUMN 3 -->
						<div class="newsletter">
							<h3 class="footer-heading">NEWSLETTER</h3>
							<p>Get the latest update from us by subscribing to our newsletter.</p>
							<form class="newsletter-form" method="POST">
								<div class="input-group input-group-lg">
									<input type="email" class="form-control" name="email" placeholder="youremail@domain.com">
									<span class="input-group-btn"><button class="btn btn-primary" type="button"><i class="fa fa-spinner fa-spin"></i><span>SUBSCRIBE</span></button>
									</span>
								</div>
								<div class="alert"></div>
							</form>
						</div>
						<div class="social-connect">
							<h3 class="footer-heading">GET CONNECTED</h3>
							<ul class="list-inline social-icons">
								<li><a href="#" class="facebook-bg"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#" class="twitter-bg"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#" class="googleplus-bg"><i class="fa fa-google-plus"></i></a></li>
								<li><a href="#" class="rss-bg"><i class="fa fa-rss"></i></a></li>
							</ul>
						</div>
						<!-- END COLUMN 3 -->
					</div>
				</div>
			</div>
			<!-- COPYRIGHT -->
			<div class="text-center copyright">
				&copy;2016 The Develovers. All Rights Reserved.
			</div>
			<!-- END COPYRIGHT -->
		</footer>
		<!-- END FOOTER -->
	</div>
	<!-- END WRAPPER -->
	<!-- JAVASCRIPTS -->
	<script src="${pageContext.request.contextPath}/js/jquery-2.1.1.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/plugins/autohidingnavbar/jquery.bootstrap-autohidingnavbar.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/repute-scripts.js"></script>
	
</body>

</html>
