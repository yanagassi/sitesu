<?php 
	require_once('sistema/config.php');
	$DB = new DB;
	$conn = $DB -> a();
	$INDEX = new index();
	$episodio = new episodio();
?>
<!DOCTYPE html>
<html>
<head>
	<title>HomeWorld - Cartoons de qualidade !</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="css/pacote_um_stilo.css">
	<link rel="stylesheet" type="text/css" href="css/pacote_epsodio.css">
	<link rel="icon" href="img/favicon.png" type="image/x-icon"/>
	<link rel="shortcut icon" href="img/favicon.png" type="image/x-icon"/>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta charset="utf-8">
	<style type="text/css">body{background:url('../img/<?php $INDEX->random_bg();?>')no-repeat center top fixed; }</style>
</head>
<body>
	<!-- Inicio -->
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
			function notificarErro(){
				window.open("notificar.php?id=<?php echo $episodio ->pegaId(); ?>", "_blank", "height=350, width=500, top=300, left=300");
			}
		</script>
			<a href="index.php"><img id="logo_icone" src="img/favicon.png"></a>
			<a href="index.php" id="logo_text">HomeWorld</a>

			<a onclick="menuOn();"><img src="img/menu_icon.png" id="menu_icone"></a>
			<a onclick="menuOf();"><img src="img/menu_icon.png" id="menu_icone2"></a>
		</content>
		<content id="block_menu">
			<ul id="ul_menu">
				<li id="li_menu"><a href="index.php">Home</li>
				<li id="li_menu"><a href="episodios.php">Episodios</li>
				<li id="li_menu"><a href="fanarts.php">FanArts</li>
			</ul>
		</content>
	</div>
	<div class="centro">
		<?php $episodio -> getEpisodio($conn);?>
		<a id="avise" onclick="notificarErro();">Episodio está Offiline? Avise-nos !</a> 
	</div>
	</content>
	</div>
	<div id="menuCentro">
		<a id="itensMenuCel" href="index.php">Home</a>
		<a id="itensMenuCel" href="episodios.php">Episodios</a>
		<a id="itensMenuCel" href="fanarts.php">FanArts</a>
	</div>

</body>
</html>