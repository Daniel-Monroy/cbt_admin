<?php $this->load->view('header');?>
<div class="content-wrapper">
   <section class="content-header">
      <h1><i class="fa fa fa-sticky-note-o fa-fw"></i> Recepciones <small> Panel de Control</small></h1>
      <ol class="breadcrumb">
	    	<li><?php echo anchor('','<i class="fa fa-dashboard"></i> Inicio');?></li>
	     	<li class="active"> <i class="fa fa-sticky-note-o"></i> Recepciones </li>
	    </ol>
      </ol>
   </section>
  
   <section class="content">

   		<div class="row">
   				
   			<div class="col-md-6 col-xs-12">
				<div class="box">
		   			<div class="box-header with-border box-danger">
		   				<h1 class="text-center"> Bienvenidos </h1>
						<center>
							<video id="preview" width="45%" heigth="100px"></video>
						</center>
						<span class="text-center">
							<h5 class="text-success"> Registra el código </h5>	
						</span>
						
						<div class="clearfix">
							<?php echo anchor('records/records/receipts', '<i class="glyphicon glyphicon-saved"></i> Limpiar registro', 'class="btn btn-warning btn-sm pull-right"'); ?>
						</div>
		   			</div>
		   		</div>	
			</div>

			<div class="col-md-6 col-xs-12">
				<div class="box">
					<div class="box-header">
						<h1 class="text-center"> Graduación CBT-2019 </h1>
					</div>

					<div class="box-body no-padding">
		              	<ul class="users-list clearfix">
			                <li style="width: 33.3%!important">
			                  <img src="<?php echo get_anonymous_img()?>" style="max-width: 100%!important" alt="User Image">
			                  <a class="users-list-name" href="#"> Invitado
								<h4> <i class="fa fa-refresh fa-spin  fa-fw"></i> Esperando </h4>			
			                  </a>
			                </li>
			                <li style="width: 33.3%!important">
			                  <img src="<?php echo get_anonymous_img()?>" style="max-width: 100%!important" alt="User Image">
			                  <a class="users-list-name" href="#"> Invitado
								<h4> <i class="fa fa-refresh fa-spin  fa-fw"></i> Esperando </h4>			
			                  </a>
			                </li>
			                <li style="width: 33.3%!important">
			                  <img src="<?php echo get_anonymous_img()?>" style="max-width: 100%!important" alt="User Image">
			                  <a class="users-list-name" href="#"> Invitado
								<h4> <i class="fa fa-refresh fa-spin  fa-fw"></i> Esperando </h4>			
			                  </a>
			                </li>
		              	</ul>
          			</div>	
				</div>
			</div>	
   		</div>
   </section>
</div> 

<?php $this->load->view('footer');?>  