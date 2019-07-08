<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Settings_model extends CI_Model {
	private $table;
	public function __construct(){
	parent::__construct();
	$this->table = 'settings';
	}
	function get($item = NULL, $value = NULL){
		if($item){
			$this->db->where($item, $value);
		}
		$this->db->where("status", ALIVE);
		return $this->db->get($this->table);
	}
   public function update($record_id, $data = []){
      $data['user_id'] = $this->session->user_id;
      $data['updated_at'] = date('Y-m-d G:i:s');
      return $this->db->update($this->table, $data, ['settings_id' => $record_id]);
   }
   function registration_code_enconde($registration_code){
      $this->load->library('encryption');
      $decoded_string = $this->encryption->encrypt($registration_code);
      return $decoded_string;
   }
   function registration_code_decode($registration_code){
      $this->load->library('encryption');
      $decoded_string = $this->encryption->decrypt($registration_code);
      return $decoded_string;
   }

}

/* End of file Settings_model.php */
/* Location: ./application/models/reg/Settings_model.php */