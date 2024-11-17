<?php
require('db.php');
session_start();

if (!isset($_SESSION['username'])) {
    header("Location: ../../../login.php");
    exit();
}

$user_id = $_SESSION['user_id'];
$query = "SELECT * FROM certificates WHERE user_id = '$user_id'";
$result = $conn->query($query);
?>

<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sertifikat Saya</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f9fafc;
            font-family: Arial, sans-serif;
        }
        .container {
            margin-top: 40px;
        }
        .header {
            text-align: center;
            margin-bottom: 20px;
            color: #333;
        }
        .header h1 {
            font-weight: bold;
            color: #007bff;
        }
        .back-button {
            display: inline-block;
            font-size: 14px;
            padding: 5px 15px;
            font-weight: bold;
            background-color: #007bff;
            color: #fff;
            border-radius: 5px;
            text-decoration: none;
            position: absolute;
            top: 20px;
            left: 20px;
            transition: background-color 0.3s ease;
        }
        .back-button:hover {
            background-color: #0056b3;
        }
        .certificate-card {
            position: relative;
            overflow: hidden;
            border-radius: 10px;
            box-shadow: 0px 4px 12px rgba(0, 0, 0, 0.15);
            padding: 20px;
            background-color: #fff;
            transition: transform 0.3s ease;
            text-align: center;
        }
        .certificate-card:hover {
            transform: scale(1.05);
        }
        .certificate-card a {
            font-weight: bold;
            color: #007bff;
            text-decoration: none;
            margin-right: 10px;
        }
        .certificate-card a:hover {
            color: #0056b3;
        }
        .delete-btn {
            font-weight: bold;
            color: #dc3545;
            background: none;
            border: none;
            cursor: pointer;
            text-decoration: underline;
        }
        .delete-btn:hover {
            color: #c82333;
        }
        .certificate-date {
            font-size: 14px;
            color: #6c757d;
            margin-bottom: 10px;
        }
        /* Responsive design */
        .gallery-container {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
            gap: 20px;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="header">
            <h1>Sertifikat Saya</h1>
            <p>Semua sertifikat yang telah Anda buat</p>
        </div>

        <!-- Tombol Kembali ke Halaman Utama -->
        <a href="index.php" class="back-button">Kembali</a>

        <div class="gallery-container">
            <?php if ($result->num_rows > 0): ?>
                <?php while ($row = $result->fetch_assoc()): ?>
                    <div class="certificate-card">
                        <div class="certificate-date">Dibuat pada: <?php echo $row['created_at']; ?></div>
                        
                        <?php
                            $certificate_path = "uploads/" . $row['file_name'];
                        ?>
                        
                        <a href="<?php echo $certificate_path; ?>" target="_blank">Lihat Sertifikat</a>
                        
                        <form action="delete_certificate.php" method="post" style="display:inline;">
                            <input type="hidden" name="certificate_id" value="<?php echo $row['id']; ?>">
                            <button type="submit" class="delete-btn" onclick="return confirm('Apakah Anda yakin ingin menghapus sertifikat ini?')">Hapus Sertifikat</button>
                        </form>
                    </div>
                <?php endwhile; ?>
            <?php else: ?>
                <p>Tidak ada sertifikat yang ditemukan.</p>
            <?php endif; ?>
        </div>
    </div>
</body>
</html>
