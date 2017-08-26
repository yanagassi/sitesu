<?php

	class DB 
	{
		function a()
		{
			$user = 'id2465923_root';
			$pass = 'Kjkszpj98';
			$conn = new PDO('mysql:host=localhost;dbname=id2465923_home', $user, $pass);
			$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
			return $conn;
		}
	}
	class index
	{

		function Lista($conn)
		{
			$data = $conn->query('SELECT * FROM epsodios ORDER BY numero DESC');
			$count = 0;
			foreach($data as $row) {
				$id = $row['id'];
				$nome_ep = $row['nome_ep'];
				$story_board = $row['card_board']; 
				echo('<content id="block_ep">');
				echo('<a id="title_story" href="episodio.php?id='."$id".'">'."$nome_ep".'</a><br>');
				if ($story_board != "" || $story_board != null) {
					echo('<a href="episodio.php?id='."$id".'"> <img id="story_board" src="'."$story_board".'"> </a>');
				}
				echo("</content>");
				echo("<hr>");
				if ($count == 10) {
					break;
				}
				$count++;	
			}
		}

		function rank_episodios($conn)
		{
			$data = $conn-> query('SELECT * FROM epsodios ORDER BY assistido desc');
			$count = 0;
			foreach($data as $row) {
				if($count == 5){break;}
				$id = $row['id'];
				$nome_ep = $row['nome_ep'];
				echo "<a href='episodio.php?id=$id'>$nome_ep </a><br>";
				$count ++;
			}
		}

		function visitar($conn)
		{
			$data = $conn -> query('SELECT *FROM visita');
			foreach($data as $row){
				$num = $row['numero'];
				break;
			}
			$num = $num + 1;
			$data = $conn->prepare('UPDATE visita set numero=:num');
			$data->bindParam(':num', $num, PDO::PARAM_INT);
			$data->execute();
		}

		function random_bg()
		{
			$rand =rand(1,3);
			if ($rand == 1) {
				echo ("bg_1.png");
			}
			elseif ($rand == 2) {
				echo ("bg_2.png");
			}
			elseif ($rand == 3) {
				echo ("bg_3.jpg");
			}
		}
	}


	class episodios
	{
		function listar_episodios($conn){
			$data = $conn->query('SELECT * FROM epsodios ORDER BY numero');
			foreach ($data as $row) {
				$id = $row['id'];
				$numero = $row['numero'];
				$ep_nome = $row['nome_ep'];
				if($numero != 0){
					echo ('<content class="content_ep">');
					echo("<a  id='epsodios_nome' href='episodio.php?id="."$id"."'> $numero | "."$ep_nome"."</a><br>");
					echo('</content>');
					echo "<hr>";
				}
			}
		}
	}

	class episodio
	{
		function getEpisodio($conn){
			$id = $_GET['id'];
			if($id == null){ header("Location: index.php");}
			$data = $conn->prepare('SELECT *FROM epsodios where id=:id');
			$data->bindParam(':id',$id,PDO::PARAM_INT);
			$data->execute();
			foreach ($data as $row) {
				$ep_nome = $row['nome_ep'];
				$local_ep = $row['local_ep'];
				echo('<content><a id="name_ep">'."$ep_nome".'</a><hr>');
				echo('<div class="div_ep">');
				echo('<iframe class="ep" src="'.$local_ep.'/preview"></iframe>');
				break;
			}
		}

		function pegaId(){
			$id = $_GET['id'];
			echo "$id";
		}
	}

	class tiket
	{
		function enviar($conn){
			$id =$_GET['id'];
			$desc = $_POST['descricao'];
			$data = $conn->prepare('SELECT * FROM epsodios where id=:id');
			$data->bindParam(':id',$id,PDO::PARAM_INT);
			$data->execute();
			foreach ($data as $row) {
				$nome_ep = $row['nome_ep'];
				$id_ep = $row['id'];
				$numero_ep = $row['numero'];
				break;
			}

			$data = $conn->prepare("INSERT INTO tiket (id, id_ep, descricao, nome_ep, numero_ep) VALUES (NULL, :id, :descricao, :nome_ep, :numero_ep)");
			$data->bindParam(':id',$id,PDO::PARAM_INT);
			$data->bindParam(':descricao',$desc,PDO::PARAM_STR);
			$data->bindParam(':nome_ep',$nome_ep,PDO::PARAM_STR);
			$data->bindParam('numero_ep',$numero_ep,PDO::PARAM_INT);
			$data->execute();
		}
	}
	/**
	* 
	*/
	class adminVer
	{
		function verifica($conn)
			{
				error_reporting(E_ALL ^ E_NOTICE ^E_WARNING);
				session_start();
				if (empty($_SESSION['usuario'] || empty($_SESSION['senha']))) {
					session_destroy();
				}
				if (!empty($_SESSION['usuario'] && !empty($_SESSION['senha']))) {
					$user = $_SESSION['usuario'];
					$pass = $_SESSION['senha'];
					$data = $conn->prepare("SELECT * FROM usuarios WHERE usuario=:user");
					$data->bindParam(":user", $user, PDO::PARAM_STR);
					$data->execute();
					foreach ($data as $row) {
						$useDB = $row['usuario'];
						$passDB = $row['senha'];
						break;
					}
					if ($user == $useDB && $pass == $passDB) {
						return TRUE;
					}
					else{
						session_destroy();
						return FALSE;
					}
			}
		}
	}

	class fanarts
	{
		function adicionar_fanart($conn){
			$nome = $_POST['nome'];
			$descricao  = $_POST['descricao'];
 			$foto = $_FILES['foto'];
 			$state = '0';
 			if ($nome == null|| $descricao == null || $foto == null) {header("Location: fanarts.php");}
			preg_match("/\.(png|jpg|jpeg){1}$/i", $foto["name"], $ext);
       		$nome_imagem = md5(uniqid(time())) . "." . $ext[1];
        	$caminho_imagem = "banco_img/" . $nome_imagem;
			move_uploaded_file($foto["tmp_name"], $caminho_imagem);
				$data =  $conn->prepare('INSERT INTO fanarts (fanarts_username, fanarts_descricao, fanarts_img, voto, state, comentarios) VALUES  (:nome, :descricao,:nome_imagem,:voto,:state, 0)');
				$data->bindParam(':nome',$nome,PDO::PARAM_STR);
				$data->bindParam(':descricao',$descricao,PDO::PARAM_STR);
				$data->bindParam(':nome_imagem',$nome_imagem,PDO::PARAM_STR);
				$data->bindParam(':voto',$state,PDO::PARAM_STR);
				$data->bindParam(':state',$state,PDO::PARAM_INT);
				$data->execute();
		}
		function apagaADM($conn, $id)
			{
				error_reporting(E_ALL ^E_NOTICE);
				$page = new adminVer();
				if ($page->verifica($conn)) {
					session_start();
				}
				if (!empty($_SESSION['usuario']) && !empty($_SESSION['senha'])) {
					$user = $_SESSION['usuario'];
					$pass = $_SESSION['senha'];
					$data = $conn->prepare("SELECT * FROM usuarios WHERE usuario=:user");
					$data->bindParam(":user", $user, PDO::PARAM_STR);
					$data->execute();
					foreach ($data as $row) {
						$useDB = $row['usuario'];
						$passDB = $row['senha'];
					break;
				}
					if ($user == $useDB && $pass == $passDB) {
						echo "<a id='x_fanart' href='apagarfanart.php?id=".$id."'>X</a>";
					}
				}
			}
			
		function lista_fanart($conn){
			$page = new fanarts();
			$data = $conn->query('SELECT * FROM fanarts ORDER by id DESC');
			foreach ($data as $row) {
				$img =$row['fanarts_img'];
				$nomeUser = $row['fanarts_username'];
				$desc = $row['fanarts_descricao'];
				$voto = $row['voto'];
				$state = $row['state'];
				$id = $row['id'];
				$desc = substr($desc, 0, 200);
				if ($state != 0 ) {
					echo "<div class='box'>";
					echo("<a  href='fanart.php?id=$id'><img id='img_fan' src='banco_img/" .$img."'></a><br>");
					//echo "<hr>";
					echo("<a id=feito_por href='fanart.php?id=$id'>Feito por: $nomeUser</a><br>");
					echo("<a href='fanart.php?id=$id'>Descrição: $desc ...</a>");
					$page->apagaADM($conn, $id);
					//echo("<a>Voto: $voto </a>");
					echo("</div>");	
				}

			}
		}
		function apagaAdmin($conn)
		{
			$user = $_SESSION['usuario'];
			$pass = $_SESSION['senha'];
			if (!empty($user) && !empty($pass)) {
				$data = $conn->prepare("SELECT * FROM usuarios WHERE usuario=:user");
				$data->bindParam(':user',$user,PDO::PARAM_STR);
				$data->execute();
				foreach ($data as $row) {
					$passDB = $row['senha'];
					break;
				}
				if ($pass == $passDB) {
					echo "<a>apagaFanAdmin.php</a>";
				}else{}
			}
		}

		function getComents($conn,$id)
		{
			$data = $conn->prepare("SELECT * FROM comentario where id_fan=:id");
			$data->bindParam(':id', $id,PDO::PARAM_INT);
			$data->execute();
			foreach ($data as $row) {
				$comentario = $row['comentario'];
				$nome = $row['nome'];
				echo "<a id='comentario'>$nome: $comentario</a>";
				echo "<hr>";
			}
		}

		function insetComentario($conn)
		{
			$id_fan = 20;
			$nome = $_POST['nome'];
			$comentario = $_POST['comentario'];
			$data = $conn->prepare("INSERT INSERT comentario (id, id_fan, nome, comentario) VALUES (null,:id_fan,:nome,:comentario)");
			$data->bindParam(':id_fan', $id_Fan,PDO::PARAM_INT);
			$data->bindParam(':nome',$nome,PDO::PARAM_STR);
			$data->bindParam(':comentario',$comentario,PDO::PARAM_STR);
			$data->execute();
		}

		function chamaFanart($conn)
		{
			if (empty($_GET['id'])) {
			//header("Location: fanarts.php");
			}
				$id = $_GET['id'];
				$data = $conn->prepare("SELECT * FROM fanarts where id=:id");
				$data->bindParam(':id', $id, PDO::PARAM_INT);
				$data->execute();
				foreach ($data as $row) {
					$foto = $row['fanarts_img'];
					$desc = $row['fanarts_descricao'];
					echo "<a id='descricao_a'>$desc</a> <hr>";
					echo "<img id='img_fanA' src='banco_img/$foto'>";
			}
		}	

		function pegaComentario($conn)
		{
			$id = $_GET['id'];
			$data = $conn->prepare("SELECT * FROM fanarts where id=:id");
			$data->bindParam(":id",$id,PDO::PARAM_INT);
			$data->execute();
			foreach ($data as $key) {
				$comentario = $key['comentarios'];
				break;
			}
			$comentario_array =  explode(';', $comentario);
			$num = count($comentario_array);
			for ($i=0; $i < $num ; $i++) { 
				$id_ep = $comentario_array[$i];
				$data = $conn->prepare("SELECT * FROM comentario where id=:id_ep ORDER by id");
				$data->bindParam(":id_ep", $id_ep, PDO::PARAM_INT);
				$data->execute();
				foreach ($data as $row) {
					$nome = $row['nome'];
					$comment = $row['comentario'];
					echo "<a>$nome: $comment </a> <hr>";
				}
			}
		}

		function addComent($conn,$id,$coment,$name)
		{
			$random = md5(uniqid(time()));
			$data = $conn->prepare("INSERT INTO comentario (id,id_fan,nome,comentario, reater) values(null, :id_fan,:nome,:comentario, :reater)");
			$data->bindParam(":id_fan",$id, PDO::PARAM_INT);
			$data->bindParam(":nome",$name,PDO::PARAM_STR);
			$data->bindParam(":comentario", $coment, PDO::PARAM_STR);
			$data->bindParam(":reater", $random, PDO::PARAM_INT);
			$data->execute();

			$data = $conn->prepare("SELECT * FROM comentario WHERE reater=:reater");
			$data->bindParam(":reater", $random, PDO::PARAM_STR);
			$data->execute();
			foreach ($data as $key) {
				$ids = $key['id'];
				break;
			}

			$data = $conn->prepare('SELECT * FROM fanarts WHERE id=:id');
			$data->bindParam(":id",$id,PDO::PARAM_INT);
			$data->execute();
			foreach ($data as $row) {
				$comentarios = $row['comentarios'];
				break;
			}
			
			$total = $comentarios . $ids . ";";

			$data = $conn->prepare("UPDATE fanarts  SET comentarios=:comentarios where id=:id");
			$data->bindParam(":comentarios",$total,PDO::PARAM_STR);
			$data->bindParam(":id", $id, PDO::PARAM_INT);
			$data->execute();
			header("Location: fanart.php?id=$id");
		}
	}

	/**
	* 
	*/
	class convidado 
	{
		function retornar()
		{
			header("Location: ../index.php");
		}
	}
?>