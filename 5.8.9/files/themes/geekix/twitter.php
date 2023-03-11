<?php
// Affichage des derniers Tweets
function parse($text)
{
	$text = htmlentities(preg_replace('#http://[a-z0-9._/-]+#i', '<a href="$0">$0</a>', $text));
	 $text = preg_replace('#@([a-z0-9_]+)#i', '@<a href="http://twitter.com/$1">$1</a>', $text);
	 $text = preg_replace('# \#([a-z0-9_-]+)#i', ' #<a href="http://search.twitter.com/search?q=%23$1">$1</a>', $text);
	 return $text;
}

$user = "damien_e"; /* Nom d'utilisateur sur Twitter */
$count = 6; /* Nombre de message à afficher */
$date_format = 'd M Y, H:i:s'; /* Format de la date à afficher */
$url = 'http://twitter.com/statuses/user_timeline/'.$user.'.xml?count='.$count;
$oXML = @simplexml_load_file($url);

if(!$oXML)
{
	echo 'FAIL !';
}
else
{
	echo '<ul>';
		foreach( $oXML->status as $oStatus )
		{
			$datetime = date_create($oStatus->created_at);
			$date = date_format($datetime, $date_format)."\n";
			echo '<li>'.parse(utf8_decode($oStatus->text));
			echo ' (<a href="http://twitter.com/'.$user.'/status/'.$oStatus->id.'">'.$date.'</a>)</li>';
		}
	echo '</ul>';
}
?>