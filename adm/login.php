<!DOCTYPE html>
<html>
<head>
	<title>Entrar - HomeWorld</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  	<link rel="stylesheet" type="text/css" href="../css/login.css">
  	<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
	<div class="box_center">
	<content id="topo">
		<a href="index.php"><img id="logo_icone" src="../img/favicon.png"></a>
		<a href="index.php" id="logo_text">HomeWorld</a>
	</content>
		<form action="logar.php" method="post">
		<input type="text" name="user">
		<input type="password" name="pass">
		<input type="submit" id="botão" value="Entrar">
	</form>
	</div>
</body>
</html>