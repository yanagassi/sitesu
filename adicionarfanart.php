<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
	<form action="./addfanart.php" method="post" enctype="multipart/form-data" name="cadastro" >
	 	<label id="labelTit">Seu Nome: </label><input type="text" name="nome" id="nome"><br>
	 	<label id="labelPost">Descrição:</label> <textarea name="descricao" id="descricao"></textarea><br>
	 	<input type="file" id="foto" name="foto"/>
 	 	<input type="submit" id="cadastrar" name="cadastrar" value="Cadastrar" />
	</form>
</body>
</html>