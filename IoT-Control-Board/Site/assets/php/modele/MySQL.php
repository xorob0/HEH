<?php
	date_default_timezone_set('Europe/Brussels');

	function createBDD()
	{
		try
		{
			$bdd = new PDO('mysql:host=localhost;dbname=projet', 'root', 'Admin2015');
		}
		catch (Exception $e) 
		{
			echo '<p> Error connecting to the database, please try again<p> '.$e; //TODO redirect an error page and log error
		}
		return $bdd;
	}
	
	function execReq($bdd, $sql, $input)
	{
		$req = $bdd -> prepare($sql);
    	$req -> execute($input);
		return $req -> fetch();
	}

	function execReqAll($bdd, $sql, $input)
	{
		$req = $bdd -> prepare($sql);
    	$req -> execute($input);
		return $req -> fetchAll();
	}
	
	function getDevices()
	{
		if(isset($_SESSION['id']))
		{
			if(!empty($_SESSION['id']))
			{
				$id = $_SESSION['id'];
				$bdd = createBDD();
				$input = array('user' => $id);
				$sql = 'SELECT * FROM objects WHERE id IN (SELECT id_obj FROM auth WHERE id_user = :user)';
				$data = execReqAll($bdd, $sql, $input);
				return $data;
			}
		}
	}

	function getOwnedDevices()
	{
		if(isset($_SESSION['id']))
		{
			if(!empty($_SESSION['id']))
			{
				$id = $_SESSION['id'];
				$bdd = createBDD();
				$input = array('user' => $id);
				$sql = 'SELECT * FROM objects WHERE owner = :user;';
				$data = execReqAll($bdd, $sql, $input);
				return $data;
			}
		}
	}
?>
