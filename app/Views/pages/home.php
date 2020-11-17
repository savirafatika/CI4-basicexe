<?= $this->extend('layout/template'); ?>

<?= $this->section('content'); ?>
<div class="container">
   <div class="row">
      <div class="col">
         <div class="jumbotron my-3">
            <h1 class="display-4">Konnichiwa <span>&#128075;&#127995;</span></h1>
            <p class="lead">This is my first website to use the CodeIgniter 4 framework. I am happy to know and learn about this framework. What do you think?</p>
            <hr class="my-4">
            <p>In the next project, I will create a website with the laravel framework.</p>
            <a class="btn btn-primary btn-lg" href="/pages/about" role="button">Know me better</a>
         </div>
      </div>
   </div>
</div>
<?= $this->endSection(); ?>