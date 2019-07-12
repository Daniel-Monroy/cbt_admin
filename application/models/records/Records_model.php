<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Records_model extends CI_Model {

	private $table;
    private $table_registred;
   	public function __construct(){
		parent::__construct();
		$this->table           = 'records';
        $this->table_registred = 'reg_invited';
   	}

	function get_all($item = NULL, $value = NULL){	
		if ($item) {
			$this->db->where($item, $value);
		}
        $this->db->where('status', ALIVE);
		$this->db->order_by('date_registred');
        return $this->db->get($this->table);
    }

    function add($data){
        $this->db->insert($this->table, $data);
        return $this->db->insert_id();
    }

    public function update($record_id, $data = []){
        $data['user_id'] = $this->session->user_id;
        $data['updated_at'] = date('Y-m-d G:i:s');
        return $this->db->update($this->table, $data, ['record_id' => $record_id]);
    }


    function get_for_code($code){
        $this->db->where('code', $code);
        $this->db->where('status', ALIVE);
        return $this->db->get($this->table);
    }

    function registred_invited($data = []){
        $this->db->insert($this->table_registred, $data);
        return TRUE;
    }

    function get_registred_invited($record_id, $invited_id){
        $this->db->where('record_id',  $record_id);
        $this->db->where('invited_id', $invited_id);
        return $this->db->get($this->table_registred);

    }

}
/* End of file Records_model.php */
/* Location: ./application/models/records/Records_model.php */