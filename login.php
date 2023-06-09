<?php

include 'DatabaseConfig.php';
include 'helper_functions/authentication_functions.php';
// Creating MySQL Connection.

if (isset($_POST['email']) && isset($_POST['password'])) {

    $email = $_POST['email'];
    $password = $_POST['password'];

    //check if the email is already in the database
    $check_email = "SELECT * FROM users WHERE username = '$email'";
    $result = mysqli_query($con, $check_email);
    $count = mysqli_num_rows($result);
    if ($count > 0) {
      //check if the password is correct
      $data=mysqli_fetch_assoc($result);
      $databasePassword= $data['password'];
      $userId= $data['id'];
      $role= $data['role'];
      if($data['active'] !='1'){
        echo json_encode(
            [
                'success' => false,
                'message' => 'Your account has been suspended. Please contact the admin.'
            ]
        );
        return;
      }
      login($password, $databasePassword, $userId, $role);
     
    } else {
        echo json_encode(
            [
                'success' => false,
                'message' => 'User Not Found'
            ]
        );
    }
} else {
    echo json_encode(
        [
            'message' => 'Please fill all the fields.',
            'success' => false
        ]
    );
}


