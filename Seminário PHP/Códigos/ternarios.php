<?php
	$value = 5;
    $secondValue = 5;
    $condition = $value > $secondValue ? 'true' : 'false';
    $result = $condition ?? 'true';
    echo $result;
?> 