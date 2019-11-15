<?php
include 'connect.php';
// menyimpan data id kedalam variabel
$ID_Anggota   = $_GET['ID_Anggota'];
// query SQL untuk insert data
$query="DELETE from anggota where ID_Anggota='$ID_Anggota'";
mysqli_query($conn, $query);
header("location:Lihat_Anggota.php");
?>