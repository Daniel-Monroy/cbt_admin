<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Reg_invited_model extends CI_Model {
	private $table;
	public function __construct(){
	parent::__construct();
	$this->table = 'reg_invited';
	}
	function get_invited($item = NULL, $value = NULL){
		if($item){
			$this->db->where($item, $value);
		}

		return $this->db->get($this->table);
	}
}