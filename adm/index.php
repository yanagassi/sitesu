<?php
	require_once("../sistema/adm.class.php");
	$conexao = new conectar();
	$conn = $conexao->conecta();
	$index = new index_adm();
	$login = new login();
	$login->protege($conn);
    //$index->ultimoAcesso($conn);
?>
<!DOCTYPE html>
<html>
<head>
	<title>Area Administrativa</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="../css/pacote_um_stilo.css">
	<link rel="stylesheet" type="text/css" href="../css/pacote_index.css">
	<link rel="stylesheet" type="text/css" href="../css/pacote_adm_addep.css">
	<link rel="stylesheet" type="text/css" href="../css/pacote_adm_stilo.css">

	<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
<script type="text/javascript">
	function menuOn(){
		document.getElementById("menuCentro").style.display = "grid";
		document.getElementById("menu_icone").style.display = "none";
		document.getElementById("menu_icone2").style.display = "block";
	}
	function menuOf(){
		document.getElementById("menuCentro").style.display = "none";
		document.getElementById("menu_icone").style.display = "block";
		document.getElementById("menu_icone2").style.display = "none";
	}

</script>

<div class="topo">
<script type="text/javascript">
	function notificarErro(id){
		window.open("editar.php?id="+id, "_blank", "height=350, width=500, top=300, left=300");
	}
</script>
		<content id="block_logo">
			<a href="index.php"><img id="logo_icone" src="../img/favicon.png"></a>
			<a href="index.php" id="logo_text">HomeWorld</a>
			<a onclick="menuOn();"><img onclick="menuOn();" src="../img/menu_icon.png" id="menu_icone"></a>
			<a onclick="menuOf();"><img onclick="menuOf();" src="../img/menu_icon.png" id="menu_icone2"></a>
		</content>
		<boxin>
		 	<?php $index->visitasnumero($conn); $index->rankUser($conn); ?>
			<a class="item" href="adicionarepisodio.php" id="">Editar/Adicionar Episodios</a>
			<a class="item" href="logout.php">Sair</a>
		</boxin>
	</div>
	<div class="fanarts">
		<div class="div_aguard">
			<a href="" id="a_div_aguard">Aguardando Aprovação</a>
		</div>
		<?php $index->lista_fanarts_Adm($conn); ?>
	</div>
	<div class="tikets">
		<div class="div_aguard">
			<a href="" id="a_div_aguard">Solicitações de Erro</a>
		</div>
		<content id="todos_tiket">
			<?php $index->listaTiket($conn);?>
		</content>
	</div>
	<div style="position: absolute; bottom:0; left: 0; height: 30px; background:white; padding: 5px;">
		<a href="">Seu Utimo Acesso: <?php $index->UltimoAcessoAdm($conn); ?></a>
	</div>	
	<div  style="position: absolute; right: 0; top: 90px; background: white; width:250px; padding: 5px; text-align: right; border:thin solid" id="mobile_rank">
		<?php $index->rankAdmins($conn); ?>
	</div>
	<div class="menu_cel" id="menuCentro" style="">
		<a  href="adicionarepisodio.php" class="item" id="">Editar/Adicionar Episodios</a><br>
		<a  href="logout.php" class="item" >Sair</a>
	</div>
</body>
</html>