<?php
include 'DatabaseConfig.php';
include 'helper_functions/authentication_functions.php';

if (isset($_POST['name']) && isset($_POST['number'])  && isset($_POST['username'])&&isset($_POST['id'])) {

    $name = $_POST['name'];
    $number = $_POST['number'];
    $username = $_POST['username'];
    $id = $_POST['id'];

    $query = "UPDATE users SET name = '$name', number = '$number',username='$username' WHERE id = '$id'";
    if ($result = mysqli_query($con, $query)) {
        $data = ['success' => true, 'message' => ['User Sucessfully updated!']];
    } else {
        $data = ['success' => false, 'message' => ['Something went wrong!']];
    }
    echo json_encode($data);
} else {
    $data = ['success' => false, 'message' => ['All fields are required!']];
    echo json_encode($data);
}
