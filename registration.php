<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>Registration</title>
    <link rel="stylesheet" href="style.css"/>
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"/>
</head>

<!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"> -->
<body>
<?php
    require('db.php');
    // When form submitted, insert values into the database.
    if (isset($_REQUEST['username'])) {
        // removes backslashes
        $username = stripslashes($_REQUEST['username']);
        //escapes special characters in a string
        $username = mysqli_real_escape_string($con, $username);
        $email    = stripslashes($_REQUEST['email']);
        $email    = mysqli_real_escape_string($con, $email);
        $password = stripslashes($_REQUEST['password']);
        $password = mysqli_real_escape_string($con, $password);
        $create_datetime = date("Y-m-d H:i:s");
        $query    = "INSERT into `users` (username, password, email, create_datetime)
                     VALUES ('$username', '" . md5($password) . "', '$email', '$create_datetime')";
        $result   = mysqli_query($con, $query);

        if ($result)
        {
            ?>

            <div class='form seccess_message'>
                  <h3 style='color:green; font-weight:bold;'>You are registered successfully.</h3><br/>

                  <h2> Lists of Users: <a href='#'>Click to see the User's List in database</a></h2>
               
               
                  //
                <h1>List of Users: ..</h1>
               

                <?php
                $query2    = "SELECT * FROM users";
                $res2   = mysqli_query($con, $query2);

                ?>

                <table border="3px" cellspacing="2px" cellpadding="2px">
                    <th>User Id</th>
                    <th>User Name</th>
                    <th>Email</th>
                    <th>Opperations</th>
                <?php
                   
                while( $row = mysqli_fetch_array($res2) )
                {
                    ?>
                    <tr>
                        <td> <?php echo " $row[id]. "; ?> </td>
                        <td> <?php echo " $row[username] "; ?> </td>
                        <td> <?php echo " $row[email] "; ?> </td>
                        <td>
                             <span> <a href="delete_user.php?id=<?php echo $row['id']; ?>" style="text-decoration :none;">X</a> (delete) </span>
                             <span> <a href="update_user.php?id=<?php echo $row['id']; ?>"> <i class="fas fa-edit"></i></a> Update </span>
                        
                        </td>

                    <!-- echo "$row[id]. $row[username]. $row[email]  . <br />"; -->
                    </tr>
                    <?php
                }
                ?>
                </table>

                  //


                  <p class='link'>Click here to <a href='login.php'>Login</a></p>
                  </div>

                  <?php
        } 
        
        else {
            ?>


           <div class='form'>
                  <h3>Required fields are missing.</h3><br/>
                  <p class='link'>Click here to <a href='registration.php'>registration</a> again.</p>
                  </div>
                  
                  
                  <?php
        }
    }
     else {
?>


    <form class="form" action="" method="post">
        <div class="form-inside">
        <h1 class="login-title" style="color: green; font-weight: bold; letter-spacing: .1rem"> User Creation </h1>
        <input type="text" class="login-input" name="username" placeholder="Username" required />
        <input type="email" class="login-input" name="email" placeholder="Email Adress" required />
        <input type="password" class="login-input" name="password" placeholder="Password" required>
        <input type="submit" class="reg_submission" name="submit" value="Create" class="login-button">
        <p class="link" style="color: blue;">Already have an account? <a href="login.php" style= "color: orange;">Login here</a></p>
        </div>
    </form>
<?php
    }
?>

<!-- <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"></script> -->

</body>
</html>
