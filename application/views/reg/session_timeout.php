<?php $this->load->view('header_login');?>

<body>
   <div class="container" style="max-width: 400px; background-color:rgba rgba(0, 0, 0, 0.03);" >
      <div class="login">
         <h2 class="form-signin-heading pemsa_font text-danger">Tu sesión ha expirado</h2>
         <div class="alert alert-danger alert-dismissable">
            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
               El tiempo máximo de espera o sin actividad en tu cuenta, ha sido rebasado. Favor de volver a iniciar tu sesión.
         </div>
         <p>
            <small>
               <?php echo anchor('reg/login', '<span class="glyphicon glyphicon-log-in"></span> Ingresar','class="btn btn-default"'); ?>
            </small>
         </p>
      </div>
   </div>

<?php $this->load->view('footer_login'); ?>
