<?php
class Users extends CI_Controller
{

	public function register()
    {
        $data['title'] = 'Sign Up';

        $this->form_validation->set_rules('name', 'Name', 'required');
        $this->form_validation->set_rules('username', 'Username', 'required|callback_check_username_exists');
        $this->form_validation->set_rules('email', 'Email', 'required|callback_check_email_exists');
        $this->form_validation->set_rules('password', 'Password', 'required');
        $this->form_validation->set_rules('password2', 'Confirm Password', 'matches[password]');

        if ($this->form_validation->run() === FALSE) {
            $this->load->view('templates/header');
            $this->load->view('users/register', $data);
            $this->load->view('templates/footer');
        } else {
            $enc_password = md5($this->input->post('password'));
            $newUser = $this->user_model->register($enc_password);
            $config['protocol']    = 'smtp';
            $config['smtp_host']    = 'ssl://smtp.gmail.com';
            $config['smtp_port']    = '465';
            $config['smtp_timeout'] = '7';
            $config['smtp_user']    = 'trioacademy.ci.proj@gmail.com';
            $config['smtp_pass']    = 'triopass2'; 
            $config['charset']    = 'utf-8';
            $config['newline']    = "\r\n";
            $config['mailtype'] = 'html';
            $config['validation'] = TRUE;
            $this->email->initialize($config);
            $this->email->from('trioacademy.ci.proj@gmail.com', 'trioacademy');
            $this->email->to($newUser['email']);
            $this->email->subject('Email verification');
            $this->email->message('Your validation code is <a href="http://localhost/trioacademy/Users/verify/' . $newUser['user_verification'] . '">' . $newUser['user_verification'] . '</a>'); 
            $this->email->send();

            $this->session->set_flashdata('user_registered', 'You are now registered and can log in');

            redirect('users/login');
        }
    }


	public function verify($code)
	{
		$this->load->model('User_model');
		$this->User_model->validateUser($code);
		redirect('users/login');
	}


	public function login()
	{
		$data['title'] = 'Sign In';

		$this->form_validation->set_rules('username', 'Username', 'required');
		$this->form_validation->set_rules('password', 'Password', 'required');

		if ($this->form_validation->run() === FALSE) {
			$this->load->view('templates/header');
			$this->load->view('users/login', $data);
			$this->load->view('templates/footer');
		} else {
			$username = $this->input->post('username');

			$password = md5($this->input->post('password'));

			$user_id = $this->user_model->login($username, $password);

			if ($user_id) {
				$result = $user_id['0'];
				if ($result['user_status'] != '1') {
					echo "your account is not verified";
				} else {
					$userdata = array(
						'id' => $result['id'],
						'name' => $result['name'],
						'email' => $result['email'],
						'uname' => $result['username'],
						'pass' => $result['password'],
						'regdate' => $result['register_date'],
						'logged_in' => true
					);
					$this->session->set_userdata($userdata);
					redirect('posts');
				}
			} else {
				$this->session->set_flashdata('login_failed', 'Login is invalid.');

				redirect('users/login');
			}
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
		$this->form_validation->set_message('check_username_exists', 'That username is taken. Please choose a different one');
		if ($this->user_model->check_username_exists($username)) {
			return true;
		} else {
			return false;
		}
	}


	public function check_email_exists($email)
	{
		$this->form_validation->set_message('check_email_exists', 'That email is taken. Please choose a different one');
		if ($this->user_model->check_email_exists($email)) {
			return true;
		} else {
			return false;
		}
	}
}
