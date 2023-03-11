<?php include(dirname(__FILE__).'/header.php'); # On insere le header ?>

<div id="contenu">

	<div class="article_static">
	
		<p class="article_titre_static"><?php $plxShow->staticTitle(); ?></p>
		<p class="article_contenu_static"><?php $plxShow->staticContent(); ?></p>
	
	</div>
	
</div>

<?php include(dirname(__FILE__).'/footer.php'); # On insere le footer ?>
