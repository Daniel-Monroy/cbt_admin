<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Records_model extends CI_Model {

	private $table;
   	public function __construct(){
		parent::__construct();
		$this->table = 'records';
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
}
/* End of file Records_model.php */
/* Location: ./application/models/records/Records_model.php */