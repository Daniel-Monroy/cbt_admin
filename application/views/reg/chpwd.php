<?php $this->load->view('header'); ?>

<div class="content-wrapper">
   <section class="content-header">
      <h1><i class="fa fa-unlock"></i> Cambiar contraseña <small> <?php echo $user_info->row()->dist_name ?> </small> </h1>
      <ol class="breadcrumb">
         <li><a href="<?php echo base_url()?>home"><i class="fa fa-dashboard"></i> Inicio</a></li>
         <li class="active">Cambiar contraseña</li>
      </ol>
   </section>

   <section class="content">
   		<div class="box">
         <?php echo form_open_multipart('reg/chpwd/', ['id'=>'editRecordForm', 'name'=>'editRecordForm', 'autocomplete'=>'off', 'onsubmit'=>'return requiredFields("");']); ?>
	         <div class="box-header with-border">
	            <div class="row">
	               <div class="col-sm-6 col-xs-12">
	                  <?php echo (isset($message)?($message):(''));?>
	                  <?php if(validation_errors()): ?>
	                     <div class="alert alert-danger alert-dismissable" style="margin-bottom: -10px"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button><?php echo validation_errors(); ?></div>
	                  <?php endif; ?>
	               </div>
	            </div>
	         </div>

	        <div class="box-body"> 
	        	<div class="well">
					<div class="row">
						<div class="col-lg-6 col-md-6 col-xs-12">
							
							<div class="form-group <?php echo (form_error('password_old')?('has-error'):(''));?>">
								<label for=""> Contraseña actual </label>
								<div class="input-group">
									<span class="input-group-addon">
										<i class="fa fa-unlock"></i>
									</span>
									<input name="password_old" type="password" class="form-control" value="<?php echo $password_decode;?>" placeholder="Contraseña actual" disabled="disabled">
								</div>
							</div>

							<div class="form-group <?php echo (form_error('password')?('has-error'):(''));?>">
								<?php echo required_field(); ?>
								<label for=""> Nueva contraseña </label>
								<div class="input-group">
									<span class="input-group-addon">
										<i class="fa fa-lock"></i>
									</span>
									<input name="password" type="password" class="form-control has-error" value="<?php echo set_value('password');?>" placeholder="Nueva contraseña" autofocus>
								</div>
							</div>

							<div class="form-group <?php echo (form_error('password_confirm')?('has-error'):(''));?>">
								<?php echo required_field(); ?>
								<label for=""> Confirmar nueva contraseña </label>
								<div class="input-group">
									<span class="input-group-addon">
										<i class="fa fa-check"></i>
									</span>
					        		<input name="password_confirm" type="password" class="form-control" value="<?php echo set_value('password_confirm');?>" placeholder="Confirmar nueva contraseña">
								</div>
							</div>
				
						</div>
					</div>
				</div>
			</div>
			<div class="box-footer" style="margin-top: -20px">
				<?php echo anchor('', '<span class="glyphicon glyphicon-arrow-left"></span> Regresar', 'class="btn btn-default"'); ?>
	            <button class="btn btn-success" type="submit"><span class="glyphicon glyphicon-save"></span> Guardar</button>
			</div>
		<?php echo form_close(); ?>
   </section>	
</div>   
<?php $this->load->view('footer'); ?>