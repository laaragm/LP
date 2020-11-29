<?php
	$fileName = "test.txt";
	$theFile = fopen($fileName, "r") or die("The file couldn't be opened");
	echo fread($theFile, filesize($fileName));
	fclose($myfile);
?> 