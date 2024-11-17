<?php
session_start(); // Pastikan session dimulai
require('../../../fpdf/fpdf.php');
require('../../../db.php');

// Cek apakah user sudah login dengan mengecek user_id
if (!isset($_SESSION['user_id'])) {
    echo "Harap login terlebih dahulu.";
    exit;
}

// Ambil user_id dari session
$user_id = $_SESSION['user_id'];

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $template = $_POST['template'];
    $cert_number = $_POST['cert_number']; // Ambil nomor sertifikat dari form
    $recipient_name = $_POST['recipient_name'];
    $event_description = $_POST['event_description'];
    $chairperson_name = $_POST['chairperson_name'];
    
    // Upload logo jika ada
    $logo_path = '';
    if (isset($_FILES['logo']) && $_FILES['logo']['error'] == 0) {
        $logo_path = '../../../uploads/' . basename($_FILES['logo']['name']);
        move_uploaded_file($_FILES['logo']['tmp_name'], $logo_path);
    }

    // Inisialisasi PDF
    $pdf = new FPDF('L', 'mm', 'A4');
    $pdf->AddPage();

    // Menampilkan template sertifikat
    $pdf->Image("../../../templates/$template", 0, 0, 297, 210);

    // Menambahkan Nomor Sertifikat
    $pdf->SetFont('Arial', 'B', 16);
    $pdf->SetXY(120, 35);  // Atur posisi nomor sertifikat
    $pdf->Cell(0, 10, ": " . $cert_number, 0, 1, 'L');

    // Menambahkan Nama Penerima
    $pdf->SetFont('Arial', 'B', 24);
    $pdf->SetXY(10, 80);
    $pdf->Cell(0, 10, $recipient_name, 0, 1, 'C');

    // Fungsi untuk memecah teks menjadi baris-baris
    function breakTextIntoParagraphs($pdf, $text, $maxLength = 60) {
        $lines = explode("\n", wordwrap($text, $maxLength, "\n"));
        foreach ($lines as $line) {
            $pdf->MultiCell(0, 10, $line, 0, 'C');
        }
    }

    // Menambahkan Deskripsi Kegiatan
    $pdf->SetFont('Arial', '', 16);
    $pdf->SetXY(10, 130);
    $pdf->MultiCell(0, 10, $event_description, 0, 'C');

    // Menambahkan Nama Ketua Panitia
    $pdf->SetFont('Arial', 'B', 16);
    $pdf->SetXY(10, 179);
    $pdf->Cell(0, 10, $chairperson_name, 0, 1, 'C');

    // Menampilkan logo jika ada
    if ($logo_path) {
        $pdf->Image($logo_path, 120, 1, 40);
    }

    // Simpan file PDF ke server
    $file_name = 'Sertifikat_' . $cert_number . '.pdf';
    $file_path = "../../../uploads/" . $file_name;
    $pdf->Output('F', $file_path);
    $pdf->Output('I', 'Sertifikat.pdf');

    // Simpan informasi sertifikat ke database
    $stmt = $conn->prepare("INSERT INTO certificates (user_id, cert_number, file_name, file_path, created_at) VALUES (?, ?, ?, ?, NOW())");
    $stmt->bind_param("isss", $user_id, $cert_number, $file_name, $file_path);
    $stmt->execute();

    // Langsung tampilkan sertifikat di browser
    header("Content-Type: application/pdf");
    header("Content-Disposition: inline; filename='$file_name'");
    readfile($file_path);
    exit;
}
?>
