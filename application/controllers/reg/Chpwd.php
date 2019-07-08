<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Chpwd extends MY_Controller {
	function __construct() {
		parent::__construct();
		$this->load->library('form_validation');
		$this->load->model('reg/users_model');
	}
	public function index($user_id = ''){
		if($this->session->flashdata('msg_success')) {
	        $data['message'] = $this->session->flashdata('msg_success');
	    }
		$this->_validation_new_password();
		if ($this->form_validation->run() == FALSE){
			$data['id'] = $this->session->userdata('user_id'); 
			$data['user_info'] = $this->users_model->get_all_users("id", $data['id']);
			if ($data['user_info']->num_rows()>0){
				$data['password_decode'] = $this->users_model->password_decode($data['user_info']->row()->password);
	            $this->load->view('reg/chpwd', $data);
			} else{
				show_404();
			}
		} else {
			$recordInfo = array(
			    'password'   => $this->users_model->password_encode($this->input->post('password'))
            );
            $this->users_model->update($this->session->userdata('user_id'), $recordInfo);
            $this->session->set_flashdata('msg_success', get_message('success', $this->lang->line('record_saved')));
         	redirect('reg/chpwd/');	
		}	
	}
	function _validation_new_password(){
        $this->form_validation->set_rules('password','Nueva contraseña','trim|required|max_length[25]|htmlspecialchars');
        $this->form_validation->set_rules('password_confirm','Confirmar nueva contraseña','trim|required|max_length[25]|htmlspecialchars|matches[password]');
        $this->form_validation->set_error_delimiters('<span class="error_color">', '</span>');
    }
}

/* End of file Chpdw.php */
/* Location: ./application/controllers/reg/Chpdw.php */