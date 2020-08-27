<div class="box-content">
	<h2><i class="fa fa-pencil"></i> Cadastrar Trabalho</h2>

	<form method="post" enctype="multipart/form-data">

		<?php

			if(isset($_POST['acao'])){
                $nome = $_POST['nome'];
                $descricao = $_POST['descricao'];
				$imagem = $_FILES['imagem'];
				if($nome == ''){
					Painel::alert('erro','O campo nome não pode ficar vázio!');
				}else if($descricao == ''){
                    Painel::alert('erro','O campo descricao não pode ficar vázio!');
                }else if($imagem == ''){
                    Painel::alert('erro','você precisa adicionar uma imagem!');
                }else{
					//Podemos cadastrar!
					if(Painel::imagemValida($imagem) == false){
						Painel::alert('erro','O formato especificado não está correto!');
					}else{
						//Apenas cadastrar no banco de dados!
						include('../classes/lib/WideImage.php');
						$imagem = Painel::uploadFile($imagem);
						$arr = ['nome'=>$nome,'descricao'=>$descricao,'imagem'=>$imagem,'order_id'=>'0','nome_tabela'=>'tb_site.trabalho'];
						Painel::insert($arr);
						Painel::alert('sucesso','O cadastro do trabalho foi realizado com sucesso!');
					}
				}
				
			}
		?>

		<div class="form-group">
			<label>Nome</label>
			<input type="text" name="nome">
        </div><!--form-group-->
        
		<div class="form-group">
			<label>Descrição</label>
			<textarea  name="descricao"></textarea>
		</div><!--form-group-->

		<div class="form-group">
			<label>Imagem</label>
			<input type="file" name="imagem"/>
		</div><!--form-group-->

		<div class="form-group">
			<input type="submit" name="acao" value="Cadastrar!">
		</div><!--form-group-->

	</form>



</div><!--box-content-->