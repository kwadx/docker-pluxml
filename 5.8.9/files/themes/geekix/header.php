<?php if(!defined('PLX_ROOT')) exit; ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="fr" lang="fr">

<head>

	<title><?php $plxShow->pageTitle(); ?></title>
	<meta http-equiv="Content-Type" content="text/html; charset=<?php $plxShow->charset(); ?>" />
	<link rel="icon" href="<?php $plxShow->template(); ?>/img/favicon.png" />
	<!--<link rel="stylesheet" type="text/css" href="<?php $plxShow->template(); ?>/000.css" media="screen" />-->
	<link rel="stylesheet" type="text/css" href="<?php $plxShow->template(); ?>/style.css" media="screen" />
	<link rel="stylesheet" type="text/css" href="<?php $plxShow->template(); ?>/fonts.css" media="screen" />
	<?php $plxShow->templateCss() ?>
	<link rel="alternate" type="application/atom+xml" title="Atom articles" href="<?php $plxShow->urlRewrite('feed.php?atom') ?>" />
	<link rel="alternate" type="application/rss+xml" title="Rss articles" href="<?php $plxShow->urlRewrite('feed.php?rss') ?>" />
	<link rel="alternate" type="application/atom+xml" title="Atom commentaires" href="<?php $plxShow->urlRewrite('feed.php?atom/commentaires') ?>" />
	<link rel="alternate" type="application/rss+xml" title="Rss commentaires" href="<?php $plxShow->urlRewrite('feed.php?rss/commentaires') ?>" />
	
	<script language="javascript" type="text/javascript" src="<?php $plxShow->template(); ?>/js/jquery.js"></script>

	<!-- test google pretify
	<link href="<?php $plxShow->template(); ?>/pretify.css" type="text/css" rel="stylesheet" />
	<script type="text/javascript" src="<?php $plxShow->template(); ?>/js/pretify.js"></script>-->
	<!--<script src="https://google-code-prettify.googlecode.com/svn/loader/run_prettify.js?lang=css&skin=sunburst"></script>-->
	<!--<script src="https://google-code-prettify.googlecode.com/svn/loader/run_prettify.js?lang=css&skin=doxy"></script>-->

</head>

<body onload="prettyPrint()">

<div id="wrapper">

<div id="header">
	
	<div id="banner">
		<p class="blogname"><?php $plxShow->mainTitle('link'); ?></p>
		<p class="blogdescription"><?php $plxShow->subTitle(); ?></p>
	</div>
	
	<ul id="menu">
		<?php $plxShow->staticList('Blog','<li id="#static_id"><a href="#static_url" class="#static_status" title="#static_name">#static_name</a></li>'); ?>
	</ul>
	
</div>
