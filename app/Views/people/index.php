<?= $this->extend('layout/template'); ?>

<?= $this->section('content'); ?>
<div class="container">
   <div class="row">
      <div class="col">
         <h1 class="mt-2">List of Peoples</h1>
         <form action="" method="POST">
            <div class="input-group mb-3">
               <input type="text" class="form-control" placeholder="Search Name .." name="keyword">
               <div class="input-group-append">
                  <button class="btn btn-outline-secondary" type="submit" name="submit">Search</button>
               </div>
            </div>
         </form>
      </div>
   </div>
   <div class="row">
      <div class="col">

         <table class="table table-striped">
            <thead>
               <tr>
                  <th scope="col">#</th>
                  <th scope="col">Name</th>
                  <th scope="col">Address</th>
                  <th scope="col">Action</th>
               </tr>
            </thead>
            <tbody>
               <?php $i = 1 + (7 * ($currentPage - 1)); ?>
               <?php foreach ($people as $p) : ?>
                  <tr>
                     <th scope="row"><?= $i++; ?></th>
                     <td><?= $p['name']; ?></td>
                     <td><?= $p['address']; ?></td>
                     <td>
                        <a href="" class="btn btn-info">Detail</a>
                     </td>
                  </tr>
               <?php endforeach; ?>
            </tbody>
         </table>
         <?= $pager->links('people', 'people_pagination'); ?>

      </div>
   </div>
</div>
<?= $this->endSection(); ?>