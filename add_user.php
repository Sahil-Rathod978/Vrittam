<?php
error_reporting(0);
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "event_management";

 // Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connections
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}


$sql = "INSERT INTO `register` (`Gr_number`, `uname`, `Email`, `U_Password`) VALUES ('".$_POST['Gr number']."', '".$_POST['uname']."', '".$_POST['Email']."','".$_POST['U_Password']."')";

$result = mysqli_query($conn,$sql);
    
echo $sql;
if ($result) {
  ?>
  <script>
    window.alert("Registration Successful");

</script>
  <?php
  header("location:index.html");
} else {
  echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>