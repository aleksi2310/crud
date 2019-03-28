<?php
session_start();
//cek apakah user sudah login
if(!isset($_SESSION['username'])){
    die("Oops Anda belum login");//jika belum login jangan lanjut
}
//cek level user
if($_SESSION['level']!="manager"){
	header('location:admin.php');

}else{
	$username = $_SESSION['username']; 
	$level=$_SESSION['level'];
}
?>
<body style="background: url(casper1.jpg);">
	<title>index</title>
<div align='center'>
  <h1 style="text-align: center; font-family: sans-serif; color: blue;">Selamat Datang <?php echo $level;?> <b><?php echo $username;?></b> <a href="logout.php"><b>Logout</b></a>
</div></h1> 


</body>
