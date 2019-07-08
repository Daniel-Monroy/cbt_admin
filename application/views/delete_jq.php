<div class="modal fade" id="delete_jq" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-body">
          El registro seleccionado <strong class="text-danger">será eliminado de la base de datos</strong> ¿Deseas proseguir?
      </div>
      <div class="modal-footer">
        <?php echo form_open($this->uri->segment(1).'/'.$this->uri->segment(2).'/del_conf', array('id' => 'delRecordForm', 'name' => 'delRecordForm'));?>
            <input type="hidden" name="record_id" id="record_id"/>
            <button type="button" class="btn btn-default btn-sm" data-dismiss="modal">No</button>
            <button type="submit" class="btn btn-danger btn-sm"><span class="glyphicon glyphicon-trash"></span> Eliminar</button>
        <?php echo form_close();?>
      </div>
    </div>
  </div>
</div>
