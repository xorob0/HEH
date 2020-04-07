<?php
session_start();

require_once('modele/MySQL.php');

if(isset($_POST['currentpassword']) && isset($_SESSION['id']))
{
	if(!empty($_POST['currentpassword']) && !empty($_SESSION['id']))
	{
		// Defining variables
		$password = sha1($_POST['currentpassword']);
		$id = $_SESSION['id'];

		// Defining MySQL request
		$inputtest = array('id' => $id, 'password' => $password);
		$sqltest = 'SELECT * FROM users WHERE id = :id && pwd = :password;';

		// Accessing the database
		$bdd = createBDD();

		// Testing the password
		$test = execReq($bdd, $sqltest, $inputtest);

		if(!empty($test))
		{ 
			// Defining MySQL request
			$input = array('id' => $id, 'password' => $password);
			$sqlauth = 'DELETE FROM auth WHERE id_user = :id;';
			$sqlobj = 'DELETE FROM objects WHERE owner = :id;';
			$sql = 'DELETE FROM users WHERE id = :id AND pwd = :password LIMIT 1';

			// Getting the data
			execReq($bdd, $sqlauth, $input);
			execReq($bdd, $sqlobj, $input);
			execReq($bdd, $sql, $input);

			// Redirect to the settings
			echo '<script>alert("Account successfully deleted");</script>';
			session_destroy();
		}
		else
		{
			echo '<script>alert("Invalid password");</script>';
		}

		header('Location: ../../index.php');
	}
}
else
{
	echo '<script>alert("Please insert a password");</script>';
}
?>
