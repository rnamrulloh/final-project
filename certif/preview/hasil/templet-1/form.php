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
        }
        .form-container {
            max-width: 600px;
            margin: 50px auto;
            padding: 30px;
            background: #ffffff;
            border-radius: 10px;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
        }
        .form-header {
            text-align: center;
            margin-bottom: 20px;
        }
        .form-header h2 {
            font-weight: bold;
            color: #007bff;
        }
        .form-group label {
            font-weight: 500;
            color: #495057;
        }
        .btn-primary {
            width: 100%;
            font-size: 18px;
            font-weight: bold;
            background-color: #007bff;
            border: none;
            border-radius: 8px;
        }
        .btn-primary:hover {
            background-color: #0056b3;
        }
        .container p.text-muted {
            font-size: 14px;
            margin-top: -10px;
            text-align: center;
        }
    </style>
</head>
<body>
    <div class="container form-container">
        <div class="form-header">
            <h2>Isi Detail Sertifikat</h2>
            <p class="text-muted">Lengkapi informasi berikut untuk membuat sertifikat</p>
            <p class="text-muted"><a href="1.php">1</a></p>
        </div>
        <form action="generate.php" method="post">
            <input type="hidden" name="template" value="<?php echo $_POST['template']; ?>">
            <input type="hidden" name="user_id" value="<?php echo $_SESSION['user_id']; ?>">

            <div class="form-group">
                <label for="cert_number">Nomor Sertifikat</label>
                <input type="text" name="cert_number" id="cert_number" class="form-control" placeholder="Masukkan Nomor Sertifikat" required>
            </div>
            <div class="form-group">
                <label for="recipient_name">Nama Penerima</label>
                <input type="text" name="recipient_name" id="recipient_name" class="form-control" placeholder="Masukkan Nama Penerima" required>
            </div>
            <div class="form-group">
                <label for="event_description">Deskripsi Kegiatan</label>
                <textarea name="event_description" id="event_description" class="form-control" placeholder="Masukkan Deskripsi Kegiatan" rows="3" required></textarea>
            </div>
            <div class="form-group">
                <label for="chairperson_name">Nama Ketua Panitia</label>
                <textarea name="chairperson_name" id="chairperson_name" class="form-control" placeholder="Masukkan Nama Ketua Panitia" rows="2" required></textarea>
            </div>
            <button type="submit" class="btn btn-primary">Buat Sertifikat</button>
        </form>
    </div>
</body>
</html>
