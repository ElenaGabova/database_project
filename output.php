<html>
	<style>
		td{	border: 1px solid #000; }
	</style>
	
	<head>
		<title>
			Просмотр расписания
		</title>

	</head>

<form action="output.php" method="post">
<body>
	<tr><td>   
	<select name="date"  maxlength="20">
  
		<option selected value="1">Пн. </option>
		<option value="2">Вт. </option>
		<option value="3">Ср. </option>
		<option value="4">Чт. </option>
		<option value="5">Пт. </option>
		<option value="6">Сб. </option>                            
 	</select>

	 <input type="submit" value = "ОК">
	</td></tr>
	<br><br><br>
 
	<?php 
	function shedule($t, $d){
   	     for ($i = 515; $i <= 519; $i++) {
		echo "<td width='100'>";
		$sql= mysql_query("SELECT teacher_name, gr_number, info from teachers JOIN lessons ON teachers.teacher_id = lessons.teacher_id JOIN shedule ON lessons.lesson_id = shedule.lesson_id WHERE  time = '$t' AND hall_number = '$i' AND date = '$d'");

		$result = mysql_fetch_assoc($sql);
		echo $result['gr_number'];
               		 echo "  ";
		echo $result['teacher_name'];
                	echo "<br>";
		echo $result['info'];
                	echo "<br>";
		echo "</td>";
                    }
	    echo "</tr>";
	    echo "<tr>";
	}

	ini_set('display_errors','On');
	error_reporting('E_ALL');
	$d = 1;

	if (!empty($_POST["date"])) {
        		$d = (int ) $_POST["date"];
	};

	$servername = "localhost";
	$username = "root";
	$password = "1234";

	//connection to the database
	$dbhandle = mysql_connect($servername, $username, $password) 
 		or die("Unable to connect to MySQL");

	//select a database to work with
	$selected = mysql_select_db("shedule_bd",$dbhandle) 
		or die("Could not select examples");

	mysql_query("SET character_set_client='utf8'"); 
	mysql_query("SET character_set_connection='utf8'"); 
	mysql_query("SET character_set_results='utf8'");

	$t = 1;
	echo "<table>";

	echo "<tr>";
	echo "<td></td>";
	echo "<td >515</td>";        
	echo "<td>516</td>";     
	echo "<td>517</td>";  
	echo "<td>518</td>"; 
	echo "<td>519</td>"; 

	echo "</tr>";
	echo "<tr>";
	echo "<td   width='10%'>8:00</td>";   
		shedule(1, $d);
	echo "<td   width='10%'>9:40</td>";
		shedule(2, $d);
	echo "<td   width='10%'>11:30</td>";
		shedule(3, $d);
	echo "<td   width='10%'>14:50</td>";
		shedule(4, $d);
	echo "<td   width='10%'>15:30</td>";
		shedule(5, $d);
	echo "<td   width='10%'>17:10</td>";
		shedule(6, $d);
	echo "<td   width='10%'>18:50</td>";
		shedule(7, $d);

	echo "</table>";

	?>
</body>
<html>
