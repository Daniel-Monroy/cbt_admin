<?php $this->load->view('header_login'); ?>
<body class="hold-transition login-page">
   <?php echo form_open('reg/login/forgot_password/'.id_encode($type), ['class' => 'login', 'role' => 'form', 'autocomplete' => 'off']);?>
      <div class="login-box">
         <div class="login-logo">
            <img src="<?php echo base_url()?>assets/img/template/logo-cbt.png" class="img-responsive" style="padding: 10px 50px; display: inline-block;">
         </div>
         <div class="login-box-body" style="">
            <?php if (isset($msg_err)):?>
               <div class="alert alert-danger alert-dismissable" style="color:#fff;">
                  <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                  <strong> No existe ningún usuario con la clave de acceso registrada. Por favor contacta a <span style="font-size:16px"> DAFSystems. </span> </strong>
               </div>
            <?php endif;?>
            <?php if (isset($msg_success)): ?>
               <div class="alert alert-success alert-dismissable send" style="color:#fff;">
                  <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                  <strong> Tus datos de acceso han sido enviados a tu correo electrónico registrado. Si no localizas el correo favor de verificar en tu bandeja de correo no deseado. </strong>
               </div>
               <div class="form-group">
                  <?php echo anchor('reg/login', 'Ingresar','class="btn btn-default"'); ?>
               </div>
            <?php else:?>
               <?php if(isset($msg_info)): ?>
                  <center>
                     <div class="alert alert-warning alert-dismissable" style="width: 400px; color: #000!important;">
                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                        <strong>Teclea tus datos.</strong><br>
                        Una vez echo esto, envía la petición y el sistema te hara llegar un email con tus datos de acceso.
                     </div>
                  </center>
               <?php endif; ?>
               <p class="login-box-msg" style="font-size: 20px; color:#000">Recupera tu cuenta</p>
               <div class="form-group has-feedback">
                  <div class="input-group">
                     <span class="input-group-addon">
                        <i class="fa fa-user"></i>
                     </span>
                     <input type="text" name="user_name" id="user_name" class="form-control" placeholder="Usuario" required>
                  </div>
               </div>
               <div class="row">
                  <div class="col-xs-12 text-center">
                     <button type="submit" style="color:#fff; background:#c63b31; font-size: 20px; border-radius: 20px" class="btn btn-default btn-flat">
                        <strong><i class="glyphicon glyphicon-log-in"></i>&nbsp;&nbsp;Recuperar Cuenta</strong>
                     </button>
                  </div>
               </div>
               <div class="row">
                  <div class="col-xs-12 text-center">
                     <?php echo anchor('reg/login', 'Ingresar nuevamente'); ?>
                  </div>
               </div>
            <?php endif; ?>
         </div>
      </div>
   <?php echo form_close();?>
<?php $this->load->view('footer_login'); ?>
