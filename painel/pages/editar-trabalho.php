<?php
	if(isset($_GET['id'])){
		$id = (int)$_GET['id'];
		$trabalho = Painel::select('tb_site.trabalho','id = ?',array($id));
	}else{
		Painel::alert('erro','Você precisa passar o parametro ID.');
		die();
	}
?>
<div class="box-content">
	<h2><i class="fa fa-pencil"></i> Editar Trabalho</h2>

	<form method="post" enctype="multipart/form-data">

		<?php
			if(isset($_POST['acao'])){
				//Enviei o meu formulário.
				
                $nome = $_POST['nome'];
                $descricao = $_POST['descricao'];
				$imagem = $_FILES['imagem'];
				$imagem_atual = $_POST['imagem_atual'];
				
				if($imagem['name'] != ''){
					//Existe o upload de imagem.
					if(Painel::imagemValida($imagem)){
						Painel::deleteFile($imagem_atual);
						$imagem = Painel::uploadFile($imagem);
						$arr = ['nome'=>$nome,'descricao'=>$descricao,'imagem'=>$imagem,'id'=>$id,'nome_tabela'=>'tb_site.trabalho'];
						Painel::update($arr);
						$slide = Painel::select('tb_site.trabalho','id = ?',array($id));
						Painel::alert('sucesso','O Trabalho foi editado junto com a imagem!');
					}else{
						Painel::alert('erro','O formato da imagem não é válido');
					}
				}else{
					$imagem = $imagem_atual;
					$arr = ['nome'=>$nome,'descricao'=>$descricao,'imagem'=>$imagem,'id'=>$id,'nome_tabela'=>'tb_site.trabalho'];
					Painel::update($arr);
					$trabalho = Painel::select('tb_site.trabalho','id = ?',array($id));
					Painel::alert('sucesso','O Trabalho foi editado com sucesso!');
				}

			}
		?>

		<div class="form-group">
			<label>Nome:</label>
			<input type="text" name="nome" required value="<?php echo $trabalho['nome']; ?>">
		</div><!--form-group-->

        <div class="form-group">
			<label>Descrição:</label>
			<textarea name="descricao" required ><?php echo $trabalho['descricao']; ?></textarea>
        </div><!--form-group-->
        
		<div class="form-group">
			<label>Imagem</label>
			<input type="file" name="imagem"/>
			<input type="hidden" name="imagem_atual" value="<?php echo $trabalho['imagem']; ?>">
		</div><!--form-group-->

		<div class="form-group">
            <input type="hidden" name="id" value="<?php echo $id; ?>">
			<input type="submit" name="acao" value="Atualizar!">
		</div><!--form-group-->

	</form>

</div><!--box-content-->