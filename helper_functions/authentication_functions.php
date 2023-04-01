<?php
function signUp($email, $password)
{
    //insert the user into the database
    global $con;
    $encrypted_password = password_hash($password, PASSWORD_DEFAULT);
    $insert_user = "INSERT INTO users (username, password) VALUES ('$email', '$encrypted_password')";
    $result = mysqli_query($con, $insert_user);
    if ($result) {
        echo json_encode(
            [
                'success' => true,
                'message' => 'User created successfully'
            ]
        );
    } else {
        echo json_encode(
            [
                'success' => false,
                'message' => 'User creation failed'
            ]
        );
    }
}
function addMerchant($email, $password, $name, $phone)
{
    //insert the user into the database
    global $con;
    $encrypted_password = password_hash($password, PASSWORD_DEFAULT);
    $insert_user = "INSERT INTO users (username, password, role, name, phone) VALUES ('$email', '$encrypted_password', 'merchant', '$name', '$phone')";
    $result = mysqli_query($con, $insert_user);
    if ($result) {
        echo json_encode(
            [
                'success' => true,
                'message' => 'Merchant created successfully'
            ]
        );
    } else {
        echo json_encode(
            [
                'success' => false,
                'message' => 'Merchant creation failed'
            ]
        );
    }
}
function login($password, $databasePassword, $userID, $role)
{
    //insert the user into the database

    if (password_verify($password, $databasePassword)) {
        //create a personal access token 
        $token = bin2hex(openssl_random_pseudo_bytes(16));
        //insert the token into the database
        global $con;
        $insert_token = "INSERT INTO personal_access_tokens (user_id, token) VALUES ('$userID', '$token')";
        $result = mysqli_query($con, $insert_token);
        if ($result) {
            echo json_encode(
                [
                    'success' => true,
                    'message' => 'User logged in successfully',
                    'token' => $token,
                    'id' => $userID,
                    'role'=>$role
                ]
            );
        } else {
            echo json_encode(
                [
                    'success' => false,
                    'message' => 'User login failed'
                ]
            );
        }
    } else {
        echo json_encode(
            [
                'success' => false,
                'message' => 'Password is incorrect'
            ]
        );
    }
}

function checkIdValidUser($token)
{
    global $con;
    if ($token != null) {
        $check_token = "SELECT * FROM personal_access_tokens WHERE token = '$token'";
        $result = mysqli_query($con, $check_token);
        $count = mysqli_num_rows($result);
        if ($count > 0) {
            $userID = mysqli_fetch_assoc($result)['user_id'];
            return $userID;
        } else {
            return null;
        }
    } else {
        return null;
    }
}
function checkIfAdmin($token)
{
    $userId=checkIdValidUser($token);
    if($userId!=null){
        global $con;
        $check_admin = "SELECT * FROM users WHERE id = '$userId'";
        $result = mysqli_query($con, $check_admin);
        $count = mysqli_num_rows($result);
        if ($count > 0) {
            $user = mysqli_fetch_assoc($result);
            if ($user['role'] == 'admin') {
                return true;
            } else {
                return false;
            }
        } else {
            return false;
        }
    }else{
        return false;
    }
}
function checkIfMerchant($token)
{
    $userId=checkIdValidUser($token);
    if($userId!=null){
        global $con;
        $check_admin = "SELECT * FROM users WHERE id = '$userId'";
        $result = mysqli_query($con, $check_admin);
        $count = mysqli_num_rows($result);
        if ($count > 0) {
            $user = mysqli_fetch_assoc($result);
            if ($user['role'] == 'merchant') {
                return true;
            } else {
                return false;
            }
        } else {
            return false;
        }
    }else{
        return false;
    }
}
function vehicleIn($customerId, $customerName, $number)
{
    //insert the user into the database
    global $con;
    $insert_customer = "INSERT INTO customers (customerId, customerName,number) VALUES ('$customerId', '$customerName', '$number')";
    $result = mysqli_query($con, $insert_customer);
    if ($result) {
        parkIn($customerId);
    } else {
        echo json_encode(
            [
                'success' => false,
                'message' => 'Vehicle entry failed'
            ]
        );
    }
}

//park in
function parkIn($customerId)
{
    $currentDate = date('Y-m-d H:i:s');
    global $con;
    $insert_parking = "INSERT INTO parkings (vehicle_no, in_time) VALUES ('$customerId', '$currentDate')";
    $result = mysqli_query($con, $insert_parking);
    if ($result) {
        $park_id = mysqli_insert_id($con);
        echo json_encode(
            [
                'success' => true,
                'message' => 'Vehicle parked successfully',
                'data'=>  $park_id
            ]
        );
    } else {
        echo json_encode(
            [
                'success' => false,
                'message' => 'Vehicle parking failed'
            ]
        );
    }
}


