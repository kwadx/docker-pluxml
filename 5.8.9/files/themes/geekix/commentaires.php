<?php if(!defined('PLX_ROOT')) exit; ?>

<?php # Si on a des commentaires ?>
<?php if($plxShow->plxMotor->plxGlob_coms->count): ?>

	<div id="comments">

		<p class="comments_titre">Commentaires</p>

		<?php while($plxShow->plxMotor->plxRecord_coms->loop()): # On boucle sur les commentaires ?>
			
			<div id="<?php $plxShow->comId(); ?>" class="comment type-<?php $plxShow->comType(); ?>">
				<blockquote>
					<p class="info_comment">
						<a href="<?php $plxShow->ComUrl() ?>" title="#<?php echo $plxShow->plxMotor->plxRecord_coms->i+1 ?>">#<?php echo $plxShow->plxMotor->plxRecord_coms->i+1 ?></a>
						Le <?php $plxShow->comDate('#num_day #month #num_year(4)'); ?> <?php $plxShow->comAuthor('link'); ?> a dit :
					</p>
					<p class="content_com"><?php $plxShow->comContent() ?></p>
				</blockquote>
				<div class="clearer"></div>
			</div>
		<?php endwhile; # Fin de la boucle sur les commentaires ?>
		<?php # On affiche le fil Atom de cet article ?>

	</div>

<?php endif; # Fin du if sur la prescence des commentaires ?>

<?php # Si on autorise les commentaires ?>
<?php if($plxShow->plxMotor->plxRecord_arts->f('allow_com') AND $plxShow->plxMotor->aConf['allow_com']): ?>
	
	<div id="form">
		<p class="form_titre">Ecrire un commentaire</p>
		
		<?php $plxShow->comMessage(); ?>

		<form action="<?php $plxShow->artUrl(); ?>#form" method="post">
			<p>Nom&nbsp;:</p>
			<p><input name="name" type="text" size="20" value="<?php $plxShow->comGet('name',''); ?>" maxlength="30" /></p>
			<p>Site (facultatif)&nbsp;:</p>
			<p><input name="site" type="text" size="20" value="<?php $plxShow->comGet('site',''); ?>" /></p>
			<p><p>E-mail (facultatif)&nbsp;:</p>
			<p><input name="mail" type="text" size="20" value="<?php $plxShow->comGet('mail',''); ?>" /></p>
			<p><p>Commentaire&nbsp;:</p>
			<p><textarea name="content" cols="35" rows="6"><?php $plxShow->comGet('content',''); ?></textarea></p>
			<p>
				<?php # Affichage du capcha anti-spam
				if($plxShow->plxMotor->aConf['capcha']): ?>
					<?php $plxShow->capchaQ(); ?>&nbsp;:&nbsp;<input name="rep" type="text" size="10" />
					<input name="rep2" type="hidden" value="<?php $plxShow->capchaR(); ?>" />
				<?php endif; # Fin du if sur le capcha anti-spam ?>
				<br />
				<input type="reset" value="Effacer" />
				<input type="submit" value="Envoyer" />
			</p>
		</form>
	</div>
	
<?php endif; # Fin du if sur l'autorisation des commentaires ?>
