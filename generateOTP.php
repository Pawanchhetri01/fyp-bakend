<?php

function generateOTP()
{
    $digits = "0123456789";
    $OTP = "";
    for ($i = 0; $i < 4; $i++) {
        $OTP .= $digits[rand(0, strlen($digits) - 1)];
    }
    return $OTP;
}
