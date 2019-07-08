<?php defined('BASEPATH') OR exit('No direct script access allowed');
/**
 * Dshb
 */
class Dshb extends MY_Controller {

	function __construct(){
		parent::__construct();
		$this->load->library('form_validation');
	}
	public function index(){
		$data['extraHeadContent']  = get_assets("dshb/index.css");
		$this->load->view('dshb/menu', $data);
	}
}

/* End of file Dshb.php */
/* Location: ./application/controllers/dshb/Dshb.php */