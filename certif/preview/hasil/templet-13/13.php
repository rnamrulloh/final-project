<?php
session_start();

if (!isset($_SESSION['username'])) {
    header("Location: ../../../login.php");
    exit();
}
?>

<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <title>Preview Template Sertifikat</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        /* Reset gaya dasar */
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        /* Gaya umum */
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            padding: 20px;
        }

        /* Gaya untuk kontainer preview utama */
        .preview-container {
            display: flex;
            flex-direction: column;
            align-items: center;
            background-color: #ffffff;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            max-width: 900px;
            margin: 0 auto;
            padding: 20px;
        }

        .preview-inner {
            display: flex;
            flex-direction: row;
            width: 100%;
            gap: 20px;
            margin-bottom: 20px;
            flex-wrap: wrap;
        }

        .preview-left, .preview-right {
            flex: 1;
            min-width: 250px;
        }

        .preview-left img {
            width: 100%;
            border-radius: 5px;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
        }

        .preview-right h2 {
            font-size: 1.5rem;
            color: #333;
            margin-bottom: 10px;
        }

        .preview-right p {
            font-size: 1rem;
            color: #666;
            margin-bottom: 20px;
        }

        .btn-primary {
            background-color: #007bff;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        /* Gaya untuk galeri sertifikat */
        .gallery-container {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(200px, 1fr));
            gap: 20px;
            max-width: 1000px;
            margin: 0 auto;
        }

        .certificate-card {
            background-color: #fff;
            padding: 15px;
            border-radius: 8px;
            text-align: center;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease;
        }

        .certificate-card:hover {
            transform: scale(1.05);
        }

        .certificate-card img {
            width: 100%;
            height: auto;
            border-radius: 5px;
            margin-bottom: 10px;
        }

        .certificate-card h5 {
            font-size: 1rem;
            color: #333;
            margin-bottom: 5px;
        }

        .certificate-card p {
            font-size: 0.875rem;
            color: #666;
            margin-bottom: 10px;
        }

        /* Responsif untuk layar kecil */
        @media (max-width: 768px) {
            .preview-inner {
                flex-direction: column;
            }
        }
    </style>
</head>
<body>
    <!-- Bagian preview utama sertifikat -->
    <div class="preview-container">
        <div class="preview-inner">
            <div class="preview-left">
                <img src="../../../images/13.jpg" alt="Template Sertifikat 13" class="preview-image">
            </div>
            <div class="preview-right">
                <h2>Putih dan Biru Modern Sertifikat Penghargaan Certificate </h2>
                <p>Gunakan templat sertifikat ini untuk menunjukkan kepada mereka yang berprestasi.</p>
                <form action="form.php" method="post">
                    <input type="hidden" name="template" value="template1.jpg">
                    <button type="submit" class="btn btn-primary">Gunakan Template Ini</button>
                </form>
            </div>
        </div>
    </div>

    <br>
    <br>

    <!-- Galeri sertifikat lainnya -->
    <center><h2 class="visme-grid__title">
        <span class="visme-grid__title-inner">lainnya</span>
    </h2></center>
    <div class="gallery-container">

    <div class="certificate-card">
            <a href="../templet-13/13.php">
                <img src="../../../images/13.jpg" alt="Sertifikat 13">
            <h5>Putih dan Biru Modern Sertifikat Penghargaan Certificate</h5>
            <br>
            <button  type="input" class="btn btn-primary">Gunakan Template Ini</button>
            </a>
        </div>

    <div class="certificate-card">
            <a href="../templet-12/12.php">
                <img src="../../../images/12.jpg" alt="Sertifikat 12">
            <h5>Merah Putih Ilustrasi Sertifikat Penghargaan Lomba 17 Agustus</h5>
            <br>
            <button  type="input" class="btn btn-primary">Gunakan Template Ini</button>
            </a>
        </div>

    <div class="certificate-card">
            <a href="../templet-11/11.php">
                <img src="../../../images/11.jpg" alt="Sertifikat 11">
            <h5>Ungu Kuning Modern Sertifikat Penghargaan Certificate Landscape</h5>
            <br>
            <button  type="input" class="btn btn-primary">Gunakan Template Ini</button>
            </a>
        </div>

    <div class="certificate-card">
            <a href="../templet-10/10.php">
                <img src="../../../images/10.jpg" alt="Sertifikat 10">
            <h5>Ungu Kuning Modern Sertifikat Penghargaan Certificate Landscape</h5>
            <br>
            <button  type="input" class="btn btn-primary">Gunakan Template Ini</button>
            </a>
        </div>
    
    <div class="certificate-card">
            <a href="../templet-9/9.php">
                <img src="../../../images/9.jpg" alt="Sertifikat 9">
            <h5>Piagam Penghargaan Workshop Certificate</h5>
            <br>
            <button  type="input" class="btn btn-primary">Gunakan Template Ini</button>
            </a>
        </div>

    <div class="certificate-card">
            <a href="../templet-8/8.php">
                <img src="../../../images/8.jpg" alt="Sertifikat 8">
            <h5>Sertifikat Penghargaan Lomba Karya Tulis Ilmiah</h5>
            <br>
            <button  type="input" class="btn btn-primary">Gunakan Template Ini</button>
            </a>
        </div>

        <div class="certificate-card">
            <a href="../templet-7/7.php">
                <img src="../../../images/7.jpg" alt="Sertifikat 7">
            <h5>Biru Emas Ornamen Klasik Sertifikat Penghargaan</h5>
            <br>
            <button  type="input" class="btn btn-primary">Gunakan Template Ini</button>
            </a>
        </div>

        <div class="certificate-card">
            <a href="../templet-6/6.php">
                <img src="../../../images/6.jpg" alt="Sertifikat 6">
            <h5>Biru Emas Modern Sertifikat Apresiasi</h5>
            <br>
            <button  type="input" class="btn btn-primary">Gunakan Template Ini</button>
            </a>
        </div>

        <div class="certificate-card">
            <a href="../templet-5/5.php">
                <img src="../../../images/5.jpg" alt="Sertifikat 5">
            <h5>Hijau Putih Ilustrasi Sertifikat Apresiasi</h5>
            <br>
            <button  type="input" class="btn btn-primary">Gunakan Template Ini</button>
            </a>
        </div>

         <div class="certificate-card">
            <a href="../templet-4/4.php">
                <img src="../../../images/4.jpg" alt="Sertifikat 4">
            <h5>Gold and Red Professional Minimalist Certificate of Participation Certificate A4</h5>
            <br>
            <button  type="input" class="btn btn-primary">Gunakan Template Ini</button>
            </a>
        </div>

        <div class="certificate-card">
            <a href="../templet-3/3.php">
                <img src="../../../images/3.jpg" alt="Sertifikat 3">
            <h5>Putih Biru Modern Abstrak Penghargaan Sertifikat</h5>
            <br>
            <button  type="input" class="btn btn-primary">Gunakan Template Ini</button>
            </a>
        </div>

        <div class="certificate-card">
            <a href="../templet-2/2.php">
                <img src="../../../images/2.jpg" alt="Sertifikat 2">
            <h5>Red and Gold Elegant Achievement Certificate</h5>
            <br>
            <button  type="input" class="btn btn-primary">Gunakan Template Ini</button>
            </a>
        </div>

        <div class="certificate-card">
            <a href="../templet-1/1.php">
                <img src="../../../images/1.jpg" alt="Sertifikat 1">
            <h5>Biru Emas Modern Peserta Seminar Sertifikat</h5>
            <br>
            <button type="submit" class="btn btn-primary">Gunakan Template Ini</button>
            </a>
        </div>

    </div>
</body>
</html>
