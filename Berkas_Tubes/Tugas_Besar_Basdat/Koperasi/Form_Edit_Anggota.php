<?php
	include "connect.php";
	$ID_Anggota = $_GET['ID_Anggota'];
	$query = mysqli_query($conn,"SELECT * FROM anggota WHERE ID_Anggota='$ID_Anggota'");
	$data=mysqli_fetch_assoc($query);
	
	?>
<!doctype html>
<html>

	<head>
	<link rel="stylesheet" type="text/css" href="css/parts.css">
	<title>Edit Anggota</title>
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
		<h1>Edit Anggota</h1>
		<form action="Edit_Anggota.php" method="Post">
		Nama Lengkap:
		</br>
		<input type="hidden" name="ID_Anggota"  value="<?php echo $data['ID_Anggota'];?>" />
		<input type="text" name="nama" value="<?php echo $data['Nama_Anggota'];?>"/>
		</br> Alamat:
		</br>
		<input type="text" name="alamat" value="<?php echo $data['Alamat'];?>" />
		</br> Tanggal Lahir (TTTT-BB-HH):
		</br>
		<input type="text" name="TTL" value="<?php echo $data['Tanggal_Lahir'];?>" />
		</br> No. Telepon:
		</br>
		<input type="text" name="no_tlp" value="<?php echo $data['No_Telpon'];?>"/>
		</br> Jenis Kelamin (L/P):
		</br>
		<input type="text" name="jk" value="<?php echo $data['Jenis_Kelamin'];?>" />
		</br>
		<input type="submit" value="simpan" />
		<a href="Lihat_Anggota.php">Kembali</a>
		</br>
		</div>
		</div>
		<div id="bawah">
		Credits by : kelompok TUBES
		</div>
	</body>
</html>