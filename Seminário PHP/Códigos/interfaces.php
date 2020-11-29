<?php
	interface ProductInterface {
    	public function buy($name, $value);
    	public function sell($name, $value);
	}

	class Product implements ProductInterface {
    
    	public $Name;
        public $Value;
        
    	public function buy($name, $value) {
      		echo 'We will be buying the {$name} for {$value}';
    	}
        
        public function sell($name, $value) {
      		echo 'We will be selling the {$name} for {$value}';
    	}
	}
?> 