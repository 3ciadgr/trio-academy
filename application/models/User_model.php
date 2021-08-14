<?php
class User_model extends CI_Model
{
	public function register($enc_password)
	{
		$data = array(
			'name' => $this->input->post('name'),
			'email' => $this->input->post('email'),
			'username' => $this->input->post('username'),
			'password' => $enc_password,
			'user_status' => '0',
			'user_verification' => hash('md5', rand(-10000, 100000000))
		);

		$this->db->insert('users', $data);
		return $data;
	}
	
	public function validateUser($code)
    {
        $data = array(
            'user_status' => '1'
        );
        $this->db->where('user_verification', $code);
        $this->db->update('users', $data);
    }

	public function login($username, $password)
	{
		$this->db->where('username', $username);
		$this->db->where('password', $password);

		$result = $this->db->get('users');

		if ($result->num_rows() == 1) {
			$data = $result->result_array();
			return $data;
		} else {
			return false;
		}
	}
	
	

	public function logout()
	{
		$this->session->unset_userdata('logged_in');
		$this->session->unset_userdata('user_id');
		$this->session->unset_userdata('username');

		redirect('users/login');
	}

	public function check_username_exists($username)
	{
		$query = $this->db->get_where('users', array('username' => $username));

		if (empty($query->row_array())) {
			return true;
		} else {
			return false;
		}
	}

	public function check_email_exists($email)
	{
		$query = $this->db->get_where('users', array('email' => $email));

		if (empty($query->row_array())) {
			return true;
		} else {
			return false;
		}
	}
}
