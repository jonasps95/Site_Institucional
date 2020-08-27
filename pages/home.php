<section class="banner-container">
<?php
	$sql = MySql::conectar()->prepare("SELECT * FROM `tb_site.slides` ");
	$sql->execute();
	$slide = $sql->fetchAll();
	foreach ($slide as $key => $value) {?>
		<div style="background-image: url('<?php echo INCLUDE_PATH_PAINEL.'uploads/'. $value['slide']?>');" class="banner-single"></div><!--banner-single-->
<?php } ?>
	<div class="overlay"></div><!--overlay-->
		<div class="center">
		<form method="post">
			<h2>Cadastre seu e-mail?</h2>
			<input type="email" name="email" required />
			<input type="hidden" name="identificador" value="form_home" />
			<input type="submit" name="acao" value="Cadastrar!">
		</form>
		</div><!--center-->
		<div class="bullets"></div><!--bullets-->
</section><!--banner-principal-->

<section class="produtos">
	<div class="center">
	<div class="subtitulo w100"><h2>Nossos Produtos!</h2></div>
	<?php
	$sql = MySql::conectar()->prepare("SELECT * FROM `tb_site.produto` ");
	$sql->execute();
	$produto = $sql->fetchAll();
	foreach ($produto as $key => $value) {?>
		<div class="produto w33 left">
			<img src="<?php echo INCLUDE_PATH_PAINEL.'uploads/'. $value['imagem']?>">
			<h2><?php echo $value['nome'] ?></h2>
			<p><?php echo $value['descricao'] ?></p>
			<a class="left" href="#">Veja mais...</a>
		</div><!--w33-->
	<?php } ?>
	<div class="clear"></div>
	</div><!--center-->
</section><!--produtos-->

<section class="trabalhos">
	<div class="center">
	<div class="subtitulo w100"><h2>Trabalhos Entregues!</h2></div>
	<?php
	$sql = MySql::conectar()->prepare("SELECT * FROM `tb_site.trabalho` ");
	$sql->execute();
	$trabalho = $sql->fetchAll();
	foreach ($trabalho as $key => $value) {?>
		<div class="produto w33 left">
			<img src="<?php echo INCLUDE_PATH_PAINEL.'uploads/'. $value['imagem']?>">
			<h2><?php echo $value['nome'] ?></h2>
			<p><?php echo $value['descricao'] ?></p>
			<a class="left" href="#">Veja mais...</a>
		</div><!--w33-->
	<?php } ?>

	<div class="clear"></div>
	</div><!--center-->
</section><!--trabalhos-->

	<section class="extras">

		<div class="center">
			<div id="depoimentos" class="w50 left depoimentos-container">
				<h2 class="title">Depoimentos dos nossos clientes</h2>
				<?php
					$sql = MySql::conectar()->prepare("SELECT * FROM `tb_site.depoimentos` ORDER BY order_id ASC LIMIT 3");
					$sql->execute();
					$depoimentos = $sql->fetchAll();
					foreach ($depoimentos as $key => $value) {
				?>
				<div class="depoimento-single">
					<p class="depoimento-descricao">"<?php echo $value['depoimento']; ?>"</p>
					<p class="nome-autor"><?php echo $value['nome']; ?> - <?php echo $value['data']; ?></p>
				</div><!--depoimento-single-->
				<?php } ?>
			</div><!--w50-->
			
			<div id="servicos" class="w50 left servicos-container">
				<h2 class="title">Serviços</h2>
				<div class="servicos">
				<ul>
					<?php
					$sql = MySql::conectar()->prepare("SELECT * FROM `tb_site.servicos` ORDER BY order_id ASC LIMIT 3");
					$sql->execute();
					$servicos = $sql->fetchAll();
					foreach ($servicos as $key => $value) {
					?>
					<li><?php echo $value['servico']; ?></li>
					<?php } ?>
				</ul>
				</div><!--servicos-->
			</div><!--w50-->
			<div class="clear"></div>
		</div><!--center-->
	</section><!--extras-->