<?php
session_start();

require_once('modele/MySQL.php');

if(isset($_POST['name']) && isset($_POST['description']) && isset($_POST['type']) && isset($_POST['location']) && isset($_POST['device']))
{
	if(!empty($_POST['name']) && !empty($_POST['description']) && !empty($_POST['type']) && !empty($_POST['location']) && !empty($_POST['device']))
	{
		// Defining variables
		$name = htmlspecialchars($_POST['name']);
		$description = htmlspecialchars($_POST['description']);
		$type_string = htmlspecialchars($_POST['type']);
		$loc_string = htmlspecialchars($_POST['location']);
		$device_string = htmlspecialchars($_POST['device']);

		// Defining MySQL request
		$inputdevice = array('device_string' => $device_string);
		$inputtype = array('type_string' => $type_string);
		$inputloc = array('loc_string' => $loc_string);
		$sqldevice = 'SELECT * FROM objects WHERE name = :device_string';
		$sqltype = 'SELECT * FROM categories WHERE type = :type_string';
		$sqlloc = 'SELECT * FROM locations WHERE location = :loc_string';

		// Accessing the database
		$bdd = createBDD();

		// Getting device, location and type
		$device = execReq($bdd, $sqldevice, $inputdevice);
		$type = execReq($bdd, $sqltype, $inputtype);
		$loc = execReq($bdd, $sqlloc, $inputloc);

		if(!empty($type) && !empty($loc) && !empty($device))
		{ 
			// Defining MySQL request
			$input = array('device' => $device[id], 'name' => $name, 'category' => $type[id], 'location' => $loc[id], 'description' => $description);
			$sql = 'UPDATE objects SET name = :name, category = :category, location = :location, description = :description WHERE id = :device;';

			// Getting the data
			execReq($bdd, $sql, $input);

			// Redirect to the settings
			echo '<script>alert("Device modified successfully");</script>';
		}
		else
		{
			echo '<script>alert("Please enter all the fields");</script>';
		}

		/* header('Location: ../../objects_list.php'); */
	}
}
?>
