<?php
session_start();
if(!isset($_SESSION['username'])){
    die("Oops Anda belum login");
}

if($_SESSION['level']!="admin"){
  header('location:manager.php');

}else{
  $username = $_SESSION['username']; 
  $level=$_SESSION['level'];
}
?>
<body>
  <title>Admin</title>
<div align='center'>
  <h1 style="text-align: center; font-family: sans-serif; color: blue;">Selamat Datang <?php echo $level;?> <b><?php echo $username;?></b>
</div></h1> 
</head>
<body>
  <h1>SINUS A STORE</h1>
  <a href="home.php"><button>Home</button></a>
  <a href="insert.php"><button>Insert</button></a>
  <a href="view.php"><button>View</button></a>
  <a href="logout.php"><button>Logout</button></a>

  <?php
    include 'connect.php';
    $getProduct = $connection ->query("SELECT * FROM product");
    while ($fetchProduct = $getProduct ->fetch_assoc()) { 
  ?>

  <?php
    }
  ?>
</body>
