<php
<?php
session_start();
session_unset();
session_destroy();

// Rediriger l'utilisateur vers la page de connexion
header("Location: login.php");
exit;
?>

?>