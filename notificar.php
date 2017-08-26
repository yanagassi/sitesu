<?php
	require_once('sistema/config.php');
	$episodio = new episodio();
?>
<!DOCTYPE html>
<html>
<head>
	<title>Notificar</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="css/notifica.css">
</head>
<body>
	<div>
		<a id="tit">Episodio fora do ar ? Diga-nos o que esta acontecendo!</a>
		<form method="post" name='form' id='form' action="report.php?id=<?php $episodio -> pegaId();?>">
			<content id="content_desc">
				<a id="desc">Descrição: </a><textarea  name="descricao" >Episodio fora do ar !!! Corrigir por favor !!!</textarea><br>
				<input type="submit" value="Enviar" id="botao" name="">
			</content>
		</form>
	</div>
</body>
</html>