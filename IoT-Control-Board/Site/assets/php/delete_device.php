<?php
session_start();

require_once('modele/MySQL.php');

if(isset($_POST['device']))
{
	if(!empty($_POST['device']))
	{
		// Defining variables
		$device_string = htmlspecialchars($_POST['device']);

		// Defining MySQL request
		$inputdevice = array('device_string' => $device_string);
		$sqldevice = 'SELECT * FROM objects WHERE name = :device_string';

		// Accessing the database
		$bdd = createBDD();

		// Getting device, location and type
		$device = execReq($bdd, $sqldevice, $inputdevice);

		if(!empty($device))
		{ 
			// Defining MySQL request
			$input = array('device' => $device[id]);
			$sqlauth = 'DELETE FROM auth WHERE id_obj = :device;';
			$sql = 'DELETE FROM objects WHERE id = :device;';

			// Getting the data
			execReq($bdd, $sqlauth, $input);
			execReq($bdd, $sql, $input);

			// Redirect to the settings
			echo '<script>alert("Device deleted successfully");</script>';
		}
		else
		{
			echo '<script>alert("Please enter all the fields");</script>';
		}

		/* header('Location: ../../objects_list.php'); */
	}
}
?>
