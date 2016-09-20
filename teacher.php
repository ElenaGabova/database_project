<form action="teacher.php" method="post">

<html>
<title>
	Занятость преподавателя
</title>
<style>
td{
    border: 1px solid #000;
}
</style>
<body>

<select name="teacher_name" maxlength="20">
  
  </option>
	 <option selected value="Головатая">Головатая</option>
	<option value="Матвеева">Матвеева</option>
	 <option value="Ермоленко">Ермоленко</option>
	<option value="Макаров">Макаров</option>
	<option value="Довжко">Довжко</option>
                                                           
 </select>

 <input type="submit" value = "ОК">
</td></tr>
<br><br><br>



<?php

function get_date($d) {
	if($d = 1) return "Пн.";
	if($d = 2) return "Вт.";
	if($d = 3) return "Ср.";
	if($d = 4) return "Чт.";
	if($d = 5) return "Пт.";
	if($d = 6) return "Сб. ";

}

function get_time($t) {
	 if($t = 1) return "8:00";
	 if($t = 2) return "9:40";
	if($t = 3) return "11:30";
	if($t = 4) return "14:50";
	if($t = 5) return "15:30";
	if($t = 6) return "17:10";
	if($t = 7) return "18:50";
}
ini_set('display_errors','On');
error_reporting('E_ALL');

$teacher_name= "Головатая";

if (!empty($_POST["teacher_name"])) {
        $teacher_name = $_POST["teacher_name"];

}

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

$sql= mysql_query("SELECT date, time, hall_number, gr_number, info from teachers JOIN lessons ON teachers.teacher_id = lessons.teacher_id JOIN shedule ON lessons.lesson_id = shedule.lesson_id WHERE  teacher_name = '$teacher_name'");

$i = 0;
echo "<table>";
echo "<tr><td>День недели </td> <td>№ пары </td> <td> № аудитории </td><td> № группы </td> <td> доп. информация </td></tr>";
while($result=mysql_fetch_array($sql)) {
	echo "<tr><td>";
	echo $result['date'] ;
                echo "</td>";
	echo "<td>";
	echo  $result['time'];
	echo "</td>";
	echo "<td>";
	echo $result['hall_number'];
	echo "</td>";
	echo "<td>";
	echo $result['gr_number'];
	echo "</td>";
	echo "<td>";
	echo $result['info'];
	echo "</td>";
                echo "</tr>";
}
echo "</tr></table>";
?>

</body>
</html>