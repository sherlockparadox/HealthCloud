<?php
session_start();
 $user = "root";
 $passkey = "";
 $db = "healthcloud";

   $conn = new mysqli("localhost",$user,$passkey,$db);
   if(! $conn ) { 
      die('Could not connect: ' . mysqli_error()); }
 ?>
<!DOCTYPE html>
<html>
<head>
	<title>Request Appointment</title>
      <meta name = "viewport" content = "width = device-width, initial-scale = 1">      
      <link rel = "stylesheet"
         href = "https://fonts.googleapis.com/icon?family=Material+Icons">
      <link rel = "stylesheet"
         href = "https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.3/css/materialize.min.css">
      <script type = "text/javascript"
         src = "https://code.jquery.com/jquery-2.1.1.min.js"></script>           
      <script src = "https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.3/js/materialize.min.js">
      </script> 
      
      <script>
         $(document).ready(function() {
            $('select').material_select();
         });
      </script>
</head>
<body class="container">
<center><h1>Request Appointment</h1></center><br>
<div class="row">
<form method="post" action="phc_submit_request.php" class="col s12">
            <label>Choose Specialist</label>
               <select name="forwardto">
                  <option value = "" disabled selected>Specialist</option>
<?php
 $sql = "SELECT Name FROM cms_details";
 $retval = mysqli_query( $conn,$sql ); 
  while($row = mysqli_fetch_array($retval)){
    $name = $row["Name"];
    echo "<option>".$name."</option>";

  }

?>
</select><br>
<input class = "btn waves-effect waves-teal" type="submit" name="submit" value="Apply">
</form>
    <br>
    <br>
    <h3><center>  Available Specialists </center></h3>
    <br>
    <br>
    <table class="striped">
            <tr class="">
                <td>Name</td>
                <td>Email</td>
                <td>Phone</td>
                <td>Specialists</td>
            </tr>
            <?php
                $query1 = "SELECT Name,Email,Phone,Speciality FROM cms_details";
                $retval1 = mysqli_query( $conn,$query1 );
                while ($row = mysqli_fetch_array($retval1)) {
                   echo "<tr>";
                    $name1 = $row["Name"];
                    $email = $row["Email"];
                    $phone = $row["Phone"];
                    $spec = $row["Speciality"];
                   echo "<td>".$name1."</td>";
                   echo "<td>".$email."</td>";
                   echo "<td>".$phone."</td>";
                   echo "<td>".$spec."</td>";
                   echo "</tr>";
               }

            ?>
        </table>
</body>
</html>