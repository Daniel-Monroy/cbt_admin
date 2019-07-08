<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Site_sentry{

	public function __construct(){
     	$this->obj =& get_instance();
   	}

   	public function is_logged_in(){
		return $this->obj->session->has_userdata('logged_in');
   	}

   	public function login_routine($refered_from=''){
   		$this->obj->load->library('encryption');
   		$password = $this->obj->input->post('password');
   		$username = $this->obj->input->post('user_name');
   		$ruser = $this->obj->db->where('status', 1)
                               ->where('user_name', $username)
                               ->get('users')
                               ->row();
                                  		echo '<pre>'; print_r($ruser); echo '</pre>';

        if(is_object($ruser) && $password == $this->obj->encryption->decrypt($ruser->password)){
        	$this->obj->db->where('id', $ruser->id)
                       	  ->set('password_reset', '')
                       	  ->set('last_login', time())
                       	  ->update('users');
            $rprofile = $this->obj->db->select('profiles.description')
            						  ->where('profile_id', $ruser->profile_id)
            						  ->get('profiles')
            						  ->row();    
            $this->obj->session->set_userdata([
            	'user_id' => $ruser->id,
            	'profile_id' => $ruser->profile_id,
            	'profile_description' => $rprofile->description,
            	'dist_name' => $ruser->dist_name,
            	'email' => $ruser->email,
            	'phone' => $ruser->phone,
            	'photo_main' => $ruser->photo_main,
            	'logged_in' => TRUE
            ]);
            redirect('dshb/dshb');
        }else {
         	$this->obj->session->set_flashdata('refered_from',$refered_from);
         	redirect('reg/login/login_fail/');
      	}
   	}
}

/* End of file Site_sentry.php */
/* Location: ./application/libraries/Site_sentry.php */