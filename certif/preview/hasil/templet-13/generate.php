<?php
require('../../../fpdf/fpdf.php');
require('../../../db.php');
session_start();

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $user_id = $_SESSION['user_id'];
    $template = $_POST['template'];
    $recipient_name = $_POST['recipient_name'];
    $event_description = $_POST['event_description'];
    $chairperson_name = $_POST['chairperson_name'];
    
    // Memproses logo jika ada
    $logo_path = '';
    if (isset($_FILES['logo']) && $_FILES['logo']['error'] == 0) {
        $logo_path = '../../../upload foto/' . basename($_FILES['logo']['name']);
        move_uploaded_file($_FILES['logo']['tmp_name'], $logo_path);
    }

    // Membuat objek FPDF
    $pdf = new FPDF('L', 'mm', 'A4');
    $pdf->AddPage();

    // Menggunakan gambar template
    $pdf->Image("../../../templates/$template", 0, 0, 297, 210);

    // Menambahkan teks ke sertifikat
    $pdf->SetFont('Arial', 'B', 24);
    $pdf->SetXY(10, 95);
    $pdf->Cell(0, 10, $recipient_name, 0, 1, 'C');

    $pdf->SetFont('Arial', '', 16);
    $pdf->SetXY(20, 120);
    $pdf->MultiCell(0, 10, $event_description, 0, 'C');

    $pdf->SetFont('Arial', 'B', 16);
    $pdf->SetXY(10, 170);
    $pdf->Cell(0, 10, $chairperson_name, 0, 1, 'C');

    // Menambahkan logo jika ada
    if ($logo_path) {
        $pdf->Image($logo_path, 120, 1, 40);
    }

    // Simpan sertifikat sebagai file PDF
    $file_name = "certificate_" . time() . ".pdf";
    $file_path = "../../../uploads/" . $file_name;
    $pdf->Output($file_path, 'F'); // Simpan ke file
    $pdf->Output('I', 'Sertifikat.pdf');

    // Simpan informasi sertifikat ke database
    $stmt = $conn->prepare("INSERT INTO certificates (user_id, file_name, file_path, created_at) VALUES (?, ?, ?, NOW())");
    $stmt->bind_param("iss", $user_id, $file_name, $file_path);
    $stmt->execute();

    // Tampilkan sertifikat langsung di browser
    header("Content-Type: application/pdf");
    header("Content-Disposition: inline; filename='$file_name'");
    readfile($file_path);
    exit;
}
?>
