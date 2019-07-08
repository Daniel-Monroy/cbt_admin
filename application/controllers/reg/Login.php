<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Login extends CI_Controller {
   function __construct() {
      parent::__construct();
      $this->load->library('form_validation');
      $this->load->helper('string');
      $this->load->library('encryption');
      $this->load->library('email');
   }

   //--------------------------------------------------------------------
   function index() {
      $username = $this->input->post('user_name');
      if(isset($username) && $username != '') {
         $this->site_sentry->login_routine($this->input->post('refered_from'));
      } else {
         $this->load->view('reg/login');
      }
   }
   //--------------------------------------------------------------------
   function sto() {
      $data['extraHeadContent']  = get_assets('reg/m260_login.css');
      $this->load->view('reg/session_timeout', $data);
   }
   //--------------------------------------------------------------------
   function login_fail() {
      $data['msg_err'] = TRUE;
      $this->load->view('reg/login',$data);
   }
   //--------------------------------------------------------------------
   function forgot_password($type) {
      $type = id_decode($type);
      $this->_user_name_validation();
      if($this->form_validation->run() == FALSE) {
         $data['type'] = $type;
         if ($type == '1') {
            $data['placeholder'] = 'Nombre de Usuario';
            $data['portal'] = 'Portal Administrativo';
         }
         $data['msg_info'] = TRUE;
         $this->load->view('reg/forgot_pwd',$data);
      } else {
         $this->_send_frgtn_pwd($this->input->post('user_name'),id_encode($type));
      }
   }

   //--------------------------------------------------------------------
   function _send_frgtn_pwd($user_name, $type){
      $type = id_decode($type);
      $data['type'] = $type;
      if($type == '1') {
         $this->load->model('reg/users_model');
         $uInfo = $this->users_model->get_user_info_by_user_name($user_name);
      }
      if($uInfo->num_rows()>0) {
        	$data['decoded_string'] = $this->encryption->decrypt($uInfo->row()->password);
         $this->config->load('config_email');
         $this->load->library('email');
         $config['wordwrap'] = TRUE;
         $config['mailtype'] = 'html';
         $config['charset'] = 'utf-8';
         $data['row'] = $uInfo->row();
         if ($type == '1') {
            $data['full_name'] = $data['row']->dist_name;
         }
         $data['user_name'] = $user_name;
         $email_content = $this->load->view('cmn/eml/password_restoration',$data,TRUE);
         $this->email->initialize($config);
         $this->email->from($this->config->item('sender_email'), $this->config->item('sender_name'));
         $this->email->to($data['row']->email);
         $this->email->subject('Restauración de contraseña CBT-GRADUACIÓN 2019');
         $this->email->message($email_content);
         $this->email->send();
         $data['msg_success'] = TRUE;
         $this->load->view('reg/forgot_pwd',$data);
      } else {
         $data['msg_err'] = TRUE;
         $this->load->view('reg/forgot_pwd', $data);
      }
   }
   // --------------------------------------------------------------------
   function _user_name_validation(){
      $this->form_validation->set_rules('user_name','Clave de acceso','trim|max_length[10]');
      $this->form_validation->set_error_delimiters('', '<br/>');
   }
}
