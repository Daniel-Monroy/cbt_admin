<?php $this->load->view('header_login'); ?>
<body class="hold-transition login-page">
   <div class="login-box">
      <div class="login-logo">
         <img src="<?php echo base_url()?>assets/img/template/logo-cbt.png" class="img-responsive" style="padding: 10px 50px; display: inline-block;">
      </div>
      <div class="login-box-body" style="">
         <div class="login">
            <h2 class="form-signin-heading pemsa_font">Cerrar sesión</h2>
            <div class="alert alert-success alert-dismissable">
               <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
               <strong>Tu sesión ha sido cerrada exitósamente.</strong><br/>
            </div>
            <p><small><?php echo anchor('reg/login', '<span class="glyphicon glyphicon-log-in"></span> Ingresar nuevamente','class="btn btn-default"');?></small></p>
         </div>
      </div>
   </div>

<?php $this->load->view('footer_login'); ?>
