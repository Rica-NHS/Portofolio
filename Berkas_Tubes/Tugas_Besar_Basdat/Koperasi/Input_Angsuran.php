<?php
include "connect.php";
//menyimpan data kedalam variabel
$ID_Pengajuan	 =$_POST["ID_pengajuan"];
$Jumlah_Angsuran  =$_POST["jumlah_angsuran"];
$TGL_Angsuran	 =$_POST["waktu_angsuran"];
//untuk insert data
$query= "Insert into angsuran (ID_Angsuran,ID_Pengajuan,Jumlah_Angsuran,Tanggal_Angsuran) values('','$ID_Pengajuan','$Jumlah_Angsuran','$TGL_Angsuran')";
mysqli_query($conn,$query);
//echo "data tersimpan"

//mengalihkan ke view
//header("location:");
?>
<!doctype html>
<html>

	<head>
	<link rel="stylesheet" type="text/css" href="css/parts.css">
	<title>Tambah Data Angsuran</title>
	</head>
	
	<body style="background:#AF01FF">
		<div id="atas">
		<div id="atas_kiri">
		<img src="img/logo.jpg" width="100" height="100" alt="gambar"/>
		</div>
		<div id="atas_kanan"> 
		</br>
		</br>KOPERASI SYARIAH
		</div>
		
		</div>
		<div id="tengah">
		<div id="tengah_kiri">
		</br>
		<div class="menu-header">Lihat Data</div>
			<ul>
				<li><a href="Lihat_Anggota.php">Lihat Anggota</a></li>
				<li><a href="Lihat_Pengurus.php">Lihat Pengurus</a></li>
				<li><a href="Lihat_Peminjaman.php">Lihat Peminjaman</a></li>
				<li><a href="Lihat_Simpan.php">Lihat Simpan</a></li>
				<li><a href="Lihat_Angsuran.php">Lihat Angsuran</a></li>
				<li><a href="Lihat_List_Status_Peminjaman.php">Lihat List Status Peminjaman</a></li>
			</ul>
			<div class="menu-header">Tambah Data</div>
			<ul>
				<li><a href="Form_Anggota.php">Tambah Anggota</a></li>
				<li><a href="Form_Peminjaman.php">Tambah Peminjaman</a></li>
				<li><a href="Form_Simpanan.php">Tambah Simpanan</a></li>
				<li><a href="Form_Angsuran.php">Tambah Angsuran</a></li>
				<li><a href="Form_Persetujuan_Peminjaman.php">Persetujuan Peminjaman</a></li>
			</ul>
			<div class="menu-header"><a href="logout.php">Logout</a></div>
		</div>
		<div id="tengah_kanan">
		</br>
		<b>DATA TERSIMPAN</b>
		</div>
		</div>
		<div id="bawah">
		Credits by : kelompok TUBES
		</div>
	</body>
</html>