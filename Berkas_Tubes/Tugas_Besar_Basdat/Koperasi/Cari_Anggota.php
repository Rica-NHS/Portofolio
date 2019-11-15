<?php
include "connect.php";
	?>
<!doctype html>
<html>

	<head>
	<link rel="stylesheet" type="text/css" href="css/parts.css">
	<title>Lihat Anggota</title>
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
		<div id="tengah_kanan">\
		</br>
				Hasil
		</br>
		<table border='1' width='900'>
		<tr>
			<th>No</th>
			<th>ID</th>
			<th>Nama Anggota</th>
			<th>Tanggal Lahir</th>
			<th>Jenis Kelamin</th>
			<th>Alamat</th>
			<th>No. Telepon</th>
			
		</tr>
		
		<?php
		//untuk menampilkan data
		$Nama=$_POST['Cari_Anggota'];
		$query="SELECT * FROM anggota WHERE Nama_Anggota='$Nama'";
		$sql= mysqli_query($conn,$query);
		echo "
			<tr>
			<td>".$data[ID_Anggota]."</td>
			<td>".$data[Nama_Anggota]."</td>
			<td>".$data[Tanggal_Lahir]."</td>
			<td>".$data[Jenis_Kelamin]."</td>
			<td>".$data[Alamat]."</td>
			<td>".$data[No_Telpon]."</td>
			</tr>";
		echo '</table>'
		?>
		</div>
		</div>
		<!--<div id="bawah">
		Credits By : Kelompok TUBES
		</div>-->
	</body>
</html>