<?php $this->load->view('header_login');?>

<body class="hold-transition login-page">
   <div class="login-box">
      <div class="login-logo">
         <img src="<?php echo base_url()?>assets/img/template/logo-cbt.png" class="img-responsive" style="padding: 10px 50px; display: inline-block;">
      </div>
      <div class="login-box-body" style="">
         <p class="login-box-msg" style="font-size: 20px; color:#000">Ingrese sus datos para iniciar</p>
         <?php echo form_open('reg/login/', array('class' => 'form-signin login', 'role' => 'form', 'autocomplete' => 'off'));?>
            <div class="form-group has-feedback">
               <div class="input-group">
                  <span class="input-group-addon">
                     <i class="fa fa-user"></i>
                  </span>
                  <input type="text" name="user_name" class="form-control input-lg" placeholder="Usuario">
               </div>
            </div>
            <div class="form-group has-feedback">
               <div class="input-group">
                  <span class="input-group-addon">
                     <i class="fa fa-lock"></i>
                  </span>
                  <input type="password" name="password" class="form-control input-lg" placeholder="Password">
               </div>
            </div>
            <div class="row">
               <div class="col-xs-12 text-center">
                  <button type="submit" style="color:#fff; background:#c63b31; font-size: 20px; border-radius: 20px" class="btn btn-default btn-flat">
                     <strong><i class="glyphicon glyphicon-log-in"></i> Iniciar</strong>
                  </button>
                  <p>
                     <small>
                        <?php echo anchor('reg/login/forgot_password/'.id_encode(1), '¿No puedes acceder a tu cuenta?','id="a_a" style="color:#000"');?>
                     </small>
                  </p>
               </div>
            </div>
            <?php if (isset($msg_err)):?>
               <center>
                  <div class="alert alert-danger alert-dismissable" style="width: 400px; color: #fff;">
                     <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                     <strong>Atención: Usuario y/o contraseña es incorrecta.</strong><br>
                     Asegúrate de usar la contraseña correcta.
                  </div>
               </center>
            <?php endif;?>
         <?php echo form_close();?>
      </div>
   </div>
<?php $this->load->view('footer_login');?>
