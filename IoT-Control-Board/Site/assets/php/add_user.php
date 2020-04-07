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
		$input = array('login' => $login, 'pwd' => $pwd);
		$sql = 'INSERT INTO `users` (`id`, `login`, `pwd`) VALUES (NULL, :login, :pwd);';

		// Accessing the database
		$bdd = createBDD();

		execReq($bdd, $sql, $input);
		echo '<script>alert("User added successfully");</script>';

		/* header('Location: ../../objects_list.php'); */
	}
}
?>
