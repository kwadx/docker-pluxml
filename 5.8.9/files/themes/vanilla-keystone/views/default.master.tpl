<!DOCTYPE html>
<html lang="{$CurrentLocale.Key}">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    
    <link rel="apple-touch-icon" sizes="57x57" href="https://medias.pluxml.org/favicon/yellow/apple-icon-57x57.png">
	  <link rel="apple-touch-icon" sizes="60x60" href="https://medias.pluxml.org/favicon/yellow/apple-icon-60x60.png">
  	<link rel="apple-touch-icon" sizes="72x72" href="https://medias.pluxml.org/favicon/yellow/apple-icon-72x72.png">
  	<link rel="apple-touch-icon" sizes="76x76" href="https://medias.pluxml.org/favicon/yellow/apple-icon-76x76.png">
  	<link rel="apple-touch-icon" sizes="114x114" href="https://medias.pluxml.org/favicon/yellow/apple-icon-114x114.png">
  	<link rel="apple-touch-icon" sizes="120x120" href="https://medias.pluxml.org/favicon/yellow/apple-icon-120x120.png">
  	<link rel="apple-touch-icon" sizes="144x144" href="https://medias.pluxml.org/favicon/yellow/apple-icon-144x144.png">
  	<link rel="apple-touch-icon" sizes="152x152" href="https://medias.pluxml.org/favicon/yellow/favicon/apple-icon-152x152.png">
  	<link rel="apple-touch-icon" sizes="180x180" href="https://medias.pluxml.org/favicon/yellow/favicon/apple-icon-180x180.png">
  	<link rel="icon" type="image/png" sizes="192x192"  href="https://medias.pluxml.org/favicon/yellow/android-icon-192x192.png">
  	<link rel="icon" type="image/png" sizes="32x32" href="https://medias.pluxml.org/favicon/yellow/favicon-32x32.png">
  	<link rel="icon" type="image/png" sizes="96x96" href="https://medias.pluxml.org/favicon/yellow/favicon-96x96.png">
  	<link rel="icon" type="image/png" sizes="16x16" href="https://medias.pluxml.org/favicon/yellow/favicon-16x16.png">
  	<link rel="manifest" href="https://medias.pluxml.org/favicon/yellow/manifest.json">
  	<meta name="msapplication-TileColor" content="#ffffff">
  	<meta name="msapplication-TileImage" content="https://medias.pluxml.org/favicon/yellow/ms-icon-144x144.png">
  	<meta name="theme-color" content="#ffffff">
	
    {asset name="Head"}
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,400i,700,700i" rel="stylesheet">

	<link href="https://www.pluxml.org/assets/plucss-min.css" rel="stylesheet">
	<link href="https://www.pluxml.org/assets/plx-common-min.css" rel="stylesheet">
</head>

{assign
    "linkFormat"
    "<div class='Navigation-linkContainer'>
        <a href='%url' class='Navigation-link %class'>
            %text
        </a>
    </div>"
}
{assign var="SectionGroups" value=(isset($Groups) || isset($Group))}

<body id="{$BodyID}" class="
    {$BodyClass}

    {if $ThemeOptions.Options.hasHeroBanner}
        ThemeOptions-hasHeroBanner
    {/if}

    {if $ThemeOptions.Options.hasFeatureSearchbox}
        ThemeOptions-hasFeatureSearchbox
    {/if}

    {if $ThemeOptions.Options.panelToLeft}
        ThemeOptions-panelToLeft
    {/if}

    {if $User.SignedIn}
        UserLoggedIn
    {else}
        UserLoggedOut
    {/if}

    {if inSection('Discussion') and $Page gt 1}
        isNotFirstPage
    {/if}

    {if inSection('Group') && !isset($Group.Icon)}
        noGroupIcon
    {/if}

    locale-{$CurrentLocale.Lang}
