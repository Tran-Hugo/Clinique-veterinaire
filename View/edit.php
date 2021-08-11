<?php require 'inc/header.php' ?>
<?php require 'inc/topbar.php' ?>

<div class="container">
  <?php if (empty($this->oAnimals)): ?>
    <h1>Il n'y a aucun animal.</h1>
    <?php var_dump($this->oAnimals) ?>
    <p><button type="button" onclick="window.location='<?=ROOT_URL?>admin_add.html'" class="btn waves-effect waves-light">Ajoutez votre premier article!</button></p>
  <?php else: ?>
  <h1>Dossiers</h1>
  <!-- <a href="<?=ROOT_URL?>admin_add.html"><button class="btn light-blue waves-effect waves-light">Ajouter un article</button></a> -->
  <br>
  <br>
  <hr>

  <table class="striped">
    <thead>
      <tr>
          <th>Nom</th>
          <th>Date de naissance</th>
          <th>Propriétaire</th>
          <th>Modifier</th>
      </tr>
    </thead>

    <tbody>
      <?php
      foreach ($this->oAnimals as $oAnimal): ?>
        <tr>
          <td><?= $oAnimal->nom ?></td>
          <td>Le <?= $oAnimal->DateNaissance ?></td>
          <td><?=$oAnimal->pseudo?></td>
          
          <td>
            <?php require 'inc/control_buttons.php' ?>
          </td>
        </tr>
      <?php endforeach ?>
    </tbody>
  </table>
</div>
<?php endif ?>
