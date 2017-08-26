<?php 
	require_once('sistema/config.php');
	$DB = new DB;
	$conn = $DB -> a();
	$INDEX = new index();
	
?>
<!DOCTYPE html>
<html>
<head>
	<title>HomeWorld - Cartoons de qualidade !</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 	 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="css/pacote_um_stilo.css">
	<link rel="stylesheet" type="text/css" href="css/pacote_index.css">
	<link rel="icon" href="img/favicon.png" type="image/x-icon"/>
	<link rel="shortcut icon" href="img/favicon.png" type="image/x-icon"/>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<meta charset="utf-8">
	<style type="text/css">body{background:url('../img/<?php $INDEX -> random_bg();?>')no-repeat center top fixed; }</style>
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
		</content>
					<a onclick="menuOn();"><img onclick="menuOn();" src="img/menu_icon.png" id="menu_icone"></a>
			<a onclick="menuOf();"><img onclick="menuOf();" src="img/menu_icon.png" id="menu_icone2"></a>
		<content id="block_menu">
			<ul id="ul_menu">
				<li class="li_menu2" id="li_menu"><a href="episodios.php">Episodios</a></li>
				<li id="li_menu"><a href="fanarts.php">FanArts</a></li>
			</ul>
		</content>
	</div>

	<div id="all" class="centro">
	<br>
		<?php $INDEX ->  Lista($conn);?>
	</content>
	</div>
	<div  class="direita_topo">
		  <h2><a>Top 5 mais assistidos:</a></h2>
			<hr>
				<?php $INDEX -> rank_episodios($conn);  $INDEX -> visitar($conn);?>
		  </div>
	</div>
	<div class="direita_bottom">
	<center>
	</div>

	<div id="menuCentro">
		<a id="itensMenuCel" href="index.php">Home</a>
		<a id="itensMenuCel" href="episodios.php">Episodios</a>
		<a id="itensMenuCel" href="fanarts.php">FanArts</a>
	</div>
</body>
</html>