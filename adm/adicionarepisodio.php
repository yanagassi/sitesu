<?php  
	require_once("../sistema/adm.class.php");
	$conexao = new conectar();
	$conn = $conexao->conecta();
	$login = new login();
	$login->protege($conn);
	$addep = new adicionar_episodio();
?>
<!DOCTYPE html>
<html>
<head>
	<title>Adicionar Episodios</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="../css/pacote_adm_stilo.css">
	<link rel="stylesheet" type="text/css" href="../css/pacote_adm_addep.css">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
<script type="text/javascript">
	function notificarErro(id){
		window.open("editar.php?id="+id, "_blank", "height=350, width=500, top=300, left=300");
	}
</script>
	<div class="topo">
		<content id="block_logo">
			<a href="index.php"><img id="logo_icone" src="../img/favicon.png"></a>
			<a href="index.php" id="logo_text">HomeWorld</a>
			
		</content>
		<a id="voltar" href="index.php">Voltar</a>
	</div>
	<div class="formulario">
		<form action="addep.php" method="post">
			<content id="inputs"><a id="nomes">Nome do Episodio:</a><input type="text" value="Steven Universe:  S03E0" name="nome_ep" required=""></content><br>
			<content id="inputs"><a id="nomes">Link do Esisodio:</a><input type="text" name="local_ep" required=""></content><br>
			<content id="inputs"><a id="nomes">Link do Story Board:</a><input type="text" name="card_board"></content><br>
			<content id="inputs"><a id="nomes">Numero do Episodio:</a><input type="text" name="numero" value="<?php $addep->lista_eps_n($conn); ?>"></content><br>
			<button class="posi" type="submit" value="enviar" name="">Enviar</button>
		</form>
	</div>
	<div class="lista">
		<?php $addep->lista_eps_nomes($conn);?>
	</div>
</body>
</html>