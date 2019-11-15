<?php
include 'connect.php';
// menyimpan data id kedalam variabel
$ID_Anggota   = $_GET['ID_Anggota'];
// query SQL untuk insert data
$query="DELETE from mengajukan where ID_Anggota='$ID_Anggota'";
mysqli_query($conn, $query);
// mengalihkan ke halaman index.php
header("location:Lihat_Pinjaman.php");
?>
