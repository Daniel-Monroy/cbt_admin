<?php $this->load->view('header');?>
<div class="content-wrapper">
   <section class="content-header">
      <h1><i class="fa fa-users"></i> Registros<small> Panel de Control</small></h1>
      <ol class="breadcrumb">
         <li><a href="<?php echo base_url()?>home"><i class="fa fa-dashboard"></i> Inicio</a></li>
         <li class="active">Registros</li>
      </ol>
   </section>
   <section class="content">
      <div class="box">
         <div class="box-header with-border">
            <?php echo (isset($message)?($message):('')); ?>
         </div>
         <div class="box-body">
            <table class="table table-hover table-condensed table-responsive tableRecords" width="100%">
               <thead>
                  <tr class="text-primary">
                     <th width="5%"></th>
                     <th width="30%">Alumno</th>
                     <th width="30%">Datos del registro</th>
                     <th width="30%">Invitados</th>
                     <th width="25%">
                     	<a href="<?php echo base_url_f();?>" target="_blank">
                     		<button class="btn btn-xs btn-success">
                     			<i class="fa fa-plus"></i>
                     			Agregar registro
                     		</button>
                     	</a>
                     </th>
                  </tr>
               </thead>
               <tbody>
               	<?php foreach ($row->result() as $records):?>
               		<tr>
               			<td>
               				<center>
								<figure>
               						<img src="<?php echo get_files_f('records_qr/'.$records->code.'.png')?>" class="img-responsive" width="40px">
               					</figure>
               				</center>	
               			</td>
               			<td>
               				Código: <strong> <?php echo $records->code;?> </strong> <br>
               				<strong><?php echo $records->student_name; ?></strong> <br>
                           Número de control:  <strong> <?php echo $records->student_account;?> </strong>
               				<br>
               				<?php echo $this->plans_model->get_all("plan_id", $records->plan_id)->row()->description;?> - 
               				<?php echo $this->groups_model->get_all("group_id", $records->group_id)->row()->name;?>
               			</td>
               			<td>
               				Fecha:  <strong> <?php echo $records->date_registred; ?> </strong> <br>
               				Código proporcionado: <strong> <?php echo $records->registration_code; ?> </strong>
               			</td>
               			<td>
               				<?php foreach (json_decode($records->invited_list, true) as $key => $invited_list): ?>
               					<?php echo ($key+1).' - '.$invited_list['student_invited'];?> <br>
               				<?php endforeach ?>
               			</td>
               			<td>
               				<div class="btn-group">
                                <a href="#" onclick="return show_confirm_dialog('records/records',<?php echo $records->record_id; ?>)" class="deleteConfirm catalog_delete btn btn-default btn-sm" id="catalog_delete" title="Eliminar"> <span class="fa fa-trash-o"></span>&nbsp;</a>
                          	</div>
               			</td>
               		</tr>
               	<?php endforeach ?>
               </tbody>
            </table>
         </div>
      </div>
      <div class="btn-group dropup">
         <div class="dropdown" style="display: inline-block; margin-left:5px">
            <a class="btn btn-default btn-sm dropdown-toggle" type="button" data-toggle="dropdown"><span > <i class="fa fa-download"></i> Todos los Registros </span></a>
            <ul class="dropdown-menu">
               <li><?php echo anchor('reg/users/pdf_allusers/S',' <span class="fa fa-desktop"></span>Pantalla'); ?></li>
               <li><?php echo anchor('reg/users/pdf_allusers/P',' <span class="fa fa-file-pdf-o"></span> PDF'); ?></li>
            </ul>
         </div>
      </div>
   </section>
</div>
<?php $this->load->view('delete_jq');?>
<?php $this->load->view('footer');?>
