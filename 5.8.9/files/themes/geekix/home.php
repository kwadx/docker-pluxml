<?php include(dirname(__FILE__).'/header.php'); # On insere le header ?>

<div id="contenu">
	
	<div id="colonneGauche">
	
		<?php while($plxShow->plxMotor->plxRecord_arts->loop()): # On boucle sur les articles ?>
			
			<div class="article">
				
				<div class="article_titre"><?php $plxShow->artTitle('link'); ?></div>
				
				<div class="article_infos">
					<?php $plxShow->artDate('#num_day/#num_month/#num_year(4)'); ?> |
					Catégories : <?php $plxShow->artCat(); ?> | 
					Tags : <?php $plxShow->artTags(); ?> |
					<?php $plxShow->artNbCom(); ?>
				</div>
				
				<div class="article_contenu"><?php $plxShow->artContent(); ?></div>
				
			</div>
				
		<?php endwhile; # Fin de la boucle sur les articles ?>
		
		<?php # On affiche la pagination ?>
		
		<?php $plxShow->pagination(); ?>
	
	</div>
	
	<?php include(dirname(__FILE__).'/sidebar.php'); # On insere la sidebar ?>
	
</div>

<?php include(dirname(__FILE__).'/footer.php'); # On insere le footer ?>