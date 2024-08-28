<?php  

   include("includes/config.php");
   include("includes/classes/User.php");
   include("includes/classes/Artist.php");
   include("includes/classes/Album.php");
   include("includes/classes/Song.php");
   include("includes/classes/Playlist.php");

   //session_destroy(); to logout manually

   if (isset($_SESSION['userLoggedIn'])) 
   {
        $userLoggedIn = new User($con, $_SESSION['userLoggedIn']);
        $username = $userLoggedIn->getUsername();
        $nam = $userLoggedIn->getFirstAndLastName();
        echo "<script>userLoggedIn ='".$username."';</script>";
   }
   else
   {
     	//header("Location: register.php");
      $temp = "guest";
      $_SESSION['userLoggedIn'] = $temp;
      $userLoggedIn = new User($con, $_SESSION['userLoggedIn']);
      $username = $userLoggedIn->getUsername();
      $nam = $userLoggedIn->getFirstAndLastName();
      echo "<script>userLoggedIn ='".$username."';</script>";
   }

?>


<html>
<head>
	<title>Welcome to Neptunes!</title>
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <meta charset="utf-8" />
   <link rel="icon" href="assets/images/icons/logo.ico" type="image/x-icon" />
   <link rel="shortcut icon" href="assets/images/icons/logo.ico" type="image/x-icon" />
   <link rel="stylesheet" type="text/css" href="assets/css/style.css">
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
   <script src="assets/js/script.js"></script>
</head>

<body>
   
   <div id="mainContainer">

      <div id="topContainer">
         
         <?php include("includes/navBarContainer.php") ?>

         <div id="mainViewContainer">
            
         <div id="mainContent">