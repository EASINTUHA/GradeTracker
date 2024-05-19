<?php
// Enable error reporting
error_reporting(E_ALL);
ini_set('display_errors', 1);

// Include the database connection
include "index.php";

header('Content-Type: application/json');

$request = $_SERVER['REQUEST_METHOD'];

switch ($request) {
    case 'POST':
        $data = json_decode(file_get_contents('php://input'), true);
        postMethod($data, $conn);
        break;

    default:
        echo json_encode(["message" => "Request method not supported"]);
        break;
}

function postMethod($data, $conn)
{
    $Name = $data['Name'];
    $Department = $data['Department'];
    $Email = $data['Email'];
    $Designation = $data['Designation'];
    $password = $data['password'];
    $created_by = $data['created_by'];
    
    $hashed_password = password_hash($password, PASSWORD_DEFAULT);
    
    $stmt = $conn->prepare("INSERT INTO `registration` (`Name`, `Department`, `Email`, `Designation`, `password`, `create_by`, `create_at`) VALUES (?, ?, ?, ?, ?, ?, NOW())");
    $stmt->bind_param("ssssss", $Name, $Department, $Email, $Designation, $hashed_password, $created_by);
    
    if ($stmt->execute()) {
        echo json_encode(["message" => "Data inserted successfully"]);
    } else {
        echo json_encode(["message" => "Error inserting data", "error" => $stmt->error]);
    }

    $stmt->close();
}
?>
