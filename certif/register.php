<?php
include 'db.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = $_POST['username'];
    $password = password_hash($_POST['password'], PASSWORD_DEFAULT);

    // Cek apakah username sudah ada
    $stmt = $conn->prepare("SELECT * FROM users WHERE username = ?");
    $stmt->bind_param("s", $username);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        echo "Username sudah terdaftar. Silakan pilih username lain.";
    } else {
        // Insert user baru
        $stmt = $conn->prepare("INSERT INTO users (username, password) VALUES (?, ?)");
        $stmt->bind_param("ss", $username, $password);

        if ($stmt->execute()) {
            header("Location: login.php");
            exit();
        } else {
            echo "Terjadi kesalahan. Silakan coba lagi.";
        }
    }

    $stmt->close();
    $conn->close();
}
?>

<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <title>Register</title>
    <link rel="stylesheet" href="css/login.css">
</head>
<body>
    <div class="form-container">
        <div class="form-left">
            <h2>Join Us</h2>
            <p>Create an account to start using our certificate system.</p>
        </div>
        <div class="form-right">
            <h2>REGISTER</h2>
            <form method="post" action="">
                <label for="username">Username</label>
                <input type="text" name="username" required>
                
                <label for="password">Password</label>
                <input type="password" name="password" required>
                
                <button type="submit" class="btn-primary">Register</button>
            </form>
            <p>Already have an account? <a href="login.php">Login</a></p>
        </div>
    </div>
</body>
</html>
