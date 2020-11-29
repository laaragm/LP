<!DOCTYPE html>
<html>
<body>

<?php
	$array = array(2, 4, 6, 8, 10);
    foreach ($array as &$value) {
    	$value = $value * 2;
	}
    unset($value);
    
    foreach ($array as $item) {
    	echo "$item <br>";
	}
?>

</body>
</html>
