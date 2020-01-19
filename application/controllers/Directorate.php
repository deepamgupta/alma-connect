<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Directorate extends CI_Controller {
	public function __construct(){
		parent::__construct();
		$this->load->model('Directorate_Model');
	}

	public function index()
	{	
		$data['colleges']=$this->Directorate_Model->getCollegeList();
		$this->load->view('directorate/directorate_home',$data);
		// echo "This is Alumni Login Page";
	}

	public function destroy(){
		$this->session->sess_destroy();
		redirect(base_url().'directorate');
	}
	
	public function alumniDisplay($college_id)
	{
		$data['alumniList']=$this->Directorate_Model->getAlumniList($college_id);
		$this->load->view('directorate/college_alumni',$data);
		// echo "This is Alumni Login Page";
	}

	
}
