<?php
session_start();

require_once('modele/MySQL.php');

if(isset($_POST['login']) || isset($_POST['pwd']))
{
	if(!empty($_POST['login']) && !empty($_POST['pwd']))
	{
		// Defining variables
		$login = htmlspecialchars($_POST['login']);
		$pwd = sha1($_POST['pwd']);

		// Defining MySQL request
		$input = array('login' => $login, 'pwd' => $pwd);
		$sql = 'SELECT * FROM users WHERE login = :login && pwd = :pwd';

		// Accessing the database
		$bdd = createBDD();

		// Getting the data
		$data = execReq($bdd, $sql, $input);

		if(!empty($data))
		{ 
			$_SESSION['connected'] = 1;
			$_SESSION['id'] = $data['id'];
			$_SESSION['login'] = $data['login'];
			header('Location: ../../objects_list.php');
		}
		else
		{
			session_destroy();
			echo '<p> Login or password invalid ! </p>';
		}
	}
}
?>
