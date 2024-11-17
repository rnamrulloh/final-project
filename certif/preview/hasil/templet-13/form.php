<?php include '../../../db.php'; ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Isi Detail Sertifikat</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f1f4f9;
            font-family: Arial, sans-serif;
        }
        .form-container {
            max-width: 600px;
            margin: 50px auto;
            padding: 40px;
            background: #ffffff;
            border-radius: 10px;
            box-shadow: 0px 4px 12px rgba(0, 0, 0, 0.1);
        }
        .form-header {
            text-align: center;
            margin-bottom: 20px;
        }
        .form-header h2 {
            font-weight: bold;
            color: #007bff;
        }
        .form-header p {
            color: #6c757d;
            font-size: 14px;
        }
        .form-group label {
            font-weight: 500;
            color: #495057;
        }
        .form-control {
            border-radius: 8px;
            padding: 10px;
        }
        .btn-primary {
            width: 100%;
            font-size: 18px;
            font-weight: bold;
            background-color: #007bff;
            border: none;
            border-radius: 8px;
            padding: 10px;
        }
        .btn-primary:hover {
            background-color: #0056b3;
        }
        .container p.text-muted {
            font-size: 14px;
            text-align: center;
        }
    </style>
</head>
<body>
    <div class="container form-container">
        <div class="form-header">
            <h2>Isi Detail Sertifikat</h2>
            <p class="text-muted">Lengkapi informasi berikut untuk membuat sertifikat</p>
        </div>
        <form action="generate.php" method="post">
            <div class="form-group">
                <label for="template">Template Sertifikat (jangan di ubah)</label>
                <input type="text" name="template" id="template" class="form-control" value="template13.jpg" required>
            </div>
          <!--  <div class="form-group">
                <label for="cert_number">Nomor Sertifikat:</label>
                <input type="text" name="cert_number" id="cert_number" class="form-control" required>
            </div> -->
            <div class="form-group">
                <label for="recipient_name">Nama Penerima:</label>
                <input type="text" name="recipient_name" id="recipient_name" class="form-control" required>
            </div>
            <div class="form-group">
                <label for="event_description">Deskripsi Kegiatan:</label>
                <textarea name="event_description" id="event_description" class="form-control" rows="3" required></textarea>
            </div>
            <div class="form-group">
                <label for="chairperson_name">Nama Ketua Panitia:</label>
                <textarea name="chairperson_name" id="chairperson_name" class="form-control" rows="2" required></textarea>
            </div>
            <button type="submit" class="btn btn-primary">Buat Sertifikat</button>
        </form>
    </div>
</body>
</html>
