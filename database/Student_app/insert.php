<?php

include "index.php";

header('Content-Type: application/json');

$request = $_SERVER['REQUEST_METHOD'];

switch ($request) {
    case 'POST':
        $data = json_decode(file_get_contents('php://input'), true);
        postMethod($data, $conn);  // Pass the $conn variable to the function
        break;

    default:
        echo json_encode(["message" => "Request method not supported"]);
        break;
}

function postMethod($data, $conn)
{
    // Extract data from the input
    $Name = $data['Name'];
    $Department = $data['Department'];
    $Email = $data['Email'];
    $Designation = $data['Designation'];
    $password = $data['password'];
    $created_by = $data['created_by'];
    
    // Use prepared statements to prevent SQL injection
    $stmt = $conn->prepare("INSERT INTO `registration` (`Name`, `Department`, `Email`, `Designation`, `password`, `create_by`, `create_at`) VALUES (?, ?, ?, ?, ?, ?, NOW())");
    $stmt->bind_param("ssssss", $Name, $Department, $Email, $Designation, $password, $created_by);
    
    if ($stmt->execute()) {
        echo json_encode(["message" => "Data inserted successfully"]);
    } else {
        echo json_encode(["message" => "Error inserting data", "error" => $stmt->error]);
    }

    // Close the statement
    $stmt->close();
}
?>
