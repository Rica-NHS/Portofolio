<?php
	?>
<!doctype html>
<html>

	<head>
	<link rel="stylesheet" type="text/css" href="css/parts.css">
	<title>Tambah Data Peminjaman</title>
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
		<form action="Input_Peminjaman.php" method="Post">
		</br> ID Anggota (<a href="Lihat_Anggota.php">Cek Anggota</a>):
		</br>
		<input type="text" name="ID_anggota" />
		</br> Jumlah yang akan dipinjam :
		</br>
		<select name="jumlah_pinjam">
			<option value="1">Rp 500.000,- (2 bln)</option>
			<option value="2">Rp 500.000,- (4 bln)</option>
			<option value="3">Rp 500.000,- (6 bln)</option>
			<option value="4">Rp 1.000.000,- (2 bln)</option>
			<option value="5">Rp 1.000.000,- (4 bln)</option>
			<option value="6">Rp 1.000.000,- (6 bln)</option>
			<option value="7">Rp 2.000.000,- (2 bln)</option>
			<option value="8">Rp 2.000.000,- (4 bln)</option>
			<option value="9">Rp 2.000.000,- (6 bln)</option>
			<option value="10">Rp 3.000.000,- (2 bln)</option>
			<option value="11">Rp 3.000.000,- (4 bln)</option>
			<option value="12">Rp 3.000.000,- (6 bln)</option>
			<option value="13">Rp 4.000.000,- (2 bln)</option>
			<option value="14">Rp 4.000.000,- (4 bln)</option>
			<option value="15">Rp 4.000.000,- (6 bln)</option>
			<option value="16">Rp 5.000.000,- (2 bln)</option>
			<option value="17">Rp 5.000.000,- (4 bln)</option>
			<option value="18">Rp 5.000.000,- (6 bln)</option>
		</select>
		</br> Tanggal Pengajuan (TTTT-BB-HH):
		</br>
		<input type="text" name="waktu_pengajuan" />
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