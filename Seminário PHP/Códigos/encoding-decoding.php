<?php
	$info = array("Lara"=>20, "Fulvio"=>22);
	$encoder = json_encode($info);
    echo "{$encoder} <br>";
    
	$decoder = var_dump(json_decode($encoder));
    echo $decoder;
?> 