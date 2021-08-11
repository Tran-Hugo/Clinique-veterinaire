<?php require 'inc/header.php' ?>
<?php require 'inc/topbar.php' ?>

<div class="container">
  <h1>Ajouter son animal</h1>
  <?php require 'inc/msg.php' ?>
  <form method="post" enctype="multipart/form-data">
	<div class="row">
		<div class="input-field col s12">
			<input type="text" name="nom" id="nom" required="required">
			<label for="title">Nom de l'animal</label>
		</div>

		<div class="input-field col s12">
      <label for="editable">Date de naissance</label>
      <br><br>
      <input type="date" name="DateNaissance" id="DateNaissance">
		</div>
		<div class="col s12">
			<div class="input-field file-field">
				<div class="btn">
					<span>Photo de l'animal</span>
					<input type="file" name="image">
				</div>
				<div class="file-path-wrapper">
					<input type="text" class="file-path validate" readonly>
				</div>
			</div>
		</div>

    <?php 
    // var_dump($_SESSION['is_user'], $_SESSION['is_user_id']);
    // echo $this->id_prop[0];
    ?>

		<!-- <div class="col s12">
			<div class="input-field file-field">
				<div class="btn">
					<span>Image de l'article</span>
					<input type="file" name="image">
				</div>
				<div class="file-path-wrapper">
					<input type="text" class="file-path validate" readonly>
				</div>
			</div>
		</div> -->

		<div class="col s12 right-align">
			<br><br>
			<button class="btn waves-effect waves-light" type="submit" name="add_submit">Ajouter</button>
		</div>

	</div>
</form>
</div>
