<?php 
	require_once('sistema/config.php');
	$DB = new DB;
	$conn = $DB -> a();
	$fanart = new fanarts();
?>
<!DOCTYPE html>
<html>
<head>
	<title>Fanart criada por: <?php //$fanart->nomeAutor($conn); ?></title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="css/pacote_um_stilo.css">
	<link rel="stylesheet" type="text/css" href="css/pacote_epsodio.css">
	<link rel="icon" href="img/favicon.png" type="image/x-icon"/>
	<link rel="shortcut icon" href="img/favicon.png" type="image/x-icon"/>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" type="text/css" href="css/pacote_fanarts.css">
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
</head>
<body>
	<div class="menu">
		<content id="block_logo">	
		<script type="text/javascript">
			function menuOn(){
				document.getElementById("menuCentro").style.display = "block";
				document.getElementById("menu_icone").style.display = "none";
				document.getElementById("menu_icone2").style.display = "block";
			}
			function menuOf(){
				document.getElementById("menuCentro").style.display = "none";
				document.getElementById("menu_icone").style.display = "block";
				document.getElementById("menu_icone2").style.display = "none";
			}
		</script>
			<a href="index.php"><img id="logo_icone" src="img/favicon.png"></a>
			<a href="index.php" id="logo_text">HomeWorld</a>

			<a onclick="menuOn();"><img src="img/menu_icon.png" id="menu_icone"></a>
			<a onclick="menuOf();"><img src="img/menu_icon.png" id="menu_icone2"></a>
		</content>
		<div class="centro_A" style="overflow-y: hidden;">
			<?php 	$fanart->chamaFanart($conn); ?>
			<div class="comentario">
			<?php $fanart->pegaComentario($conn);?>
			</div>
			<div class="total">
				<form action="addcomentario.php?id=<?php echo $_GET['id']; ?>" method="POST">
				<input type="text"  required="" id="nome" placeholder="Seu Nome"  name="name">
				<input type="text" id="text_Area" required=""  placeholder="Deixe seu comentario" name="comment">
				<input type="submit" style="display: none;" name="">
				</form>\
			</div>
		</div>
		<content id="block_menu">
			<ul id="ul_menu">
				<li id="li_menu"><a href="index.php">Home</li>
				<li id="li_menu"><a href="episodios.php">Episodios</li>
				<li id="li_menu"><a href="fanarts.php">FanArts</li>
			</ul>
		</content>
	</div>
<div id="menuCentro">
		<a id="itensMenuCel" href="index.php">Home</a>
		<a id="itensMenuCel" href="episodios.php">Episodios</a>
		<a id="itensMenuCel" href="fanarts.php">FanArts</a>
	</div>
</body>
</html>