<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Logout extends CI_Controller {

    function __construct(){
        parent::__construct();
    }
    // --------------------------------------------------------------------
    function index(){
        $this->load->view('reg/logout');   
    }
    // --------------------------------------------------------------------
    function logout_routine(){
        $this->session->sess_destroy();
        $this->load->view('reg/end_sess');
    }
}