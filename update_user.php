<?php 
include('db.php');



if(isset($_GET['id']) && isset($_GET['username']) && isset($_GET['email']) )
{
   $id = $_GET['id']; 
   $username = $_GET['username'];
   $email = $_GET['email'];


  $sql = "UPDATE `users` SET  `username`='$username' , `email`= '$email',  WHERE id='$id' ";
  $query= mysqli_query($con,$sql);
  $lastId = mysqli_insert_id($con);
  if($query ==true)
  {
   
    $data = array(
        'status'=>'true',
       
    );

    echo json_encode($data);
}
}


else
{
     $data = array(
        'status'=>'false',
      
    );

    echo json_encode($data);
} 

?>