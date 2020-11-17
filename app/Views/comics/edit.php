<?= $this->extend('layout/template'); ?>

<?= $this->section('content'); ?>
<div class="container">
   <div class="row">
      <div class="col-8">

         <h2 class="my-3">Change Data Comic</h2>
         <form action="/comics/update/<?= $comic['id']; ?>" method="POST">
            <?= csrf_field(); ?>
            <input type="hidden" name="slug" value="<?= $comic['slug']; ?>">
            <div class="form-group row">
               <label for="title" class="col-sm-2 col-form-label">Title</label>
               <div class="col-sm-10">
                  <input type="text" class="form-control <?= ($validation->hasError('title')) ? 'is-invalid' : ''; ?>" id="title" name="title" autofocus value="<?= (old('title')) ? old('title') : $comic['title']; ?>">
                  <div class="invalid-feedback">
                     <?= $validation->getError('title'); ?>
                  </div>
               </div>
            </div>
            <div class="form-group row">
               <label for="author" class="col-sm-2 col-form-label">Author</label>
               <div class="col-sm-10">
                  <input type="text" class="form-control <?= ($validation->hasError('author')) ? 'is-invalid' : ''; ?>" id="author" name="author" value="<?= (old('author')) ? old('author') : $comic['author']; ?>">
                  <div class="invalid-feedback">
                     <?= $validation->getError('author'); ?>
                  </div>
               </div>
            </div>
            <div class="form-group row">
               <label for="publisher" class="col-sm-2 col-form-label">Publisher</label>
               <div class="col-sm-10">
                  <input type="text" class="form-control <?= ($validation->hasError('publisher')) ? 'is-invalid' : ''; ?>" id="publisher" name="publisher" value="<?= (old('publisher')) ? old('publisher') : $comic['publisher']; ?>">
                  <div class="invalid-feedback">
                     <?= $validation->getError('publisher'); ?>
                  </div>
               </div>
            </div>
            <div class="form-group row">
               <label for="cover" class="col-sm-2 col-form-label">Cover</label>
               <div class="col-sm-10">
                  <input type="text" class="form-control <?= ($validation->hasError('cover')) ? 'is-invalid' : ''; ?>" id="cover" name="cover" value="<?= (old('cover')) ? old('cover') : $comic['cover']; ?>">
                  <div class="invalid-feedback">
                     <?= $validation->getError('cover'); ?>
                  </div>
               </div>
            </div>
            <div class="form-group row">
               <div class="col-sm-10">
                  <button type="submit" class="btn btn-primary">Edit Data</button>
               </div>
            </div>
         </form>

      </div>
   </div>
</div>
<?= $this->endSection(); ?>