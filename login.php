<?php
include("inc/connect.php");
include("inc/log.php");
include("inc/conn.php");
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>login signup form with html css javascript</title>
  <link rel="stylesheet" href="css/style2.css">
</head>
<body>
<div class="wrapper">
      <div class="title-text">
        <div class="title login">Login Form</div>
        <div class="title signup">Signup Form</div>
      </div>
      <div class="form-container">
        <div class="slide-controls">
          <input type="radio" name="slide" id="login" checked>
          <input type="radio" name="slide" id="signup">
          <label for="login" class="slide login">Login</label>
          <label for="signup" class="slide signup">Signup</label>
          <div class="slider-tab"></div>
        </div>
        <div class="form-inner">
            <!-- login form -->
          <form action="#" class="login" method="POST">
            <pre>
            </pre>
            <h1>Authentification</h1>

            <?php if (isset($error)) :?>
            <p style="color:red;text:center;"> <?php
            echo $error;?></p>
            <?php endif;?>
           
            <div class="field">
              <input for type="text" placeholder="Email " name="email" required>
            </div>
            <div class="field">
              <input for type="password" placeholder="Password" name="password" required>
            </div>
            <div class="pass-link"><a href="#">Forgot password?</a></div>
            <div class="field btn">
              <div class="btn-layer"></div>
              <input type="submit" value="Login" name="login">
            </div>
            <div class="signup-link">Create an account <a href="">Signup now</a></div>
          </form>
          <!-- end login form -->

          <!-- inscription form -->
          <form action="#" class="signup" method="POST">
            <div class="field">
              <input type="text" placeholder="Name" required name="nom">
            </div>
            <div class="field">
              <input type="text" placeholder="Email Address" required name="email">
            </div>
            <div class="field">
              <input type="password" placeholder="Password" required name="password">
            </div>
            <div class="field">
              <input type="tel" placeholder="phone number" required name="phone">
            </div>
            <div class="field btn">
              <div class="btn-layer"></div>
              <input type="submit" value="Signup" name="submit">
            </div>
            <div class="signup-link">Already have an account? <a href="">Login</a></div>
          </form>
          <!-- end inscription form -->
        </div>
      </div>
    </div>
  <script  src="js/script.js"></script>

</body>
</html>
