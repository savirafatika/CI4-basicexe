<?= $this->extend('layout/template'); ?>

<?= $this->section('content'); ?>
<div class="container">
   <div class="row">
      <div class="col-8">

         <h2 class="my-3">Add New Comic</h2>
         <form action="/comics/save" method="POST">
            <?= csrf_field(); ?>
            <div class="form-group row">
               <label for="title" class="col-sm-2 col-form-label">Title</label>
               <div class="col-sm-10">
                  <input type="text" class="form-control" id="title" name="title" autofocus>
               </div>
            </div>
            <div class="form-group row">
               <label for="author" class="col-sm-2 col-form-label">Author</label>
               <div class="col-sm-10">
                  <input type="text" class="form-control" id="author" name="author">
               </div>
            </div>
            <div class="form-group row">
               <label for="publisher" class="col-sm-2 col-form-label">Publisher</label>
               <div class="col-sm-10">
                  <input type="text" class="form-control" id="publisher" name="publisher">
               </div>
            </div>
            <div class="form-group row">
               <label for="cover" class="col-sm-2 col-form-label">Cover</label>
               <div class="col-sm-10">
                  <input type="text" class="form-control" id="cover" name="cover">
               </div>
            </div>
            <div class="form-group row">
               <div class="col-sm-10">
                  <button type="submit" class="btn btn-primary">Add Data</button>
               </div>
            </div>
         </form>

      </div>
   </div>
</div>
<?= $this->endSection(); ?>