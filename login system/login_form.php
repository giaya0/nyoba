<?php

@include 'config.php';

session_start();

if(isset($_POST['submit'])){

   $name = mysqli_real_escape_string($conn, $_POST['name']);
   $email = mysqli_real_escape_string($conn, $_POST['email']);
   $pass = md5($_POST['password']);
   $cpass = md5($_POST['cpassword']);
   $user_type = $_POST['user_type'];

   $select = " SELECT * FROM user WHERE email = '$email' && password = '$pass' ";

   $result = mysqli_query($conn, $select);

   if(mysqli_num_rows($result) > 0){

      $row = mysqli_fetch_array($result);

      if($row['user_type'] == 'admin'){

         $_SESSION['admin_name'] = $row['name'];
         header('location:admin_page.php');

      }elseif($row['user_type'] == 'user'){

         $_SESSION['user_name'] = $row['name'];
         header('location:user_page.php');

      }
     
   }else{
      $error[] = 'incorrect email or password!';
   }

};


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
<div class="container">
<div class="main-box">
<form action="" method="post">
      <h3>Login</h3>
      <?php
      if(isset($error)){
         foreach($error as $error){
            echo '<span class="error-msg">'.$error.'</span>';
         };
      };
      ?>
      <div class="input-box">
      <span class="icon"><i class="bx bxs-envelope"></i></span>
      <input type="email" name="email" required placeholder="Enter your email">
      <label>Email</label>
      </div>

      <div class="input-box">
      <span class="icon"><i class="bx bxs-lock-alt"></i></span>
      <input type="password" name="password" required placeholder="Enter your password">
      <label>Password</label>
      </div>

      <div class="check">
         <label><input type="checkbox">Remember me</label>
         <a href="#">Forget Password</a>
      </div>

      <input type="submit" name="submit" value="Login Now" class="main-btn">

      <div class="register">
      <p>Don't have an account? <a href="register_form.php">Register now</a></p>
      </div>
   </form>
</div>

<span class="close-icon">
<div class="bx bx-x"></div>
</span>
</div>

</body>
</html>