<?php
	$connection = new mysqli("localhost","root","","casper3");
	if(!$connection)
	{
		echo "Connection Error!";
		exit();
	}