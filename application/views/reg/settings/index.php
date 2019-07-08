<?php $this->load->view('header'); ?>

<div class="content-wrapper">
   <section class="content-header">
      <h1><i class="fa fa-cog"></i> Configuración</h1>
      <ol class="breadcrumb">
         <li><a href="<?php echo base_url()?>home"><i class="fa fa-dashboard"></i> Inicio </a> </li>
         <li class="active">Cambiar código</li>
      </ol>
   </section>

   <section class="content">
   		<div class="box">
         <?php echo form_open_multipart('reg/settings/', ['id'=>'editRecordForm', 'name'=>'editRecordForm', 'autocomplete'=>'off', 'onsubmit'=>'return requiredFields("");']); ?>
	         <div class="box-header with-border">
	            <div class="row">
	               <div class="col-sm-6 col-xs-12">
	                  <?php 
	                  	echo (isset($message)?($message):(''));
				   		echo (validation_errors())?(get_message('danger', validation_errors())):('');?>
	               </div>
	            </div>
	         </div>
	        <div class="box-body"> 
	        	<div class="well">
					<div class="row">
						<div class="col-lg-6 col-md-6 col-xs-12">
							<div class="form-group <?php echo (form_error('settings_email')?('has-error'):(''));?>">
								<label for="settings_email"> Email </label>
								<div class="input-group">
									<span class="input-group-addon">
										<i class="fa fa-unlock"></i>
									</span>
									<?php echo form_input($settings_email); ?>
								</div>
							</div>	
							<div class="form-group <?php echo (form_error('old_registration_code')?('has-error'):(''));?>">
								<label for="old_registration_code"> Código actual </label>
								<div class="input-group">
									<span class="input-group-addon">
										<i class="fa fa-unlock"></i>
									</span>
									<?php echo form_input($old_registration_code); ?>
								</div>
							</div>
							<div class="form-group <?php echo (form_error('registration_code')?('has-error'):(''));?>">
								<?php echo required_field(); ?>
								<label for="registration_code"> Nueva código </label>
								<div class="input-group">
									<span class="input-group-addon">
										<i class="fa fa-lock"></i>
									</span>
									<?php echo form_input($registration_code); ?>
								</div>
							</div>
							<div class="form-group <?php echo (form_error('registration_code_confirm')?('has-error'):(''));?>">
								<?php echo required_field(); ?>
								<label for="registration_code_confirm"> Confirmar nuevo código </label>
								<div class="input-group">
									<span class="input-group-addon">
										<i class="fa fa-check"></i>
									</span>
									<?php echo form_input($registration_code_confirm); ?>
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