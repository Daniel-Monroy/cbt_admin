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
		$this->load->model('reg/reg_invited_model');

		$this->data = [
			'extraFooterContent' => get_assets('records/records.js') 
		];
	}
	
	public function index(){
		$this->data['row'] = $this->records_model->get_all();
		$this->load->view('records/index', $this->data);
	}

	public function del_conf() {
		$record_id   = $this->input->post('record_id');
		$record_info = $this->records_model->get_all("record_id", $record_id);
		$this->records_model->update($record_id, ['status'=>ERASED]);
		redirect('records/records');
   	}

   	public function  pdf_cbt($oformat = P ){
   		$this->load->helper('export');

        $data['oformat'] = $oformat;
   		$data['alumnos'] = $this->records_model->get_all(); 

   		$data['asistencia'] = $this->reg_invited_model->get_invited();
/*
   		$this->load->view('records/formats/format', $data);*/

   		if($oformat =='P'){
			$html = $this->load->view('records/formats/format.php', $data, TRUE);
           	#VISTA, NOMBRE, DESCARGA, GUARDADO.
            $file = pdf_create($html, lang_to_file_readable('graduacion'),  TRUE, TRUE);

		}elseif($oformat =='S'){
            $this->load->view('records/formats/format.php', $data);
		}

   	}
}

/* End of file Records.php */