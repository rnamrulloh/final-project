<?php
session_start();

if (!isset($_SESSION['username'])) {
    header("Location: login.php");
    exit();
}
?>

<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Halaman Utama</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f1f4f9;
        }
        .container {
            margin-top: 60px;
        }
        .header {
            text-align: center;
            margin-bottom: 30px;
            position: relative;
        }
        .header h1 {
            font-weight: bold;
            color: #007bff;
        }
        .header p {
            color: #555;
            font-size: 18px;
        }
        .logout-btn, .my-btn {
            position: absolute;
            top: 20px;
            font-size: 16px;
            font-weight: bold;
            border-radius: 20px;
            padding: 8px 15px;
            color: #fff;
        }

        .logout-btn {
            right: 20px;
            background-color: #dc3545;
            border: none;
        }

        .logout-btn:hover {
            background-color: #c82333;
        }

        .my-btn {
            right: 120px;
            background-color: #007bff;
            border: none;
        }

        .my-btn:hover {
            background-color: #0056b3;
        }

        .gallery-container {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
            gap: 20px;
        }
        .certificate-card {
            position: relative;
            overflow: hidden;
            border-radius: 10px;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease;
        }
        .certificate-card:hover {
            transform: scale(1.05);
        }
        .certificate-card img {
            width: 100%;
            height: auto;
            display: block;
            border-radius: 10px;
        }
        /* Tampilan dua kolom di perangkat kecil */
        @media (max-width: 576px) {
            .gallery-container {
                grid-template-columns: repeat(2, 1fr);
            }
        }
    </style>
</head>
<body>

    <div class="container">
        <div class="header">
            <h1>Selamat Datang di Sistem Sertifikat</h1>
            <p>Anda login sebagai: <strong><?php echo $_SESSION['username']; ?></strong></p>
        </div>

        <div class="container">
            <a href="logout.php" class="btn logout-btn">Logout</a>
            <a href="my_certificates.php" class="btn my-btn">My Sertifikat</a>
        </div>

        <h2 class="text-center mb-4">Pilih Template Sertifikat</h2>

        <!-- Kontainer galeri sertifikat -->
        <div class="gallery-container">
            <!-- Kartu sertifikat -->
            <div class="certificate-card">
                <a href="preview/hasil/templet-1/1.php">
                    <img src="images/1.jpg" alt="Sertifikat 1">
                </a>
            </div>

            <div class="certificate-card">
                <a href="preview/hasil/templet-2/2.php">
                    <img src="images/2.jpg" alt="Sertifikat 2">
                </a>
            </div>

            <div class="certificate-card">
                <a href="preview/hasil/templet-3/3.php">
                    <img src="images/3.jpg" alt="Sertifikat 3">
                </a>
            </div>

            <div class="certificate-card">
                <a href="preview/hasil/templet-4/4.php">
                    <img src="images/4.jpg" alt="Sertifikat 4">
                </a>
            </div>

            <div class="certificate-card">
                <a href="preview/hasil/templet-5/5.php">
                    <img src="images/5.jpg" alt="Sertifikat 5">
                </a>
            </div>

            <div class="certificate-card">
                <a href="preview/hasil/templet-6/6.php">
                    <img src="images/6.jpg" alt="Sertifikat 6">
                </a>
            </div>

            <div class="certificate-card">
                <a href="preview/hasil/templet-7/7.php">
                    <img src="images/7.jpg" alt="Sertifikat 7">
                </a>
            </div>

            <div class="certificate-card">
                <a href="preview/hasil/templet-8/8.php">
                    <img src="images/8.jpg" alt="Sertifikat 8">
                </a>
            </div>

            <div class="certificate-card">
                <a href="preview/hasil/templet-9/9.php">
                    <img src="images/9.jpg" alt="Sertifikat 9">
                </a>
            </div>

            <div class="certificate-card">
                <a href="preview/hasil/templet-10/10.php">
                    <img src="images/10.jpg" alt="Sertifikat 10">
                </a>
            </div>

            <div class="certificate-card">
                <a href="preview/hasil/templet-11/11.php">
                    <img src="images/11.jpg" alt="Sertifikat 11">
                </a>
            </div>

            <div class="certificate-card">
                <a href="preview/hasil/templet-12/12.php">
                    <img src="images/12.jpg" alt="Sertifikat 12">
                </a>
            </div>

            <div class="certificate-card">
                <a href="preview/hasil/templet-13/13.php">
                    <img src="images/13.jpg" alt="Sertifikat 13">
                </a>
            </div>

            <div class="certificate-card">
                <a href="preview/hasil/templet-14/14.php">
                    <img src="images/14.jpg" alt="Sertifikat 14">
                </a>
            </div>

            <div class="certificate-card">
                <a href="preview/hasil/templet-15/15.php">
                    <img src="images/15.jpg" alt="Sertifikat 15">
                </a>
            </div>

            <div class="certificate-card">
                <a href="preview/hasil/templet-16/16.php">
                    <img src="images/16.jpg" alt="Sertifikat 16">
                </a>
            </div>
        </div>

    </div>

</body>
</html>
