<?php
session_start();
?>
<!DOCTYPE html>
<html>
<body>

<?php
// remove all session variables
session_unset(); 

// destroy the session 
session_destroy(); 
header('Location:../../Front-End/Landing_Page/index.html');
?>

</body>
</html>