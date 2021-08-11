<?php require 'inc/header.php' ?>
<?php require 'inc/topbar.php' ?>

<main>
  <div class="container">
    <?php if (empty($this->oPosts)): ?>
        <h1>Il n'y a aucun article.</h1>
        <?php 
	    var_dump($this->oAnimals)
    ?>
        <p><button type="button" onclick="window.location='<?=ROOT_URL?>admin_add.html'" class="btn waves-effect waves-light">Ajoutez votre premier article!</button></p>
    <?php else: ?>
    <h1 class="page-title">Clinique vétérinaire</h1>
    
    
    <div class="img-background"></div>
    <?php if (!empty($_SESSION['is_user'])): ?>
					<h3>Bienvenue <?php echo $_SESSION['is_user'] ?></h3>
					<?php endif ?>
      <?php if (!empty($_SESSION['is_admin'])): ?>
					<h3>Bienvenue <?php echo $_SESSION['is_admin'] ?></h3>
					<?php endif ?>
    <div class="row anicard">
    <?php //var_dump($this->oAnimals);
    // echo $_SESSION['is_user'];
	    foreach ($this->oAnimals as $oAnimal):
    ?>
  
    <div class="col s12 m6 l6">
      <div class="card">
      <div class="card-image waves-effect waves-block waves-light">
    					<img src="<?=ROOT_URL?>static/img/posts/<?= $oAnimal->image ?>" class="activator">
    				</div>
        <div class="card-content">
          <p>Hi i'm <?=$oAnimal->nom?> i'm the animal of <?=$oAnimal->pseudo?> and i was born the <?=$oAnimal->DateNaissance?></p>
        </div>
        
      </div>
    </div>
  
  <?php endforeach ?>
  </div>
</main>
<?php endif ?>
<?php require 'inc/footer.php' ?>
