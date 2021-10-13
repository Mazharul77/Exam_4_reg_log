<?php 
include('db.php');


if(isset($_GET['id'])){
    $id = $_GET['id']; 


$sql = "DELETE FROM users WHERE id='$id'";
$delQuery =mysqli_query($con,$sql);
if($delQuery==true)
{
	 $data = array(
        'status'=>'success',
       
    );

    echo json_encode($data);
}

}



else
{
     $data = array(
        'status'=>'failed',
      
    );

    echo json_encode($data);
} 

?>