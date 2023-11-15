<?php

@include 'config.php';

if(isset($_POST['submit'])){

   $name = mysqli_real_escape_string($conn, $_POST['name']);
   $email = mysqli_real_escape_string($conn, $_POST['email']);
   $pass = md5($_POST['password']);
   $cpass = md5($_POST['cpassword']);
   $user_type = $_POST['user_type'];

   $select = " SELECT * FROM user WHERE email = '$email' && password = '$pass' ";

   $result = mysqli_query($conn, $select);

   if(mysqli_num_rows($result) > 0){

      $error[] = 'user already exist!';

   }else{

      if($pass != $cpass){
         $error[] = 'password not matched!';
      }else{
         $insert = "INSERT INTO user(name, email, password, user_type) VALUES('$name','$email','$pass','$user_type')";
         mysqli_query($conn, $insert);
         header('location:login_form.php');
      }
   }

};


?>
<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Register Form</title>

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
<div class="container-register">
<div class="main-box">
<form action="" method="post">
      <h3>Register Now</h3>
      <?php
      if(isset($error)){
         foreach($error as $error){
            echo '<span class="error-msg">'.$error.'</span>';
         };
      };
      ?>
      <div class="input-box">
      <span class="icon"><i class='bx bxs-user'></i></span>
      <input type="text" name="name" required placeholder="Enter your name">
      <label>Name</label>
      </div>

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

      <div class="input-box">
      <span class="icon"><i class="bx bxs-lock-alt"></i></span>
      <input type="password" name="cpassword" required placeholder="Confirm your password">
      <label>Confrim Password</label>
      </div>

      <div class="box-type">
      <select name="user_type">
         <option value="user">User</option>
         <option value="admin">Admin</option>
      </select>
      <label>Type</label>
      </div>

      <div class="check-register">
         <label><input type="checkbox">I accept all terms & conditions</label>
      </div>

      <input type="submit" name="submit" value="Register Now" class="main-btn">

      <div class="login">
      <p>Already have an account? <a href="login_form.php">Login now</a></p>
      </div>
   </form>
</div>

<span class="close-icon">
<div class="bx bx-x"></div>
</span>
</div>

</body>
</html>