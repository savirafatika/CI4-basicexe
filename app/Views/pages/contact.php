<?= $this->extend('layout/template'); ?>

<?= $this->section('content'); ?>
<div class="container">
   <div class="row">
      <div class="col">
         <ul class="list-group list-group-horizontal-xl mt-3">
            <div class="list-group-item list-group-item-action bg-light">
               <div class="d-flex w-100 justify-content-between">
                  <h2 class="mb-1">Contact Me</h2>
                  <small>24 Hours</small>
               </div>
               <p class="mb-1">You can send messages via email: savira.fatika.sf@gmail.com.</p>
               <small>or phone number: +62 821 3655 2225.</small>
            </div>
         </ul>
         <?php foreach ($alamat as $a) : ?>
            <li class="list-group-item">
               <h5><?= $a['tipe']; ?></h5>
               <ul>
                  <li><?= $a['alamat']; ?></li>
                  <li><?= $a['kota']; ?></li>
               </ul>
            </li>
         <?php endforeach; ?>
      </div>
   </div>
</div>
<?= $this->endSection(); ?>