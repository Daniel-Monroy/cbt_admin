<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Settings extends MY_Controller {
	private $data;	
	function __construct(){
		parent::__construct();
		$this->load->library('form_validation');
		$this->load->model('reg/settings_model');
	}
	public function index(){
		if($this->session->flashdata('msg_success')) {
	       $this->data['message'] = $this->session->flashdata('msg_success');
	    }
		$this->_validation_change_rc();
		if ($this->form_validation->run() === FALSE){
			$data['id'] = "1"; 
			$this->data['row'] = $this->settings_model->get("settings_id", "1");
			if ($this->data['row']->num_rows()>0){
				$this->data['settings_email'] = [
					'type'  => 'text',
					'name'  => 'settings_email',
					'class' => 'form-control settings_email',
					'value' => set_value('settings_email', $this->data['row']->row()->settings_email),
					'placeholder' => 'Email'
				];
				$this->data['old_registration_code'] = [
					'type'  => 'text',
					'name'  => 'old_registration_code',
					'class' => 'form-control old_registration_code',
					'value' => set_value('old_registration_code	', $this->settings_model->registration_code_decode($this->data['row']->row()->registration_code)),
					'placeholder' => 'Código actual'
				];
				$this->data['registration_code'] = [
					'type'  => 'text',
					'name'  => 'registration_code',
					'class' => 'form-control registration_code',
					'value' => set_value('registration_code'),
					'placeholder' => 'Nuevo código'
				];
				$this->data['registration_code_confirm'] = [
					'type'  => 'text',
					'name'  => 'registration_code_confirm',
					'class' => 'form-control registration_code_confirm',
					'value' => set_value('registration_code_confirm'),
					'placeholder' => 'Confirmar código'
				];
	           	$this->load->view('reg/settings/index', $this->data);
			} else{
				show_404();
			}
		} else {
			$recordInfo = array(
			    'registration_code' => $this->settings_model->registration_code_enconde($this->input->post('registration_code'))
            );
            $this->settings_model->update("1", $recordInfo);
            $this->session->set_flashdata('msg_success', get_message('success', $this->lang->line('record_saved')));
         	redirect('reg/settings/');	
		}	
	}
   	function _validation_change_rc(){
   		$this->form_validation->set_rules('settings_email',		      'Email',                 'trim|required|valid_email');
        $this->form_validation->set_rules('registration_code',		  'Nuevo código',          'trim|required|max_length[25]|htmlspecialchars');
        $this->form_validation->set_rules('registration_code_confirm','Confirmar nuevo código','trim|required|max_length[25]|htmlspecialchars|matches[registration_code]');
        $this->form_validation->set_error_delimiters('', '<br/>');
    }

}

/* End of file Settings.php */
/* Location: ./application/controllers/reg/Settings.php */