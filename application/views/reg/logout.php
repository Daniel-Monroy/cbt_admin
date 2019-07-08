<?php $this->load->view('header_login'); ?>
<body class="hold-transition login-page">
   <div class="login-box">
      <div class="login-logo">
         <img src="<?php echo base_url()?>assets/img/template/logo-cbt.png" class="img-responsive" style="padding: 10px 50px; display: inline-block;">
      </div>
      <div class="login-box-body" style="">
         <div class="login">
            <h2 class="form-signin-heading pemsa_font">Cerrar sesión</h2>
            <div class="alert alert-warning alert-dismissable">
               <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>Estás por cerrar tu sesión. ¿Deseas proseguir?
            </div>
            <p>
               <small><?php echo anchor('reg/logout/logout_routine', '<span class="glyphicon glyphicon-off"></span> Cerrar sesión','class="btn btn-danger"'); ?></small>
               <small><?php echo anchor('cmn/dshb', '<span class="glyphicon glyphicon-arrow-left"></span> Regresar al panel'.'','class="btn btn-default"'); ?></small>'
            </p>
         </div>
      </div>
   </div>

<?php $this->load->view('footer_login'); ?>
