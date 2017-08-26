<?php 
	require_once("../sistema/adm.class.php");
	$conexao = new conectar();
	$conn = $conexao->conecta();
	$fanart = new fanarts();
	if (!empty($_GET['id'])) {
		$id= $_GET['id'];
	}	
	else{header("Location: index.php");}
	$num = 1;
	$data = $conn->prepare('UPDATE fanarts set state=:num where id=:id');
	$data->bindParam(':num',$num,PDO::PARAM_INT);
	$data->bindParam(':id',$id,PDO::PARAM_INT);
	$data->execute();
	header("Location: index.php");

?>