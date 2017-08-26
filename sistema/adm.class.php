<?php

	class conectar
	{
		
		function conecta(){
			$user = 'root';
			$pass = 'vertrigo';
			$conn = new PDO('mysql:host=localhost;dbname=bunquer', $user, $pass);
			$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
			return $conn;
		}
	}

	/**
	* 
	*/

	class index_adm
	{
		
		function visitasnumero($conn)
		{
			$data = $conn->query('SELECT * FROM visita');
			foreach ($data as $row) {
				$numero = $row['numero'];
				echo "<a style='position:absolute; left:-70%;'>Numero de Visitas: $numero</a>";
			}
		}

		 function rankAdmins($conn)
		 {
		 	$user = $_SESSION['usuario'];
		 	$data = $conn->query("SELECT * FROM usuarios ORDER BY resolvido DESC");
		 	foreach ($data as $row) {
		 		$rank = $row['rank'];
		 		$name = $row['usuario'];
		 		$tiket = $row['resolvido'];
		 		if ($rank != 1) {
		 			echo "<a>$name | Tikets Resolvido: $tiket</a><br>";
		 		}
		 	}
		 }

		function rankUser($conn)
		{	
			$user = $_COOKIE['usuario'];
			if ($user == null) {
				header("Location: login.php");
			}
			$data = $conn->prepare('SELECT * FROM usuarios where usuario=:user');
			$data->bindParam(':user',$user,PDO::PARAM_STR);
			$data->execute();
			foreach ($data as $row) {
				$rank = $row['rank'];
				break;
			}
			if($rank == 1){
				echo('<a class="item" href="adicionarusuario.php">Adicionar Usuario</a>');
			}
		}

		function lista_fanarts_Adm($conn){
			$data = $conn->query('SELECT * FROM fanarts order by voto desc');
			foreach ($data as $row) {
				$nomeUser = $row['fanarts_username'];
				$desc = $row['fanarts_descricao'];
				$img = $row['fanarts_img'];
				$state = $row['state'];
				$voto = $row['voto'];
				$id = $row['id'];
				$desc = substr($desc, 0, 80);
				echo "<div class='total'>";
				if ($state == 0) {
					echo("<div id='block_fan_aprov'>");
					echo "<a href='apaga_fam.php?id=$id' id='fechar_x'>X</a>";
					echo("<img id='img_fan_apro' src='../banco_img/" .$img."'>");
					echo("<boxs class='items_aprov'> ");
					echo("<a>Titulo: $nomeUser</a>");
					echo("<br><a>Descrição: $desc ...</a><br>");
					echo("<br><a id='ap' href='aproved.php?id=$id'>Aprovar</a>");	
					echo("</boxs>");
					echo("<hr>");
					echo("</div>");
				}
				echo "</div>";
			}
		}

		function listaTiket($conn)
		{
			$data = $conn->query('SELECT * FROM tiket');
			foreach ($data as $row) {
				$nome = $row['nome_ep'];
				$numero = $row['numero_ep'];
				$desc = $row['descricao'];
				$id = $row['id_ep'];
				$id_db = $row['id'];
				echo "<content>";
				echo "<a id='tiketALista' onclick='notificarErro(".$id.")'>Nº $numero</a><br>";
				echo "<a id='tiketALista' onclick='notificarErro(".$id.")'>Nome: $nome</a><br>";
				echo "<a id='tiketALista' onclick='notificarErro(".$id.")'>Descrição: $desc</a><br>";
				echo "<a id='apagaALista' href='apagartiket.php?id=".$id_db."'>Marcar como Resolvido</a>";
				echo "<hr>";
				echo "</content>";
			}
		}

		function apagaTiket($conn){
			if (empty($_GET['id'])) {
				header("Location: index.php");
			}
			$id = $_GET['id'];
			$user = $_SESSION['usuario'];
			$data = $conn->prepare('DELETE FROM tiket where id = :id');
			$data->bindParam(':id',$id,PDO::PARAM_INT);
			$data->execute();
			$data = $conn->prepare("SELECT *FROM usuarios where usuario=:user");
			$data->bindParam(":user", $user, PDO::PARAM_STR);
			$data->execute();
			foreach ($data as $row) {
				$resolvido = $row['resolvido'];
				break; 
			}
			$resolvido = $resolvido + 1;
			$data = $conn->prepare("UPDATE usuarios SET resolvido=:valor where usuario=:user");
			$data->bindParam(':valor',$resolvido,PDO::PARAM_STR);
			$data->bindParam(':user',$user,PDO::PARAM_STR);
			$data->execute();
			header("Location: index.php");

		}

		function UltimoAcessoAdm($conn)
		{
			$user = $_SESSION['usuario'];
			$data= $conn->prepare("SELECT * FROM usuarios where usuario=:user");
			$data->bindParam(":user", $user, PDO::PARAM_STR);
			$data->execute();
			foreach ($data as $row) {
				$date = $row['data'];
				break;
			}
			echo "$date";
		}
	}

	/**
	* 
	*/

	class login
	{
		function ultimoAcesso($conn)
		{
			date_default_timezone_set('America/Sao_Paulo');
			$date = date('Y-m-d H:i');
			$user = $_SESSION['usuario'];
			$data = $conn->prepare("UPDATE usuarios SET data=? where usuario=?");
			$data->bindParam(1, $date, PDO::PARAM_STR);
			$data->bindParam(2, $user, PDO::PARAM_STR);
			$data->execute();
		}

		function logar($conn,$user,$pass)
		{
			$logon = new login();
			$data = $conn->prepare('SELECT * FROM usuarios WHERE usuario=:user');
			$data->bindParam(':user',$user,PDO::PARAM_STR);
			$data->execute();
			session_start();
			foreach ($data as $row) {
				$passDB = $row['senha'];
				break;
			}
			if (empty($passDB)){
				header("Location: login.php");  
				session_destroy();
			}
			if ($pass == $passDB) {
				$_SESSION['usuario'] = $user;
				$_SESSION['senha'] = $passDB;
				setcookie('usuario', $user);
				$logon -> ultimoAcesso($conn);
				header("Location: index.php");
			}else{
				session_destroy();
				header("Location: login.php");
			}
		}

		function protege($conn)
		{	
			session_start();
                        if (empty($_SESSION['usuario']) || empty($_SESSION['senha']) || empty($_COOKIE['usuario'])) {
				session_destroy();
				header("Location: login.php");
			}
			$userSS = $_SESSION['usuario'];
			$passSS = $_SESSION['senha'];
			$userCK = $_COOKIE['usuario'];
			if (empty($userSS) || empty($passSS) || empty($userCK)) {
				session_destroy();
				header("Location: login.php");
			}
			$data = $conn->prepare('SELECT * FROM usuarios WHERE usuario=:user');
			$data->bindParam(':user', $userSS, PDO::PARAM_STR);
			$data->execute();
			foreach ($data as $row) {
				$userDB = $row['usuario'];
				$passDB = $row['senha'];
				break;
			}
			if ($userDB == $userSS && $passDB == $passSS && $userCK == $userDB) {
			}else{header("Location: login.php");}
		}

		function sair()
		{	
			session_destroy();
			header("Location: login.php");
		}
	}

	/**
	* 
	*/
	class admin
	{
		
		function adicionarUser($conn)
		{
			$nome = $_POST['nome'];
			$rank = $_POST['rank'];
			$user = $_POST['usuario'];
			$senha = $_POST['senha'];
			$resolvido = '0';
			$foto = '';
			$token = '';
			$data = $conn->prepare("INSERT INTO usuarios (id, nome, rank, usuario, senha, token, resolvido, foto) values (null,:nome,:rank,:usuario,:senha,:token,:resolvido,:foto)") ;
			$data->bindParam(":nome", $nome,PDO::PARAM_STR);
			$data->bindParam(":rank", $rank, PDO::PARAM_STR);
			$data->bindParam(":usuario",$user,PDO::PARAM_STR);
			$data->bindParam(":senha",$senha,PDO::PARAM_STR);
			$data->bindParam(":resolvido",$resolvido,PDO::PARAM_STR);
			$data->bindParam(":token",$token,PDO::PARAM_STR);
			$data->bindParam(":foto",$foto,PDO::PARAM_STR);
			$data->execute();
			header("Location: adicionarusuario.php");
		}

		function GetRank($conn)
		{
			$user = $_SESSION['usuario'];
			$data = $conn->prepare("SELECT * FROM usuarios where usuario=:user");
			$data->bindParam(":user", $user, PDO::PARAM_STR);
			$data->execute();
			foreach ($data as $row) {
				$rank = $row['rank'];
				break;
			}
			return $rank;
		}

		function resolvido()
		{

		}
	}

	/**
	* 
	*/


	class adicionar_episodio
	{	
		function lista_eps_n($conn)
		{
			$data = $conn->query("SELECT * FROM epsodios order by numero desc");
			foreach ($data as $row) {
				$numero = $row['numero'];
				break;
			}
			$numero = $numero + 1;
			echo "$numero";
		}

		function lista_eps_nomes($conn)
		{
			$data = $conn->query("SELECT * FROM epsodios order by numero desc");
			foreach ($data as $row) {
				$id = $row['id'];
				$ep_nome = $row['nome_ep'];
				$numero = $row['numero'];
				if ($numero != 0 ) {
					echo ('<content class="content_ep">');
					echo("<a id='epsodios_nome'> $numero | "."$ep_nome"."</a>");
					echo("<box><a id='ed-ex' onclick='notificarErro(".$id.")'>Editar</a><a id='ed-ex' href='apagarep.php?id="."$id"."'> Excluir</a></box><br>");
					echo('</content>');
				}
			}
		}

		 function adicionarEpisodio($conn)
		 {
		 	$nome_ep = $_POST['nome_ep'];
			$local_ep = $_POST['local_ep'];
			$card_board = $_POST['card_board'];
			$numero = $_POST['numero'];
			$null =0;
			if(empty($nome_ep) || empty($local_ep) || empty($card_board) || empty($numero)){
				echo "<h1>Não deu</h1>";
				echo "<a href='adicionarepisodio.php'>Voltar</a>";
			}
		 	$data = $conn->prepare('INSERT INTO epsodios (nome_ep, local_ep, card_board, numero, assistido) values (:nome_ep, :local_ep, :card_board, :numero, :nulo)');
		 	$data->bindParam(':nome_ep',$nome_ep,PDO::PARAM_STR);
		 	$data->bindParam(':local_ep', $local_ep,PDO::PARAM_STR);
		 	$data->bindParam(':card_board', $card_board,PDO::PARAM_STR);
		 	$data->bindParam(':numero',$numero,PDO::PARAM_INT);
		 	$data->bindParam(':nulo',$null,PDO::PARAM_INT);
		 	$data->execute();
		 	header("Location: adicionarepisodio.php");

		 }

		 function apagar_ep($conn)
		 {
		 	$id = $_GET['id'];
		 	if (!empty($id)) {
		 		$data = $conn->prepare('DELETE FROM epsodios WHERE id = :id');
		 		$data->bindParam(':id',$id,PDO::PARAM_INT);
		 		$data->execute();
		 		header("Location: adicionarepisodio.php");
		 	}else{header("Location: adicionarepisodio.php");}
		 }
	}

	/**
	* 
	*/

	class fanarts 
	{
		
		function apagaFanart($conn)
		{
			if (!empty($_GET['id'])) {
				$id = $_GET['id'];
			}else{header("Location: index.php");}
			$data = $conn->prepare('DELETE FROM fanarts where id = :id');
			$data->bindParam(':id', $id, PDO::PARAM_INT);
			$data->execute();
			header('Location: index.php');
		}
	}
	function aprovaFan($conn,$id){
		$num = 1;
		$data = $conn->prepare('UPDATE fanarts set state=:num where id=:id');
		$data->bindParam(':num',$num,PDO::PARAM_INT);
		$data->bindParam(':id',$id,PDO::PARAM_INT);
		$data->execute();
		header("Location: fanarts.php");
	}

	/**
	* 
	*/

	class editarEpisodios
	{
		function pegaDados($conn,$value)
		{
			$id = $_GET['id'];
			$data = $conn->prepare('SELECT * FROM epsodios WHERE id=:id');
			$data->bindParam(':id', $id,PDO::PARAM_INT);
			$data->execute();
			foreach ($data as $row) {
				$dado = $row[$value];
				break;
			}
			echo "$dado";
		}
		function editarEp($conn)
		{
			$id = $_GET['id'];
			$nome = $_POST['nome_ep'];
			$link = $_POST['link_ep'];
			if (!empty($_POST['story_board'])) {
				$story = $_POST['story_board'];
			}else{$story = "";}
			$numero =  $_POST['numero_ep'];
			$data = $conn->prepare("SELECT * FROM epsodios where id=:id");
			$data->bindParam(":id",$id,PDO::PARAM_INT);
			$data->execute();

			foreach ($data as $row) {
				$assis = $row['assistido'];
				break;
			}

			$SQL = 'UPDATE epsodios SET id= ?, card_board = ?  , local_ep = ? , nome_ep= ?  , numero= ?  , assistido=? where id= ?';
			$dataS = $conn->prepare($SQL);
			$dataS->bindParam(1, $id);
			$dataS->bindParam(2 , $story);
			$dataS->bindParam(3, $link);
			$dataS->bindParam(4, $nome);
			$dataS->bindParam(5, $numero);
			$dataS->bindParam(6,$assis);
			$dataS->bindParam(7,$id);
			$dataS->execute();
			header("Location: editar.php?id=".$id);
		}
	}

?>