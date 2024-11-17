<?php
require('db.php');
session_start();

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $certificate_id = $_POST['certificate_id'];
    $user_id = $_SESSION['user_id'];

    // Ambil informasi file sebelum dihapus
    $query = "SELECT file_name FROM certificates WHERE id = '$certificate_id' AND user_id = '$user_id'";
    $result = $conn->query($query);

    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        $file_path = "uploads/" . $row['file_name'];

        // Hapus file dari direktori server
        if (file_exists($file_path)) {
            unlink($file_path);
        }

        // Hapus data dari database
        $delete_query = "DELETE FROM certificates WHERE id = '$certificate_id' AND user_id = '$user_id'";
        $conn->query($delete_query);
    }
}

header("Location: my_certificates.php"); // Kembali ke halaman utama setelah menghapus
exit();
?>
