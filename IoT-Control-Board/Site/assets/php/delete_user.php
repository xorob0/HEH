<?php
session_start();

require_once('modele/MySQL.php');

if(isset($_POST['login']))
{
	if(!empty($_POST['login']))
	{
		// Defining variables
		$login_string = htmlspecialchars($_POST['login']);

		// Defining MySQL request
		$inputlogin = array('login_string' => $login_string);
		$sqllogin = 'SELECT * FROM users WHERE login = :login_string';

		// Accessing the database
		$bdd = createBDD();

		// Getting login, location and type
		$login = execReq($bdd, $sqllogin, $inputlogin);

		if(!empty($login))
		{ 
			// Defining MySQL request
			print_r($login);

			$input = array('login' => $login[id]);
			$sqlauth = 'DELETE FROM auth WHERE id_user = :login;';
			$sqlobj = 'DELETE FROM objects WHERE owner = :login;';
			$sql = 'DELETE FROM users WHERE id = :login;';

			execReq($bdd, $sqlobj, $input);
			execReq($bdd, $sqlauth, $input);
			execReq($bdd, $sql, $input);

			// Redirect to the settings
			echo '<script>alert("User deleted successfully");</script>';
		}
		else
		{
			echo '<script>alert("Please enter all the fields");</script>';
		}

		/* header('Location: ../../objects_list.php'); */
	}
}
?>