">

    <!--[if lt IE 9]>
      <p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    <![endif]-->

    <div id="plxnav" data-title="Forum" data-logo="yellow" data-link="forum" style="height: 43px; background-color: #333; border-bottom: 2px solid #cdcdcd;"></div>

    <div class="Frame">
        <div class="Frame-top">
            <div class="Frame-header">

                <!---------- Main Header ---------->
                <header id="MainHeader" class="Header">
                    <div class="Container">
                        <div class="row">
                            <div class="Hamburger">
                                <button class="Hamburger Hamburger-menuXcross" id="menu-button" aria-label="toggle menu">
                                    <span class="Hamburger-menuLines" aria-hidden="true">
                                    </span>
                                    <span class="Hamburger-visuallyHidden sr-only">
                                        toggle menu
                                    </span>
                                </button>
                            </div>
                            <a href="{home_link format="%url"}" class="Header-logo">
                                {logo}
                            </a>
                            <a href="{home_link format="%url"}" class="Header-logo mobile">
                                {mobile_logo}
                            </a>
                            <div class="Header-right">
                                <div class="MeBox-header">
                                    {module name="MeModule" CssClass="FlyoutRight"}
                                </div>
                                {if $User.SignedIn}
                                    <button class="mobileMeBox-button">
                                        {module name="UserPhotoModule"}
                                    </button>
                                {/if}
                            </div>
                        </div>
                    </div>

                    <!---------- Mobile Navigation ---------->
                    <nav class="Navigation js-nav needsInitialization">
                        <div class="Container">
                            {if $User.SignedIn}
                                <div class="Navigation-row NewDiscussion">
                                    <div class="NewDiscussion mobile">
                                        {module name="NewDiscussionModule"}
                                    </div>
                                </div>
                            {else}
                                <div class="Navigation-row">
                                    <div class="SignIn mobile">
                                        {module name="MeModule"}
                                    </div>
                                </div>
                            {/if}
                            {categories_link format=$linkFormat}
                            {discussions_link format=$linkFormat}
                            {activity_link format=$linkFormat}
                            {custom_menu format=$linkFormat}
                        </div>
                    </nav>
                    <nav class="mobileMebox js-mobileMebox needsInitialization">
                        <div class="Container">
                            {module name="MeModule"}
                            <button class="mobileMebox-buttonClose Close">
                                <span>×</span>
                            </button>
                        </div>
                    </nav>
                    <!---------- Mobile Navigation END ---------->

                </header>
                <!---------- Main Header END ---------->

            </div>
            <div class="Frame-body">

                <!---------- Hero Banner ---------->
                {if $ThemeOptions.Options.hasHeroBanner && inSection(["CategoryList", "DiscussionList"])}
                    <div class="Herobanner">
                        {if $heroImageUrl}
                            <div class="Herobanner-bgImage" style="background-image:url('{$heroImageUrl}')"></div>
                        {/if}
                        <div class="Container">
                            {if $ThemeOptions.Options.hasFeatureSearchbox}
                                <div class="SearchBox js-sphinxAutoComplete" role="search">
                                    {if $hasAdvancedSearch === true}
                                        {module name="AdvancedSearchModule"}
                                    {else}
                                        {searchbox}
                                    {/if}
                                </div>
                            {else}
                                {if $Category}
                                    <h2 class="H HomepageTitle">{$Category.Name}</h2>
                                    <p class="P PageDescription">{$Category.Description}</p>
                                {else}
                                    {if {homepage_title} !== ""}
                                        <h2 class="H HomepageTitle">{homepage_title}</h2>
                                    {/if}
                                    {if $_Description}
                                        <p class="P PageDescription">{$_Description}</p>
                                    {/if}
                                {/if}
                            {/if}
                        </div>
                    </div>
                {/if}
                <!---------- Hero Banner END ---------->

                <div class="Frame-content">
                    <div class="Container">
                        <div class="Frame-contentWrap">
                            <div class="Frame-details">
                                {if !$ThemeOptions.Options.hasFeatureSearchbox || !inSection(["CategoryList", "DiscussionList"])}
                                    <div class="Frame-row">
                                        <nav class="BreadcrumbsBox">
                                            {breadcrumbs}
                                        </nav>
                                        {if !$SectionGroups}
                                            <div class="SearchBox js-sphinxAutoComplete" role="search">
                                                {if $hasAdvancedSearch === true}
                                                    {module name="AdvancedSearchModule"}
                                                {else}
                                                    {searchbox}
                                                {/if}
                                            </div>
                                        {/if}
                                    </div>
                                {/if}
                                <div class="Frame-row">

                                    <!---------- Main Content ---------->
                                    <main class="Content MainContent">
                                        {if $ThemeOptions.Options.hasFeatureSearchbox && inSection(["CategoryList", "DiscussionList"])}
                                            <nav class="BreadcrumbsBox">
                                                {breadcrumbs}
                                            </nav>
                                        {/if}
                                        <!---------- Profile Page Header ---------->
                                        {if inSection("Profile")}
                                            <div class="Profile-header">
                                                <div class="Profile-photo">
                                                    <div class="PhotoLarge"
                                                        {if $Profile.PhotoUrl}
                                                            style="background: url('{$Profile.PhotoUrl}') center/cover no-repeat;"
                                                        {else}
                                                            style="background: url('{$Profile.Photo}') center/cover no-repeat;"
                                                        {/if}>
                                                    </div>
                                                    {module name="UserPhotoModule"}
                                                </div>
                                                <div class="Profile-name">
                                                    <div class="Profile-row">
                                                        <h1 class="Profile-username">
                                                            {$Profile.Name}
                                                        </h1>
                                                    </div>
                                                    <div class="Profile-row">
                                                        {if isset($Rank)}
                                                            <span class="Profile-rank">{$Rank.Label}</span>
                                                        {/if}
                                                    </div>
                                                </div>
                                            </div>
                                        {/if}
                                        <!---------- Profile Page Header END ---------->

                                        {asset name="Content"}
                                        {event name="AfterBody"}
                                    </main>
                                    <!---------- Main Content END ---------->

                                    <!---------- Main Panel ---------->
                                    <aside class="Panel Panel-main">
                                        {asset name="Panel"}
                                    </aside>
                                    <!---------- Main Panel END ---------->

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

	<footer class="footer">
		<div class="container">

			<section>
				<div class="grid">
					<div class="col sml-12 med-3 text-center">
						<img alt="Logo PluXml" src="/themes/vanilla-keystone-pluxml/img//plx-logo-bleu.png">
					</div>
					<div class="col sml-6 med-2">
						<strong>A propos de PluXml</strong>
						<ul class="unstyled-list">
							<li><a title="A propos" href="https://www.pluxml.org/a-propos-de-pluxml.html">A propos</a></li>
							<li><a title="Nous soutenir" href="https://pluxml.org/static3/nous-soutenir">Nous soutenir</a></li>
						</ul>
					</div>
					<div class="col sml-6 med-2">
						<strong>Nous suivre ou nous contacter</strong>
						<ul class="unstyled-list">
							<li><a title="Nous contacter" href="https://www.pluxml.org/contact">Contact</a></li>
							<li><a title="Twitter" href="https://twitter.com/pluxml">Twitter</a></li>
							<li><a title="Google+" href="https://plus.google.com/u/0/communities/112244719352696146403">Google+</a></li>
						<ul>
					</div>
					<div class="col sml-6 med-2">
						<strong>En savoir plus</strong>
						<ul class="unstyled-list">
							<li><a title="Documentation" href="https://wiki.pluxml.org">Documentation</a></li>
							<li><a title="Forum" href="https://forum.pluxml.org">Forum</a></li>
							<li><a title="Ressources" href="https://ressources.pluxml.org">Ressources</a></li>
						</ul>
					</div>
					<div class="col sml-6 med-2">
						<strong>Autour de PluXml</strong>
						<ul class="unstyled-list">
							<li><a title="PluCSS" href="https://plucss.pluxml.org/">PluCSS</a></li>
							<li><a title="Pluxopolis" href="http://pluxopolis.net/">Pluxopolis</a></li>
							<li><a title="Visual Wizard" href="https://visualwizard.pluxml.org/">Visual Wizard</a></li>
						</ul>
					</div>
				</div>
			</section>

			<section>
				<p>
					<a class="maintitle" href="https://www.pluxml.org/" title="PluXml.org">PluXml.org</a> - Blog ou Cms à l'Xml ! © GNU General Public License
				</p>
				<p>
					Généré par&nbsp;<a href="https://vanillaforums.com/fr/">Vanilla</a> et <a href="https://plucss.pluxml.org">PluCSS</a>
				</p>
				<ul class="inline-list">
					<li><a href="https://www.pluxml.org/feed/rss" title="Fil Rss des articles">Fil des articles</a></li>
					<li><a href="https://www.pluxml.org/feed/rss/commentaires" title="Fil Rss des commentaires">Fil des commentaires</a></li>
					<li><a href="https://www.pluxml.org/blog#top" title="Remonter en haut de page">Haut de page</a></li>
				</ul>
			</section>
		</div>

  <script src="https://medias.pluxml.org/navigation/nav.js"></script>

	</footer>

</body>

</html>
