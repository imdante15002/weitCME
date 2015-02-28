<?php
	$file='mobile.txt';
	$content = file_get_contents($file);
	$array = explode(",", $content); 
	foreach ($array as $key => $value) {
		if (strlen($value)>11) {
				echo $value.',';
				echo "<br/>";
		}
	}