<?php
	session_start();
?>
<!DOCTYPE html>
<html>
<head>
	<title>CRUD</title>
</head>
<body>
	<h1>Create Product</h1>
	<form action="addproduct.php" method="post" enctype="multipart/form-data">
			<table>
				<tr>
					<td>Product Name</td>
					<td>:</td>
					<td><input type="text" name="name"></td>
				</tr>
				<tr>
					<td>Product Description</td>
					<td>:</td>
					<td><textarea name="description"></textarea></td>
				</tr>
				<tr>
					<td>Product Price</td>
					<td>:</td>
					<td><input type="number" name="price"></td>
				</tr>
				<tr>
					<td>Product Image</td>
					<td>:</td>
					<td><input type="file" name="image"></td>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td><button>Save Product</button></td>
				</tr>
			</table>
	</form>
	<?php
		if (isset($_SESSION["message"])) {
			echo $_SESSION["message"];
			unset($_SESSION["message"]);
			}
	?>
</body>
</html>