<?php
 
	require_once 'form_input.html';

	ini_set('display_errors','On');
	error_reporting('E_ALL');

	$servername = "localhost";
	$username = "root";
	$password = "1234";

	$teacher_name = $_POST["teacher_name"];
	$gr_number = $_POST["gr_number"];
	$date= (int) $_POST["date"];
	$info= $_POST["info"];
	$time= (int) $_POST["time"];
	$hall_number= (int) $_POST["hall_number"];

	//connection to the database
	$dbhandle = mysql_connect($servername, $username, $password) 
 		or die("Unable to connect to MySQL");

	//select a database to work with
	$selected = mysql_select_db("shedule_bd",$dbhandle) 
  		or die("Could not select examples");

	mysql_query("SET character_set_client='utf8'"); 
	mysql_query("SET character_set_connection='utf8'"); 
	mysql_query("SET character_set_results='utf8'");


	$sql= mysql_query("SELECT teacher_id from teachers where teacher_name = '$teacher_name'") ;
	$result = mysql_fetch_assoc($sql);
	$teacher_id = (int) $result['teacher_id'];

	$sql = "INSERT INTO lessons (teacher_id,  gr_number, info) VALUES ('$teacher_id',  '$gr_number', '$info')";

	if (!mysql_query($sql, $dbhandle)) {
  		die('Error: ' . mysql_error());
	}

	$sql = mysql_query("SELECT lesson_id from lessons where lesson_id = (SELECT max(lesson_id) from lessons)") ;
	$result = mysql_fetch_assoc($sql);
	$lesson_id = (int) $result['lesson_id'];


	$sql = "INSERT INTO shedule (lesson_id, hall_number, date, time) VALUES ('$lesson_id', '$hall_number', '$date', '$time')";

	if (!mysql_query($sql, $dbhandle)) {
  		die('Error: ' . mysql_error());
	}
	
	if (!empty($_POST["submit"])) {
        		echo "Данные добавлены";
	};

	mysql_close($dbhandle);
?>


