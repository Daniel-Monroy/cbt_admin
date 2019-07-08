<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Users_model extends CI_Model {

	protected $table;

	public function __construct(){
		parent::__construct();
		$this->table = 'users';
   	}

   	public function get_all_users($item = null, $value = null){
   		$this->db->select("*");
   		if ($item){
   			$this->db->where($item, $value);
   		}
   		$this->db->where('status', ALIVE);
   		return $this->db->get($this->table);
   	}

   	public function update($record_id, $data = []){
        $data['user_id'] = $this->session->user_id;
        $data['updated_at'] = date('Y-m-d G:i:s');
        return $this->db->update($this->table, $data, ['id' => $record_id]);
    }

   	public function password_decode($coded_string){
		$this->load->library('encryption');
		$decoded_string = $this->encryption->decrypt($coded_string);
		return $decoded_string;
   	}

   	public function password_encode($noncoded_string){
		$this->load->library('encryption');
		$coded_string =  $this->encryption->encrypt($noncoded_string);
		return $coded_string;
   	}

    public function get_user_info_by_user_name($user_name, $fields = '*'){
   		$this->db->select($fields);
   		$this->db->where('user_name', $user_name);
    	return $this->db->get($this->table);
    }


}

/* End of file Users_model.php */
/* Location: ./application/models/reg/Users2_model.php */