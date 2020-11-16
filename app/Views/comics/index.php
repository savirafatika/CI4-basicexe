<?= $this->extend('layout/template'); ?>

<?= $this->section('content'); ?>
<div class="container">
   <div class="row">
      <div class="col">

         <h1 class="mt-2">List of Comic</h1>
         <a href="/comics/create" class="btn btn-primary mb-3">Add New Comic</a>
         <?php if (session()->getFlashdata('message')) : ?>
            <div class="alert alert-success" role="alert">
               <?= session()->getFlashdata('message'); ?>
            </div>
         <?php endif; ?>
         <table class="table table-striped">
            <thead>
               <tr>
                  <th scope="col">#</th>
                  <th scope="col">Cover</th>
                  <th scope="col">Title</th>
                  <th scope="col">Action</th>
               </tr>
            </thead>
            <tbody>
               <?php $i = 1; ?>
               <?php foreach ($comic as $c) : ?>
                  <tr>
                     <th scope="row"><?= $i++; ?></th>
                     <td><img src="/img/<?= $c['cover']; ?>" alt="" class="cover"></td>
                     <td><?= $c['title']; ?></td>
                     <td>
                        <a href="/comics/<?= $c['slug']; ?>" class="btn btn-info">Detail</a>
                     </td>
                  </tr>
               <?php endforeach; ?>
            </tbody>
         </table>

      </div>
   </div>
</div>
<?= $this->endSection(); ?>