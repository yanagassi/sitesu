<?php
	require_once("../sistema/adm.class.php");
	$conexao = new conectar();
	$conn = $conexao->conecta();
	$index = new index_adm();
	$login = new login();
	$login->protege($conn);
	$page = new editarEpisodios();
    $id = $_GET['id'];
?>
<!DOCTYPE html>
<html>
<head>
	<title>Editar Pagina</title>
</head>
<body>
	<form method="post" action="editarepp.php?id=<?php echo $id; ?>">
		<a>Nome: </a><input type="text" name="nome_ep" value="<?php $value = 'nome_ep';          $page->pegaDados($conn,$value); ?>"><br>
		<a>Link: </a><input type="text" name="link_ep" value="<?php $value = 'local_ep';         $page->pegaDados($conn,$value); ?>"><br>
		<a>Story: </a><input type="text" name="story_board" value="<?php $value = 'card_board';  $page->pegaDados($conn,$value); ?>"><br>
		<a>Numero:</a><input type="text" name="numero_ep" value="<?php $value = 'numero';        $page->pegaDados($conn,$value); ?>"><br>
		<input type="submit" value="Enviar"><br>
	</form>
</body>
</html>