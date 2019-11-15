<?php
	?>
<!doctype html>
<html>

	<head>
	<link rel="stylesheet" type="text/css" href="css/parts.css">
	<title>Tambah Data Simpanan</title>
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
		<form action="Input_Simpanan.php" method="Post">
		</br> ID Anggota (<a href="Lihat_Anggota.php">Cek Anggota</a>): 
		</br>
		<input type="text" name="ID_anggota" />
		</br> Jumlah yang akan disimpan:
		</br>
		<select name="jumlah_simpan">
			<option value="1">Rp 120.000,- (Wajib/Thn)</option>
			<option value="2">Rp 10.000,- (Wajib/Bln)</option>
			<option value="3">Rp 212.000,- (Pokok(1x))</option>
		</select>
		</br> Tanggal Simpan (TTTT-BB-HH):
		</br>
		<input type="text" name="waktu_simpan" />
		</br>
		<input type="submit" value="simpan" />
		</br>
		</div>
		</div>
		<div id="bawah">
		Credits By : Kelompok TUBES
		</div>
	</body>
</html>