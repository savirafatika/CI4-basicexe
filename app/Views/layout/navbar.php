<!-- NAVBAR -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
   <div class="container">
      <a class="navbar-brand" href="/" style="font-family: Brush Script MT;">Savira's</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
         <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
         <div class="navbar-nav">
            <a class="nav-link active" href="/">Home</a>
            <a class="nav-link" href="/pages/about">About</a>
            <a class="nav-link" href="/pages/contact">Contact</a>
            <a class="nav-link" href="/comics">Comic</a>
            <a class="nav-link" href="/peoples">People</a>
         </div>
         <?php if (logged_in()) : ?>
            <a class="nav-link" href="/logout" style="color: white;">Logout</a>
         <?php else : ?>
            <a class="nav-link" href="/login" style="color: white;">Login</a>
         <?php endif; ?>
      </div>
   </div>
</nav>
<!-- akhir NAVBAR -->