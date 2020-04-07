<?php
session_start();

require_once('modele/MySQL.php');

if(isset($_POST['login']) && isset($_POST['pwd']))
{
	if(!empty($_POST['login']) && !empty($_POST['pwd']))
	{
		// Defining variables
		$login = htmlspecialchars($_POST['login']);
		$pwd = sha1($_POST['pwd']);

		// Defining MySQL request
		$inputtest = array('login' => $login);
		$sqltest = 'SELECT * FROM users WHERE login = :login;';

		// Accessing the database
		$bdd = createBDD();

		// Testing the password
		$test = execReq($bdd, $sqltest, $inputtest);

		if(!empty($test))
		{ 
			// Defining MySQL request
			$input = array('id' => $test[id], 'pwd' => $pwd);
			$sql = 'UPDATE users SET pwd = :pwd WHERE id = :id;';

			// Getting the data
			execReq($bdd, $sql, $input);

			// Redirect to the settings
			echo '<script>alert("Password updated successfully");</script>';
		}
		else
		{
			echo '<script>alert("Invalid password");</script>';
		}

		/* header('Location: ../../settings.php'); */
	}
}
?>
