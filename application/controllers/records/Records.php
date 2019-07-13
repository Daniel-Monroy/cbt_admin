<?php defined('BASEPATH') OR exit('No direct script access allowed');
/**
 * Records
 */
class Records extends MY_Controller {
	private $data;	
	function __construct(){
		parent::__construct();
		$this->load->library('form_validation');
		$this->load->model('records/records_model');
		$this->load->model('institutes/institutes_model');
		$this->load->model('plans/plans_model');
		$this->load->model('groups/groups_model');
		$this->load->model('reg/settings_model');
		$this->load->model('reg/users_model');
		$this->data = [
			'extraFooterContent' => get_assets('records/records.js') 
		];
	}
	
	public function index(){
		$this->data['row'] = $this->records_model->get_all();
		$this->load->view('records/index', $this->data);
	}

	public function receipts(){
		$this->data['extraFooterPluginsContent'] = get_assets('plugins/instascan.min.js');
		$this->data['extraFooterContent']  = get_assets('records/receipts.js');
		$this->data['extraFooterContent'] .= get_assets('records/qr_code.js');
		$this->load->view('records/receipts', $this->data);
	}

	function registred_invited(){
		#VERIFICAR QUE NO HAYA SIDO REGISTRADO EL INVITADO
		$info_reg = $this->records_model->get_registred_invited($_POST['record_id'], $_POST['invited_id']);
		if($info_reg->num_rows() > 0){
			echo json_encode(['type' => 'error', 'text'=> 'Ya ha sido registrado por el usuario: '.$this->users_model->get_all_users('id', $info_reg->row()->user_id)->row()->dist_name.' a las: '.substr($info_reg->row()->updated_at, 11)]);
			return;
		}
		$max_id = $this->records_model->registred_invited($_POST);
		if ($max_id) {
			echo json_encode(['type' => 'success', 'text'=> 'Bienvenido']);
		}
	}

	public function get_code_for_account_student(){
		if($this->records_model->get_all('student_account', $_POST['student_account'])->num_rows() > 0){
			$invited_list = $this->records_model->get_all('student_account', $_POST['student_account'])->row();
			echo json_encode($invited_list);
			return;
		}
		echo json_encode(NULL);
		return;
	}

	public function get_student_invited(){
		$code = id_decode($this->input->post('code'));
		$invited_list = $this->records_model->get_for_code($code)->row();
		echo json_encode($invited_list);
	}

	public function del_conf() {
		$record_id   = $this->input->post('record_id');
		$record_info = $this->records_model->get_all("record_id", $record_id);
		$this->records_model->update($record_id, ['status'=>ERASED]);
		redirect('records/records');
   	}
}

/* End of file Records.php */