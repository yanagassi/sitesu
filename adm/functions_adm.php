<?php
error_reporting(0);
	error_reporting( E_ALL ^ E_DEPRECATED ^ E_NOTICE );
	require_once('sinitize.php');
	function conectar(){
		$user = "root";
		$pass = "vertrigo";
		$local = "localhost";
		$db = "bunquer";
		$con = mysql_connect($local,$user,$pass);
		mysql_select_db($db);
	}
		function LimparTexto($texto)
	{
		$texto=str_replace(array("<", ">", "/", "=", "'", "?","%27"), "", $texto);
		return $texto;
	}

	function injeta_token($id,$pass){
		$token = base64_encode($pass);
		$query = mysql_query("UPDATE usuarios set token='$token' where id='$id'");
	}
	function login(){
		$_GET = Sanitize::filter($_GET);
		$_POST = Sanitize::filter($_POST);
		$_POST = Sanitize::filter($_POST, array('html'));
		$_POST = Sanitize::filter($_POST, array('sql'));
		$_POST['user'] = Sanitize::filter($_POST['user']);
		$_POST['pass'] = Sanitize::filter($_POST['pass']);
		$user_post = $_POST['user'];
		$pass_post = $_POST['pass'];
		$query = mysql_query("SELECT * FROM usuarios WHERE usuario='$user_post'");
		$dado = mysql_fetch_array($query);
		$user = $dado['usuario'];
		$pass = $dado['senha'];
		$id = $dado['id'];
		$token_user = injeta_token($id,$pass_post);
		if ($user_post == null || $user_post == "") {
			header("Location: login.php");
		}
		if ($user_post == $user && $pass == $pass_post) {
				setcookie("user",$user);
				setcookie("pass",$pass);
				setcookie("token",base64_encode($pass));
				$token = $_COOKIE["token"];
				$tokenDB = $dado['token'];
				header("Location: index.php");
		}else{
			header("Location: login.php");
		}
	}

	function protege(){
		$_GET = Sanitize::filter($_GET);
		$_POST = Sanitize::filter($_POST);
		$_POST = Sanitize::filter($_POST, array('html'));
		$_POST = Sanitize::filter($_POST, array('sql'));
		$_COOKIE['user'] = Sanitize::filter($_COOKIE['user']);
		$_COOKIE['pass'] = Sanitize::filter($_COOKIE['pass']);
		$user = $_COOKIE['user'];
		$pass = $_COOKIE['pass'];

		$token = $_COOKIE['token'];
		if (is_null($user) || is_null($pass)) {
			header("Location: login.php");
		}
		$query = mysql_query("SELECT * FROM usuarios WHERE usuario='$user'");
		$dados = mysql_fetch_array($query);
		$userDB = $dados['usuario'];
		$passDB = $dados['senha'];
		$tokenDB = $dados['token'];
		if ($user == $userDB && $pass == $passDB && $token == $tokenDB) {
			setcookie("user",$user);
			setcookie("pass",$pass);
		}else{
			header("Location: login.php");
		}
	}

	function list_eps(){
		$query = mysql_query("SELECT * FROM epsodios order by numero desc");
		$linhas = mysql_num_rows($query);
		if ($linhas > 15) {
			$linhas = 15;
		}
		for ($i=0; $i < $linhas; $i++) { 
			$dados = mysql_fetch_array($query);
			$id = $dados['id'];
			$ep_nome = $dados['nome_ep'];
			$numero = $dados['numero'];
			echo ('<content class="content_ep">');
			echo("<a id='epsodios_nome'> $numero | "."$ep_nome"."</a>");
			echo("<box><a id='ed-ex'>Editar</a><a id='ed-ex' href='apagarep.php?id="."$id"."'> Excluir</a></box><br>");
			echo('</content>');
		}
	}
	function list_eps2(){
		$query = mysql_query("SELECT * FROM epsodios order by numero desc");
		$dados = mysql_fetch_array($query);
		$numero = $dados['numero'];
		$numero = $numero +1;
		echo "$numero";
		
	}
	function add_ep(){
		$user = $_COOKIE['user'];
		$pass = $_COOKIE['pass'];

		$nome_ep = $_POST['nome_ep'];
		$local_ep = $_POST['local_ep'];
		$card_board = $_POST['card_board'];
		$numero = $_POST['numero'];

		$query = mysql_query("SELECT * FROM usuarios WHERE usuario='$user'");
		$dados = mysql_fetch_array($query);
		$userDB = $dados['usuario'];
		$passDB = $dados['senha'];
		$tokenDB = $dados['token'];
		if ($user == $userDB && $pass == $passDB) {
			mysql_query("INSERT INTO epsodios (nome_ep, local_ep, card_board, numero, assistido) values ('$nome_ep', '$local_ep', '$card_board', '$numero','0')");
		}
		header("Location: adicionarepisodio.php");	
	}

	function apagar_ep(){
		$_GET = Sanitize::filter($_GET);
		$_POST = Sanitize::filter($_POST);
		$_POST = Sanitize::filter($_POST, array('html'));
		$_POST = Sanitize::filter($_POST, array('sql'));
		$_GET['id'] = Sanitize::filter($_GET['id']);
		$id = LimparTexto($id = $_GET['id']);
		$id = $_GET['id'];
		$id = strip_tags(trim($id));
		$id = htmlspecialchars($id);
		$apaga = mysql_query("DELETE FROM epsodios WHERE id='$id'");
		header("Location: adicionarepisodio.php");
	}
	function rank(){
		$user = $_COOKIE['user'];
		if ($user == null) {
			header("Location: login.php");
		}
		$query = mysql_query("SELECT * FROM usuarios WHERE usuario='$user'");
		$dados = mysql_fetch_array($query);
		$rank = $dados['rank'];
		if ($rank == 1) {
			echo('<a class="item" >Adicionar Usuario</a>');
		}
	}
	function fanart_lista_adm(){
		$query = mysql_query("SELECT * FROM fanarts order by voto desc");
		$linhas = mysql_num_rows($query);
		for ($i=0; $i < $linhas ; $i++) { 
			$dados = mysql_fetch_array($query);
			$nomeUser = $dados['fanarts_username'];
			$desc = $dados['fanart_descricao'];
			$img = $dados['fanarts_img'];
			$state = $dados['state'];
			$voto = $dados['voto'];
			$id = $dados['id'];
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

	function aprova($id){
		$query = mysql_query("UPDATE fanarts set state=1 where id='$id'");
		header("Location: index.php");
	}

	function apaga($id){
		$query = mysql_query("SELECT * FROM fanarts where id='$id'");
		$dados = mysql_fetch_array($query);
		$img_nome = $dados['fanarts_img'];
		echo unlink("../banco_img/".$img_nome);
		$query = mysql_query("DELETE FROM fanarts WHERE id='$id'");
		header("Location: index.php");
	}
	function sair(){
		$user = $_COOKIE['user'];
		$query = mysql_query("SELECT * FROM usuarios WHERE usuario='$user'");
		$dado= mysql_fetch_array($query);
		$id = $dados['id'];
		session_start("loged");
		injeta_token($id,$lixo);
		setcookie($user, "");
		setcookie($pass, "");
		session_destroy("loged");
		header("Location: login.php");
	}

	function listaTiket(){
		$query = mysql_query("SELECT * FROM tiket");
		$linhas = mysql_num_rows($query);
		for ($i=0; $i < $linhas ; $i++) { 
			$dados = mysql_fetch_array($query);
			$nome = $dados['nome_ep'];
			$numero = $dados['numero_ep'];
			$desc = $dados['descricao'];
			$id = $dados['id_ep'];
			
			echo "<content>";
			echo "<a href='editar.php?id=".$id."'>Nº $numero</a><br>";
			echo "<a href='editar.php?id=".$id."'>Nome: $nome</a><br>";
			echo "<a href='editar.php?id=".$id."'>Descrição: $desc</a>";
			echo "<hr>";
			echo "</content>";
		}
	}

	function numero(){
		$query = mysql_query("SELECT * FROM visita");
		$dados = mysql_fetch_array($query);
		$numero = $dados['numero'];
		echo "<a style='position:absolute; left:-70%;'>Numero de Visitas: $numero</a>";
	}
?>
