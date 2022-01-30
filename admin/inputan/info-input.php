<?php
include "../../koneksi.php";

$query = mysqli_query($test, "SELECT max(id_pengiriman) as kodeTerbesar FROM info_pesanan");
$data = mysqli_fetch_array($query);
$kodeBarang = $data['kodeTerbesar'];
 
$urutan = (int) substr($kodeBarang, 4, 4);
 
$urutan++;
$huruf = "SHP";
$kodeBarang = $huruf . sprintf("%04s", $urutan);

$a = $kodeBarang;
$b= $_POST['jasa_kirim'];
$c= $_POST['resi'];
$d= $_POST['status'];
$e= $_POST['lokasi'];
$f= $_POST['pesanan'];

$tampilan = "insert into info_pesanan(id_pengiriman,jasa_kirim,No_Resi,status_pengiriman,lokasi,id_pesanan) 
            values ('$a','$b','$c','$d','$e','$f')";
$querycrud= mysqli_query($test, $tampilan);
if($querycrud){
    echo "<script language=javascript> window.alert('Insert Berhasil'); window.location='../pengiriman.php';</script>";    
}
else {
    echo "<script language=javascript> window.alert('Insert Gagal'); window.location='../pengiriman.php';</script>";
    }
?>
