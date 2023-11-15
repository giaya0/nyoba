<?php

@include 'config.php';

session_start();

if(!isset($_SESSION['user_name'])){
   header('location:login_form.php');
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Login Form</title>

<!-- custom css file link  -->
<link rel="stylesheet" href="css/style.css">

<!-- boxicon link -->
<link rel="stylesheet" href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">

<!-- googlefont link -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=MuseoModerno:wght@300;400;500;700;800;900&display=swap" rel="stylesheet">
</head>

<body>
<!-- header -->
<header>
  <a href="#" class="logo">Alvin Helm.</a>
  <ul class="navbar">
    <li><a href="#">Home</a></li>
    <li><a href="#">About Us</a></li>
    <li><a href="#">Products</a></li>
    <li><a href="#">Review</a></li>
    <li><a href="#">Contact</a></li>
    <li><a href="logout.php" class="btn">Logout</a></li>
  </ul>
</header>



</body>
</html>