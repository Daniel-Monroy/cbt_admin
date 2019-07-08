<li class="dropdown user user-menu">
   <a href="#" class="dropdown-toggle" data-toggle="dropdown">
      <?php if($this->session->userdata('photo_main') != "" && file_exists(base_url().'files/users/'.$this->session->userdata('photo_main'))): ?>
         <img src="<?php echo base_url().'files/users/'.$this->session->userdata('photo_main'); ?>" class="user-image">
      <?php else: ?>
         <img src="<?php echo base_url().'assets/img/template/anonymous.png'; ?>" class="user-image">
      <?php endif; ?>
      <span class="hidden-xs"><?php echo $this->session->userdata('dist_name');?></span>
   </a>
   <ul class="dropdown-menu">
      <li class="user-header">
         <?php if($this->session->userdata('photo_main') != "" && file_exists(base_url().'files/users/'.$this->session->userdata('photo_main'))): ?>
            <img src="<?php echo base_url().'files/users/'.$this->session->userdata('photo_main'); ?>" class="img-circle" alt="User Image">
         <?php else: ?>
            <img src="<?php echo base_url().'assets/img/template/anonymous.png'; ?>" class="img-circle" alt="User Image">
         <?php endif; ?>
         <p><?php echo $this->session->userdata('user_description');?> <br>
            <small class="text-uppercase">
            </small>
         </p>
      </li>
      <li class="user-footer">
         <div class="pull-left">
            <?php echo anchor('reg/chpwd/', '<i class="fa fa-unlock"></i><span> Cambiar Contraseña </span>', ['class' => 'btn btn-default btn-flat btn-sm']); ?>
         </div>
         <div class="pull-right">
            <?php echo anchor('reg/logout/', '<i class="fa fa-sign-out"></i><span> Salir</span>', ['class' => 'btn btn-default btn-flat btn-sm']); ?>
         </div>
      </li>
   </ul>
</li>
