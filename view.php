<html>
<body>
  <title>View</title>
<body>
  <h1>SINUS A STORE</h1>
  <a href="home.php"><button>Home</button></a>
  <a href="insert.php"><button>Insert</button></a>
  <a href="view.php"><button>View</button></a>
  <a href="logout.php"><button>Logout</button></a>
  <br><br><br><br><br>

  <?php
    include 'connect.php';
    $getProduct = $connection ->query("SELECT * FROM product");
    while ($fetchProduct = $getProduct ->fetch_assoc()) { 
  ?>

  <table style="display:inline-table;width:200px">
    <tr>
      <td><img src="<?=$fetchProduct['image']?>" width="200" height="150"></td>
    </tr>
    <tr>
      <td>
        <strong><?=$fetchProduct["name"]?></strong><br>
        RP. <?=number_format($fetchProduct["price"])?>
        <br>
        <br>
        <?=$fetchProduct["description"]?>

      </td>
    </tr>
    <tr>
      <td>
        <a href="update.php?id=<?=$fetchProduct["id"]?>"><button>Update</button></a>
        <a href="delete.php?id=<?=$fetchProduct["id"]?>"><button>Delete</button></a>
      </td>
    </tr>
  </table>

  <?php
    }
  ?>
</body>
</html>
