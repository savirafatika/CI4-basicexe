<?= $this->extend('layout/template'); ?>

<?= $this->section('content'); ?>
<div class="container">
   <div class="row">
      <div class="col">

         <h1 class="mt-2">Detail Comic</h1>
         <div class="card mb-3" style="max-width: 540px;">
            <div class="row no-gutters">
               <div class="col-md-4 media">
                  <img src="/img/<?= $comic['cover']; ?>" class="card-img align-self-center" alt="...">
               </div>
               <div class="col-md-8">
                  <div class="card-body">
                     <h5 class="card-title"><?= $comic['title']; ?></h5>
                     <p class="card-text"> <b>Author : </b><?= $comic['author']; ?></p>
                     <p class="card-text"><small class="text-muted"> <b>Publisher : </b><?= $comic['publisher']; ?></small></p>

                     <a href="/comics/edit/<?= $comic['slug']; ?>" class="btn btn-warning">Edit</a>

                     <form action="/comics/<?= $comic['id']; ?>" method="POST" class="d-inline">
                        <?= csrf_field(); ?>
                        <input type="hidden" name="_method" value="DELETE">
                        <button type="submit" class="btn btn-danger" onclick="return confirm('Are you sure? this data will be deleted!');">Delete</button>
                     </form>

                     <br><br>
                     <a href="/comics">Back to List of Comic</a>
                  </div>
               </div>
            </div>
         </div>

      </div>
   </div>
</div>
<?= $this->endSection(); ?>