<?php
session_start();
require_once('modele/MySQL.php');

if(isset($_POST['device']) && isset($_POST['user']))
{
	if(!empty($_POST['device']) && !empty($_POST['user']))
	{
		// Defining variables
		$device_string = htmlspecialchars($_POST['device']);
		$user_string = htmlspecialchars($_POST['user']);

		// Defining MySQL request
		$inputdev = array('device_string' => $device_string);
		$inputusr = array('user_string' => $user_string);
		$sqldev = 'SELECT * FROM objects WHERE name = :device_string';
		$sqlusr = 'SELECT * FROM users WHERE login = :user_string';

		// Accessing the database
		$bdd = createBDD();

		// Getting location and dev
		$dev = execReq($bdd, $sqldev, $inputdev);
		$usr = execReq($bdd, $sqlusr, $inputusr);

		if(!empty($dev) && !empty($usr))
		{ 
			// Defining MySQL request
			$inputauth = array('user' => $usr[id], 'device' => $dev[id]);
			print_r($input);
			$sqlauth = 'INSERT INTO `auth` (`id_user`, `id_obj`) VALUES (:user, :device);';
			// Getting the data
			execReq($bdd, $sqlauth, $inputauth);

			// Redirect to the settings
			echo '<script>alert("Right added successfully");</script>';
		}
		else
		{
			echo '<script>alert("Please enter all the fields");</script>';
		}
		/* header('Location: ../../objects_list.php'); */
	}
}
?>
