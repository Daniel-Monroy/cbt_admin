<header class="main-header">
   <a href="<?php echo base_url(); ?>" class="logo">
      <span class="logo-mini"> <img src="<?php echo base_url()?>assets/img/template/logo-cbt.png" class="img-responsive" style="border-radius: 10px;"; filter: contrast(200%); width ="px"; ></span>
      <span  class="logo-lg">  <img src="<?php echo base_url()?>assets/img/template/logo-cbt.png" class="img-responsive" style="padding: 10px;  filter: contrast(200%);"></span>
   </a>
   <nav class="navbar navbar-static-top">
      <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
         <span class="sr-only">Menu de opciones</span>
      </a>
      <div class="navbar-custom-menu">
         <ul class="nav navbar-nav">
            <?php $this->load->view('dshb/header/user'); ?>
         </ul>
      </div>
   </nav>
</header>
