<?php if(!defined('PLX_ROOT')) exit; ?>

<div id="colonneDroite">
	
	<p>Articles récents</p>
	
	<ul>
		<?php $plxShow->lastArtList('<li><a class="#art_status" href="#art_url" title="#art_title">#art_title</a></li>'); ?>
	</ul>
	
	<p>Catégories</p>
	
	<ul>
		<?php $plxShow->catList('','<li id="#cat_id"><a class="#cat_status" href="#cat_url" title="#cat_name">#cat_name (#art_nb)</a></li>'); ?>
	</ul>
	
	<p>Commentaires récents</p>
		
	<ul>
		<?php $plxShow->lastComList('<li><a href="#com_url">#com_author '.$plxShow->getLang('SAID').' : #com_content(34)</a></li>'); ?>
	</ul>
	
	<p>Tags</p>
	
	<ul>
		<?php $plxShow->tagList('<li class="tag #tag_size"><a class="#tag_status" href="#tag_url" title="#tag_name">#tag_name</a></li>', 20); ?>
	</ul>
	
</div>