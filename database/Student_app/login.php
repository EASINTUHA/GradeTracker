<?php
header("Content-Type: application/json; charset=UTF-8");

$input = json_decode(file_get_contents('php://input'), true);

if (!isset($input['Email']) || !isset($input['password'])) {
    echo json_encode(['success' => false, 'message' => 'Invalid input']);
    exit;
}

$email = $input['Email'];
$password = $input['password'];

// Establish database connection
$conn = new mysqli("localhost", "username", "password", "database");

if ($conn->connect_error) {
    echo json_encode(['success' => false, 'message' => 'Database connection failed']);
    exit;
}

// Query to check if the user exists
$stmt = $conn->prepare("SELECT password FROM users WHERE email = ?");
$stmt->bind_param("s", $email);
$stmt->execute();
$stmt->store_result();

if ($stmt->num_rows == 0) {
    echo json_encode(['success' => false, 'message' => 'User not found']);
    exit;
}

$stmt->bind_result($hashed_password);
$stmt->fetch();

if (password_verify($password, $hashed_password)) {
    echo json_encode(['success' => true]);
} else {
    echo json_encode(['success' => false, 'message' => 'Incorrect password']);
}

$stmt->close();
$conn->close();
?>
