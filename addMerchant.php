<?php

include 'DatabaseConfig.php';
include 'helper_functions/authentication_functions.php';
// Creating MySQL Connection.


if (isset($_POST['email']) && isset($_POST['password'])&&isset($_POST['name'])&&isset($_POST['phone'])  ) {

    $email = $_POST['email'];
    $password = $_POST['password'];
    $name = $_POST['name'];
    $phone = $_POST['phone'];

    //check if the email is already in the database
    $check_email = "SELECT * FROM users WHERE username = '$email'";
    $result = mysqli_query($con, $check_email);
    $count = mysqli_num_rows($result);
    if ($count > 0) {
        echo json_encode(
            [
                'success' => false,
                'message' => 'Email already exists'
            ]
        );
    } else {
        // addMerchant($email, $password, $name, $phone);
        addMerchant($email, $password, $name, $phone);
    }
} else {
    echo json_encode(
        [
            'message' => 'Please fill all the fields.',
            'success' => false
        ]
    );
}


