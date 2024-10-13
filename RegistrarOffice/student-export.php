<?php

// Fetch student data
$sql = "SELECT * FROM students";
$result = $conn->query($sql);

// Include PHPSpreadsheet library
require 'vendor/autoload.php';

use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

// Create new spreadsheet object
$spreadsheet = new Spreadsheet();
$sheet = $spreadsheet->getActiveSheet();

// Set column headers
$sheet->setCellValue('A1', 'ID');
$sheet->setCellValue('B1', 'Name');
$sheet->setCellValue('C1', 'Email');

// Populate spreadsheet with data
$row = 2;
while($row_data = $result->fetch_assoc()) {
    $sheet->setCellValue('A' . $row, $row_data['id']);
    $sheet->setCellValue('B'
>