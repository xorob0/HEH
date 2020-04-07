<?php
session_start();

require_once('modele/MySQL.php');

if(isset($_POST['oldpassword']) && isset($_POST['password']) && isset($_SESSION['id']))
{
	if(!empty($_POST['oldpassword']) && !empty($_POST['password']) && !empty($_SESSION['id']))
	{
		if(!strcmp( $_POST['oldpassword'] , $_POST['password']))
		{
				echo '<script>alert("The new passwords are not the sames");</script>';
				exit();
		}
		// Defining variables
		$oldpassword = sha1($_POST['oldpassword']);
		$password = sha1($_POST['password']);
		$id = $_SESSION['id'];

		// Defining MySQL request
		$inputtest = array('id' => $id, 'oldpassword' => $oldpassword);
		$sqltest = 'SELECT * FROM users WHERE id = :id && pwd = :oldpassword;';

		// Accessing the database
		$bdd = createBDD();

		// Testing the password
		$test = execReq($bdd, $sqltest, $inputtest);

		if(!empty($test))
		{ 
			// Defining MySQL request
			$input = array('id' => $id, 'password' => $password);
			$sql = 'UPDATE users SET pwd = :password WHERE id = :id;';

			// Getting the data
			execReq($bdd, $sql, $input);

			// Redirect to the settings
			echo '<script>alert("Password updated successfully");</script>';
		}
		else
		{
			echo '<script>alert("Invalid password");</script>';
		}

		header('Location: ../../settings.php');
	}
}
?>
